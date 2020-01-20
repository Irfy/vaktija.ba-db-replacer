#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use Time::Local;
use Data::Dumper;
use File::Slurp;
use JSON::XS;
use feature qw(switch);

my @prayer_names = qw(fajr sunrise dhuhr asr maghrib isha);
my $partial_times_regex = qr{( +\d\d){5}$};

my $debug = ($ARGV[0] // '') eq '-d' || ($ARGV[1] // '') eq '-d';
shift @ARGV if ($ARGV[0] // '') eq '-d';

my $year = $ARGV[0] // `echo -n \$(date +%Y)`;
my $conf = decode_json(read_file('conf.json'))->{$year};

open (my $fh, "vaktija_$year.txt");
open (my $csv, '>', $ARGV[1] // "vaktija_$year.csv");

my $month = 0;
my %prev_times;
my $nrecords = 0;
my $prototype;
my $dst = 0;
my $matched_days = 0;
while (my $line = <$fh>) {
    chomp $line;
    next unless $line =~ /^[\s.]{0,8}(\d...)/; # some lines may be split in two
    print("matched line [$line]\n") if $debug;
    my $day = $1;
    $day =~ s/[^\d]//g; # day digits can have a space/dot interleaved
    print("matched day [$day]\n") if $debug;
    $matched_days++;

    unless ($line =~ /$partial_times_regex/) {
        # line may be split in two, read and parse next line
        $line = <$fh>;
        chomp $line;
        $line =~ /$partial_times_regex/ or die "could not match remainder of line, even after trying the next line [$line]";
    }

    if ($day == 1) {
        $month++;
        $prototype = deduce_prototype($line, $month);
    }
    die "No prototype for first-ever line" unless $prototype;

    $line = substr($line, -$prototype->{length}); # shorten line according to prototype => avoid utf8 chars
    print "processing shortened line [$line]\n" if $debug;

    printf("%02d.%02d.", $day, $month);
    printf $csv "%d,%02d-%02d", ++$nrecords, $month, $day;

    my %times = (day => $day, month => $month);
    for my $prayer (@prayer_names) {
        for my $time (qw(hours minutes)) {
            my ($idx, $len) = @{$prototype->{$prayer}{$time}};
            # reduce length by 1 if we end up in the middle of a number
            my $substr = substr($line, $idx, $len);
            my $nextidx = $idx+$len;
            my $nextchar = $nextidx < length($line) ? substr($line, $nextidx, 1) : ' ';
            if (substr($substr, -1) =~ /\d/ && $nextchar =~ /\d/) {
                print "\nreducing substr [$substr] length by 1 due to in-the-middle ending" if $debug;
                $substr =~ s/.$//;
                die "unexpected non-whitespace at end of reduced substr [$substr]" unless $substr =~ / $/;
            }
            print("\n$prayer $time substring is [$substr]\n") if $debug;
            #die "Invalid $prayer $time match [$substr] on date [$day.$month.]" if $substr =~ /[^\s]\s+[^\s]/;
            ($times{$prayer}{$time}) = $substr =~ /(\d+)/;
        }
        $times{$prayer}{hours} //= $prev_times{$prayer}{hours};
        for (qw(hours minutes)) {
            my $ref = \$times{$prayer}{$_};
            $$ref = defined $$ref ? sprintf "%02d", $$ref : '?';
        }
        print(" $times{$prayer}{hours}:$times{$prayer}{minutes}");

        if (my $override = $conf->{single}{sprintf("%02d-%02d-%s", $day, $month, $prayer)}) {
            $times{$prayer} = $override;
            printf("[override: %02d:%02d]", $times{$prayer}{hours}, $times{$prayer}{minutes});
        } elsif ($override = $conf->{ranges}{sprintf("%02d-%s", $month, $prayer)}) {
            if ($override->{start} <= $day && $day <= $override->{end}) {
                $times{$prayer} = $override; # ignore extra start/end
                printf("[override: %02d:%02d]", $times{$prayer}{hours}, $times{$prayer}{minutes});
            }
        }
        sanity_check($year, $prayer, \%prev_times, \%times);
        #printf $csv ",%02d:%02d", $times{$prayer}{hours}-$dst, $times{$prayer}{minutes}; # generate times negating the DST offset
        printf $csv ",%02d:%02d", $times{$prayer}{hours}, $times{$prayer}{minutes};
        # the app hardcodes DST and expects the times to be in the non-DST timezone.
    }
    print "\n";
    print $csv "\n";
    %prev_times = %times;
}
if ($matched_days < 365) {
    die "matched only [$matched_days] days\n";
}

close($csv);
close($fh);

sub deduce_prototype {
    my ($line, $month) = @_;
    # check if there is a prototype override in config.
    # make sure to begin with two spaces to match the regex below
    # for consistency with other overrides, use 01 for january, etc.
    my $override = $conf->{prototypes}{sprintf("%02d", $month)};
    $line = $override if $override;

    $line =~ /  \d +\d\d(?: +\d\d? +\d\d){5}$/ or die "No match for full prayer times";
    my %prototype = ( length => $+[0] - $-[0] );
    $line = substr($line, -$prototype{length});
    for (@prayer_names) {
        $line =~ / +(\d\d?) +(\d\d)/g or die "unexpected mismatch at " . pos($line);
        $prototype{$_} = {
            hours   => [ $-[1]-1, $+[1]-$-[1]+2 ], # -1: start from 1 char before begin of match
            minutes => [ $-[2]-1, $+[2]-$-[2]+2 ], # +2: search in 1 more char after end of match
        };
    }
    if (pos($line) != length($line)) {
        die "unexpected trailing mismatch [" . substr($line, pos($line)) . "]";
    }
    print "prototype: " . Dumper(\%prototype) if $debug;
    return \%prototype;
}

sub get_diff_min0 { # needs timelocal or timegm as first arg
    my ($function, $year, $prayer, $prev, $curr) = @_;
    my $prev_sec = $function->(0, $prev->{$prayer}{minutes}, $prev->{$prayer}{hours}, $prev->{day}, $prev->{month}-1, $year-1900);
    my $curr_sec = $function->(0, $curr->{$prayer}{minutes}, $curr->{$prayer}{hours}, $curr->{day}, $curr->{month}-1, $year-1900);
    $prev_sec += 24*60*60; # cancel 1 day difference
    return ($curr_sec - $prev_sec)/60; # return difference in minutes
}

sub get_diff_min {
    my $difflocal = get_diff_min0 (\&timelocal, @_);
    my $diffgm = get_diff_min0 (\&timegm, @_);
    return $difflocal, $diffgm;
}

sub diff_sanity {
    my ($year, $prayer, $prev, $curr) = @_;
    my ($diff_min, $diff_min_gm) = &get_diff_min;
    if (abs($diff_min) > 55) {
        my $hdiff = ($diff_min<=>0) * int((abs($diff_min) + 30) / 60); # rounding
        $curr->{$prayer}{hours} -= $hdiff;
        ($diff_min, $diff_min_gm) = &get_diff_min;
        printf("[autocorrected: %02d:%02d]", $curr->{$prayer}{hours}, $curr->{$prayer}{minutes});
    }
    if (abs($diff_min) > 4) {
        die "\nabnormal minutes diff to yesterday's $prayer $diff_min";
    }
    given ($diff_min_gm - $diff_min) {
        when ($_ == 0) {}
        when ($_ == 60) { print "[+DST]" unless $dst; $dst = 1; }
        when ($_ == -60) { print "[-DST]" if $dst; $dst = 0; }
        default { die "unexpected difference between local [$diff_min] and GMT diff [$diff_min_gm]"; }
    }
    return $diff_min;
}

my %gradients;
sub gradient_sanity {
    my ($prayer, $diff_min) = @_;
    my $sign = $diff_min<=>0;
    return if $sign == 0;
    if (exists $gradients{$prayer}{sign} && $sign != $gradients{$prayer}{sign}) {
        $gradients{$prayer}{changes}++;
        print "[$prayer gradient change #$gradients{$prayer}{changes}!]" if $gradients{$prayer}{changes} > 2;
    }
    $gradients{$prayer}{sign} = $sign;
    die if ($gradients{$prayer}{changes} // 0) > 5;
}

sub sanity_check {
    my ($year, $prayer, $prev, $curr) = @_;
    die "\nhours:minutes could not be determined" unless defined $curr->{$prayer}{hours} && defined $curr->{$prayer}{minutes};
    return unless $prev->{$prayer};
    my $diff_min = &diff_sanity;
    gradient_sanity($prayer, $diff_min);
}
