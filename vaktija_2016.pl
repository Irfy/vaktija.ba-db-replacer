#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use Time::Local;
use Data::Dumper;

open (my $fh, $ARGV[0] // 'vaktija_2016.txt');
open (my $csv, '>', $ARGV[1] // 'vaktija_2016.csv');

my $month = 0;
my %prev_times;
my %overrides = ( '25-08-fajr' => { hours => 4, minutes => 19} );
my $nrecords = 0;
while (my $line = <$fh>) {
    next unless $line =~ /^\s{1,5}\d{1,2}.*\d{2}$/;
    $nrecords++;
#0    5    -100 -95  -90  -85  -80  -75  -70  -65  -60  -55  -50  -45  -40  -35  -30  -25  -20  -15  -10  -5  -1
#   1.       5          18   6                   55   12       45   15          53   18        33   20        04
#   1.       4          53   6                   30   12       08   15          08   17        44   19        15
    my $day = substr($line, 0, 6);
    ($day) = ($day =~ /(\d+)/) or die "No day could be matched";
    $month++ if $day == 1;
    printf("%02d.%02d.", $day, $month);
    printf $csv "%d,%02d-%02d", $nrecords, $month, $day;

    my %times = (day => $day, month => $month);
    for (['fajr', -99, -88], ['sunrise', -83, -63], ['dhuhr', -58, -49], ['asr', -44, -32], ['maghrib', -27, -17], ['isha', -12, -2]) {
        my ($id, $hcenter, $mcenter) = @$_;
        my ($h, $m);
        for ([\$h, $hcenter], [\$m, $mcenter]) {
            my ($var, $center) = @$_;
            my $substr = substr($line, $center-2, 5);
            die "Invalid match [$substr] on date [$day.$month.]" if $substr =~ /[^\s]\s+[^\s]/;
            ($$var) = $substr =~ /(\d+)/;
        }
        $times{$id}{hours} = $h // $prev_times{$id}{hours};
        $times{$id}{minutes} = $m;
        printf(" %02d:%02d", $times{$id}{hours}, $times{$id}{minutes});
        if (my $override = $overrides{sprintf("%02d-%02d-%s", $day, $month, $id)}) {
            $times{$id} = $override;
            printf("[override: %02d:%02d]", $times{$id}{hours}, $times{$id}{minutes});
        }
        sanity_check(2016, $id, \%prev_times, \%times) if $prev_times{$id};
        printf $csv ",%02d:%02d", $times{$id}{hours}, $times{$id}{minutes};
    }
    print "\n";
    print $csv "\n";
    %prev_times = %times;
}

close($csv);
close($fh);

sub get_diff_min {
    my ($year, $id, $prev, $curr) = @_;
    my $prev_sec = timelocal(0, $prev->{$id}{minutes}, $prev->{$id}{hours}, $prev->{day}, $prev->{month}-1, $year-1900);
    my $curr_sec = timelocal(0, $curr->{$id}{minutes}, $curr->{$id}{hours}, $curr->{day}, $curr->{month}-1, $year-1900);
    $prev_sec += 24*60*60;
    return ($curr_sec - $prev_sec)/60;
}

sub diff_sanity {
    my ($year, $id, $prev, $curr) = @_;
    my $diff_min = &get_diff_min;
    if (abs($diff_min) > 55) {
        my $hdiff = ($diff_min<=>0) * int((abs($diff_min) + 30) / 60); # rounding
        $curr->{$id}{hours} -= $hdiff;
        $diff_min = &get_diff_min;
        printf("[corrected: %02d:%02d]", $curr->{$id}{hours}, $curr->{$id}{minutes});
    }
    if (abs($diff_min) > 4) {
        die "\nabnormal minutes diff to yesterday's $id: $diff_min";
    }
    return $diff_min;
}

my %gradients;
sub gradient_sanity {
    my ($id, $diff_min) = @_;
    my $sign = $diff_min<=>0;
    return if $sign == 0;
    if (exists $gradients{$id}{sign} && $sign != $gradients{$id}{sign}) {
        $gradients{$id}{changes}++;
        print "[$id gradient change #$gradients{$id}{changes}!]" if $gradients{$id}{changes} > 2;
    }
    $gradients{$id}{sign} = $sign;
    die if $gradients{$id}{changes} > 5;
}

sub sanity_check {
    my ($year, $id, $prev, $curr) = @_;
    my $diff_min = &diff_sanity;
    gradient_sanity($id, $diff_min);
}
