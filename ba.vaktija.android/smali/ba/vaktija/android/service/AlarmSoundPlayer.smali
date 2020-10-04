.class public Lba/vaktija/android/service/AlarmSoundPlayer;
.super Ljava/lang/Object;
.source "AlarmSoundPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmSoundPlayer"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private increasing:Z

.field private initialStreamVolume:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private volume:I

.field private volumeTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volume:I

    .line 26
    iput-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial stream volume: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->initialStreamVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmSoundPlayer"

    invoke-static {v0, p1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/service/AlarmSoundPlayer;)I
    .locals 0

    .line 14
    iget p0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volume:I

    return p0
.end method

.method static synthetic access$008(Lba/vaktija/android/service/AlarmSoundPlayer;)I
    .locals 2

    .line 14
    iget v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volume:I

    return v0
.end method

.method static synthetic access$100(Lba/vaktija/android/service/AlarmSoundPlayer;)Landroid/media/AudioManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private increaseVolume()V
    .locals 10

    const-string v0, "AlarmSoundPlayer"

    const-string v1, "increaseVolume"

    .line 53
    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->initialStreamVolume:I

    .line 56
    iget-object v1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialStreamVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->initialStreamVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxStreamVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 62
    new-instance v0, Lba/vaktija/android/service/AlarmSoundPlayer$1;

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x2

    int-to-long v6, v1

    const-wide/16 v8, 0x7d0

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lba/vaktija/android/service/AlarmSoundPlayer$1;-><init>(Lba/vaktija/android/service/AlarmSoundPlayer;JJ)V

    iput-object v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volumeTimer:Landroid/os/CountDownTimer;

    .line 77
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    const-string v0, "AlarmSoundPlayer"

    const-string v1, "cancel"

    .line 81
    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 84
    iget v3, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->initialStreamVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored STREAM_ALARM volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->initialStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 92
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->volumeTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "AlarmSoundPlayer"

    const-string v1, "onPrepared"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 47
    iget-boolean p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->increasing:Z

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0}, Lba/vaktija/android/service/AlarmSoundPlayer;->increaseVolume()V

    :cond_0
    return-void
.end method

.method public play(Landroid/net/Uri;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iput-boolean p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->increasing:Z

    .line 34
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36
    iget-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 37
    iget-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 38
    iget-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 39
    iget-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method
