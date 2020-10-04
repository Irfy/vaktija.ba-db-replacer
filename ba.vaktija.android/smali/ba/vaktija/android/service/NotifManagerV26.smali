.class public Lba/vaktija/android/service/NotifManagerV26;
.super Lba/vaktija/android/service/LegacyNotifManager;
.source "NotifManagerV26.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotifManagerV26"

.field private static instance:Lba/vaktija/android/service/NotifManagerV26;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lba/vaktija/android/service/LegacyNotifManager;-><init>(Landroid/content/Context;)V

    const-string p1, "NotifManagerV26"

    const-string v0, "<init>"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lba/vaktija/android/service/NotifManagerV26;->createNotifChannels()V

    return-void
.end method

.method private createNotifChannels()V
    .locals 8

    const-string v0, "NotifManagerV26"

    const-string v1, "createNotifChannels"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lba/vaktija/android/service/NotifManagerV26;->context:Landroid/content/Context;

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "DEFAULT_CHANNEL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 52
    iget-object v3, p0, Lba/vaktija/android/service/NotifManagerV26;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 54
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 55
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v4, 0x5

    .line 56
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 59
    iget-object v4, p0, Lba/vaktija/android/service/NotifManagerV26;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lba/vaktija/android/service/NotifManagerV26;->context:Landroid/content/Context;

    const v6, 0x7f0f0052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, "APPROACHING_CHANNEL"

    invoke-direct {v6, v7, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 63
    invoke-virtual {v6, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 64
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 65
    invoke-virtual {v6, v4, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 66
    iget-object v1, p0, Lba/vaktija/android/service/NotifManagerV26;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 68
    iget-object v1, p0, Lba/vaktija/android/service/NotifManagerV26;->context:Landroid/content/Context;

    const v4, 0x7f0f0051

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "ALARMS_CHANNEL_3"

    invoke-direct {v4, v5, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 72
    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {v4, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 77
    iget-object v0, p0, Lba/vaktija/android/service/NotifManagerV26;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotifManagerV26;
    .locals 2

    .line 26
    sget-object v0, Lba/vaktija/android/service/NotifManagerV26;->instance:Lba/vaktija/android/service/NotifManagerV26;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lba/vaktija/android/service/NotifManagerV26;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/NotifManagerV26;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/service/NotifManagerV26;->instance:Lba/vaktija/android/service/NotifManagerV26;

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    iput-object v1, v0, Lba/vaktija/android/service/NotifManagerV26;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 30
    sget-object v0, Lba/vaktija/android/service/NotifManagerV26;->instance:Lba/vaktija/android/service/NotifManagerV26;

    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p0

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result p0

    iput-boolean p0, v0, Lba/vaktija/android/service/NotifManagerV26;->approaching:Z

    .line 33
    :goto_0
    sget-object p0, Lba/vaktija/android/service/NotifManagerV26;->instance:Lba/vaktija/android/service/NotifManagerV26;

    return-object p0
.end method
