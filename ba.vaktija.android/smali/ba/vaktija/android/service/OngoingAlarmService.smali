.class public Lba/vaktija/android/service/OngoingAlarmService;
.super Landroid/app/Service;
.source "OngoingAlarmService.java"


# static fields
.field public static final ACTION_START_ALARM:Ljava/lang/String; = "ACTION_START_ALARM"

.field public static final ACTION_STOP_ALARM:Ljava/lang/String; = "ACTION_STOP_ALARM"

.field private static final ALARM_TIMEOUT:I = 0x1d4c0

.field private static final EXTRA_PRAYER_ID:Ljava/lang/String; = "EXTRA_PRAYER_ID"

.field private static final TAG:Ljava/lang/String; = "OngoingAlarmService"


# instance fields
.field private alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private notificationsManager:Lba/vaktija/android/service/NotifManager;

.field private startId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/service/OngoingAlarmService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lba/vaktija/android/service/OngoingAlarmService;->quit()V

    return-void
.end method

.method public static getStartAlarmIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/service/OngoingAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_ALARM"

    .line 37
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EXTRA_PRAYER_ID"

    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getStopAlarmIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/service/OngoingAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_ALARM"

    .line 44
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private quit()V
    .locals 2

    const-string v0, "OngoingAlarmService"

    const-string v1, "quit"

    .line 126
    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lba/vaktija/android/service/OngoingAlarmService;->alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lba/vaktija/android/service/AlarmSoundPlayer;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lba/vaktija/android/service/OngoingAlarmService;->stopForeground(Z)V

    .line 132
    iget-object v0, p0, Lba/vaktija/android/service/OngoingAlarmService;->notificationsManager:Lba/vaktija/android/service/NotifManager;

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->cancelAlarmNotif()V

    .line 133
    iget v0, p0, Lba/vaktija/android/service/OngoingAlarmService;->startId:I

    invoke-virtual {p0, v0}, Lba/vaktija/android/service/OngoingAlarmService;->stopSelf(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p2, "OngoingAlarmService"

    const-string v0, "onStartCommand"

    .line 56
    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput p3, p0, Lba/vaktija/android/service/OngoingAlarmService;->startId:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/service/OngoingAlarmService;->notificationsManager:Lba/vaktija/android/service/NotifManager;

    const-string p2, "ACTION_START_ALARM"

    .line 66
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x4e

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    const-string p3, "EXTRA_PRAYER_ID"

    .line 68
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 70
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p2

    invoke-virtual {p2, p1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lba/vaktija/android/service/OngoingAlarmService;->notificationsManager:Lba/vaktija/android/service/NotifManager;

    .line 74
    invoke-interface {p2, p1}, Lba/vaktija/android/service/NotifManager;->getAlarmNotif(Lba/vaktija/android/models/Prayer;)Landroid/app/Notification;

    move-result-object p1

    .line 72
    invoke-virtual {p0, v1, p1}, Lba/vaktija/android/service/OngoingAlarmService;->startForeground(ILandroid/app/Notification;)V

    .line 76
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    invoke-virtual {p1}, Lba/vaktija/android/App;->getAlarmSoundUri()Landroid/net/Uri;

    move-result-object p1

    .line 78
    new-instance p2, Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-direct {p2, p0}, Lba/vaktija/android/service/AlarmSoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lba/vaktija/android/service/OngoingAlarmService;->alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

    .line 80
    :try_start_0
    invoke-virtual {p2, p1, v0}, Lba/vaktija/android/service/AlarmSoundPlayer;->play(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lba/vaktija/android/service/OngoingAlarmService;->startCountDownTimer()V

    goto :goto_1

    :cond_0
    const-string p1, "ACTION_STOP_ALARM"

    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lba/vaktija/android/service/OngoingAlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/service/OngoingAlarmService;->notificationsManager:Lba/vaktija/android/service/NotifManager;

    const/4 p2, 0x0

    .line 95
    invoke-interface {p1, p2}, Lba/vaktija/android/service/NotifManager;->getAlarmNotif(Lba/vaktija/android/models/Prayer;)Landroid/app/Notification;

    move-result-object p1

    .line 93
    invoke-virtual {p0, v1, p1}, Lba/vaktija/android/service/OngoingAlarmService;->startForeground(ILandroid/app/Notification;)V

    .line 97
    invoke-virtual {p0, v0}, Lba/vaktija/android/service/OngoingAlarmService;->stopForeground(Z)V

    .line 99
    invoke-direct {p0}, Lba/vaktija/android/service/OngoingAlarmService;->quit()V

    :cond_2
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method startCountDownTimer()V
    .locals 8

    const-string v0, "OngoingAlarmService"

    const-string v1, "startCountDownTimer"

    .line 106
    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lba/vaktija/android/service/OngoingAlarmService$1;

    const-wide/32 v4, 0x1d4c0

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lba/vaktija/android/service/OngoingAlarmService$1;-><init>(Lba/vaktija/android/service/OngoingAlarmService;JJ)V

    iput-object v0, p0, Lba/vaktija/android/service/OngoingAlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 122
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
