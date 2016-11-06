.class public Lba/vaktija/android/service/NotificationsManager;
.super Ljava/lang/Object;
.source "NotificationsManager.java"


# static fields
.field static final NOTIF_UPDATE_INTERVAL:I = 0x2710

.field private static final ONGOING_NOTIF:I = 0x4d

.field public static final TAG:Ljava/lang/String;

.field private static instance:Lba/vaktija/android/service/NotificationsManager;


# instance fields
.field private mApproaching:Z

.field private mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPrayer:Lba/vaktija/android/models/Prayer;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSilentModeOn:Z

.field private mStatusbarNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lba/vaktija/android/service/NotificationsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 49
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 50
    iput-object p1, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 53
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    .line 55
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "statusbarNotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/service/NotificationsManager;->mStatusbarNotification:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/service/NotificationsManager;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/service/NotificationsManager;

    .prologue
    .line 29
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method static synthetic access$100(Lba/vaktija/android/service/NotificationsManager;)Z
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/service/NotificationsManager;

    .prologue
    .line 29
    iget-boolean v0, p0, Lba/vaktija/android/service/NotificationsManager;->mSilentModeOn:Z

    return v0
.end method

.method static synthetic access$200(Lba/vaktija/android/service/NotificationsManager;I)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/service/NotificationsManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lba/vaktija/android/service/NotificationsManager;->updateCountDownNotif(I)V

    return-void
.end method

.method private cancelExistingNotif()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 402
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 404
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lba/vaktija/android/service/NotificationsManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/NotificationsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    .line 72
    :goto_0
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    iput-object v1, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 65
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result v1

    iput-boolean v1, v0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    .line 67
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    sget-object v1, Lba/vaktija/android/service/NotificationsManager;->instance:Lba/vaktija/android/service/NotificationsManager;

    iget-object v1, v1, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "statusbarNotification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lba/vaktija/android/service/NotificationsManager;->mStatusbarNotification:Z

    goto :goto_0
.end method

.method private getTimeTillNext(IZ)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "seconds"    # I
    .param p2, "ceil"    # Z

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {v2}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " je za "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "time":Ljava/lang/String;
    invoke-static {v0}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private resetStoredState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v1, "[resetStoredState]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_0"

    .line 409
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_1"

    .line 410
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_2"

    .line 411
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_3"

    .line 412
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_4"

    .line 413
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_5"

    .line 414
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_0"

    .line 415
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_1"

    .line 416
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_2"

    .line 417
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_3"

    .line 418
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_4"

    .line 419
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_5"

    .line 420
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    return-void
.end method

.method private startCountDownTimer()V
    .locals 6

    .prologue
    .line 235
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v1, "[startCountDownTimer]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 240
    :cond_0
    new-instance v0, Lba/vaktija/android/service/NotificationsManager$1;

    iget-object v1, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lba/vaktija/android/service/NotificationsManager$1;-><init>(Lba/vaktija/android/service/NotificationsManager;JJ)V

    iput-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 256
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 257
    return-void
.end method

.method private updateCountDownNotif(I)V
    .locals 6
    .param p1, "secRemaining"    # I

    .prologue
    const/4 v5, 0x1

    .line 261
    invoke-direct {p0, p1, v5}, Lba/vaktija/android/service/NotificationsManager;->getTimeTillNext(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 262
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 263
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 265
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 267
    iget-boolean v3, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v3

    invoke-static {v3, v5}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "time":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uskoro je "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-static {v4}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 270
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 271
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 274
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "locationName"

    const-string v5, "Sarajevo"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "city":Ljava/lang/String;
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 279
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x4d

    iget-object v5, p0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 281
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 282
    return-void
.end method


# virtual methods
.method public buildCountDownNotif(Z)V
    .locals 27
    .param p1, "showTicker"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v23, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[buildCountdownNotification] showTicker="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "locationName"

    const-string v25, "Sarajevo"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "city":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lba/vaktija/android/service/NotificationsManager;->mSilentModeOn:Z

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "approachingNotifDeleted_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 85
    .local v5, "approachingNotifDeleted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "silentNotifDeleted_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 87
    .local v19, "silentNotifDeleted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "ALL_PRAYERS_IN_NOTIF"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 89
    .local v4, "allPrayersInNotif":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    if-nez v5, :cond_a

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    .line 91
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-class v24, Lba/vaktija/android/MainActivityHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v17, "resultIntent":Landroid/content/Intent;
    const/high16 v23, 0x24000000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    .line 94
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v17

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 100
    .local v14, "pi":Landroid/app/PendingIntent;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " je za "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 101
    .local v22, "title":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 103
    new-instance v23, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v23 .. v23}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayersTimes()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v23

    .line 105
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f07006d

    .line 106
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 108
    new-instance v23, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f02006b

    .line 109
    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    const/16 v24, 0x1

    .line 110
    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    .line 111
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    const/16 v24, 0x1

    .line 112
    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mStatusbarNotification:Z

    move/from16 v24, v0

    .line 113
    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    .line 114
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    .line 115
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 116
    invoke-static/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    if-eqz v4, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    :cond_0
    if-eqz p1, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mSilentModeOn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDurationString()Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, "silentDeactivationTime":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getVakatAnnouncement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/service/SilentModeManager;->silentSetByApp()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 136
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bez zvukova do "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 138
    .local v8, "contentTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 145
    .end local v8    # "contentTitle":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "piSilentOff"

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 146
    .local v20, "silentOffIntent":Landroid/content/Intent;
    const-string v23, "ACTION_SKIP_SILENT"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x8000000

    .line 147
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 153
    .local v16, "piSilentoff":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    const v24, 0x7f02006c

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    const v24, 0x7f02006d

    const-string v25, "Uklju\u010di zvukove"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "piDeleteIntent"

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 158
    .local v9, "deleteIntent":Landroid/content/Intent;
    const-string v23, "ACTION_SILENT_NOTIFICATION_DELETED"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    .line 160
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 166
    .local v15, "piDeleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mStatusbarNotification:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "piDeleteIntent":Landroid/app/PendingIntent;
    .end local v16    # "piSilentoff":Landroid/app/PendingIntent;
    .end local v18    # "silentDeactivationTime":Ljava/lang/String;
    .end local v20    # "silentOffIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v21

    .line 174
    .local v21, "time":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Uskoro nastupa "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Uskoro je "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 180
    .local v7, "contentText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    const v24, 0x7f02006c

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v11

    .line 192
    .local v11, "nextVakat":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->isNotifVibroOn()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    :cond_5
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->isNotifSoundOn()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "notificationToneUri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 201
    invoke-static/range {v25 .. v26}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v25

    .line 199
    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 198
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 203
    .local v13, "notifSoundUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "useVaktijaNotifTone"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 207
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 212
    .end local v13    # "notifSoundUri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "deleteIntent"

    invoke-static/range {v23 .. v24}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 213
    .restart local v9    # "deleteIntent":Landroid/content/Intent;
    const-string v23, "ACTION_APPROACHING_NOTIFICATION_DELETED"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    .line 215
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 221
    .local v10, "di":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lba/vaktija/android/service/NotificationsManager;->mStatusbarNotification:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 226
    .end local v7    # "contentText":Ljava/lang/CharSequence;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v10    # "di":Landroid/app/PendingIntent;
    .end local v11    # "nextVakat":Lba/vaktija/android/models/Prayer;
    .end local v21    # "time":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 227
    .local v12, "notif":Landroid/app/Notification;
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 228
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v12, Landroid/app/Notification;->priority:I

    .line 231
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v23, v0

    const/16 v24, 0x4d

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 232
    return-void

    .line 89
    .end local v12    # "notif":Landroid/app/Notification;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "resultIntent":Landroid/content/Intent;
    .end local v22    # "title":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v14    # "pi":Landroid/app/PendingIntent;
    .restart local v17    # "resultIntent":Landroid/content/Intent;
    .restart local v18    # "silentDeactivationTime":Ljava/lang/String;
    .restart local v22    # "title":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v23, v0

    const-string v24, "Zvukovi isklju\u010deni"

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/service/NotificationsManager;->mBigTextStyle:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v23, v0

    const-string v24, "Zvukovi isklju\u010deni"

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto/16 :goto_1

    .line 193
    :array_0
    .array-data 8
        0x0
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc7
    .end array-data
.end method

.method public cancelNotification()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 296
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 299
    :cond_1
    return-void
.end method

.method public onApproachingNotifDeleted()V
    .locals 3

    .prologue
    .line 310
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v1, "[onApproachingNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "approachingNotifDeleted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 313
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->cancelExistingNotif()V

    .line 317
    return-void
.end method

.method public onSilentNotifDeleted()V
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v1, "[onSilentNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silentNotifDeleted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 305
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 335
    sget-object v2, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setNotificationsEnabled] enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "statusbarNotification"

    .line 338
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 339
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->resetStoredState()V

    .line 345
    :cond_0
    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 346
    .local v1, "silentNotifDeleted":Z
    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .local v0, "approachingNotifDeleted":Z
    if-eqz p1, :cond_3

    .line 349
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 350
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->startCountDownTimer()V

    .line 355
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 356
    invoke-virtual {p0, v5}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 359
    :cond_1
    iget-object v2, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result v2

    iput-boolean v2, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    .line 361
    iget-boolean v2, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p0, v5}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 364
    :cond_2
    return-void

    .line 352
    :cond_3
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->cancelExistingNotif()V

    goto :goto_0
.end method

.method public showApproachingNotification()V
    .locals 4

    .prologue
    .line 320
    sget-object v1, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v2, "[showApproachingNotification]"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "approachingNotifDeleted_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    .local v0, "approachingNotifDeleted":Z
    if-eqz v0, :cond_0

    .line 325
    sget-object v1, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v2, "Not showing approaching notification, notification deleted"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->cancelExistingNotif()V

    .line 330
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 331
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->startCountDownTimer()V

    goto :goto_0
.end method

.method public updateNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 367
    sget-object v3, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v4, "[updateNotification]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result v3

    iput-boolean v3, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    .line 371
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approachingNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    .local v0, "approachingNotifDeleted":Z
    iget-boolean v3, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 374
    sget-object v3, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v4, "Not updating notification, approaching notification deleted"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "statusbarNotification"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 382
    .local v2, "statusbarNotif":Z
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silentNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/service/NotificationsManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    .local v1, "silentNotifDeleted":Z
    sget-object v3, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusbar notification on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v3, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silent notification deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lba/vaktija/android/service/NotificationsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 389
    invoke-virtual {p0, v6}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    goto :goto_0

    .line 390
    :cond_1
    iget-boolean v3, p0, Lba/vaktija/android/service/NotificationsManager;->mApproaching:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 391
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->cancelExistingNotif()V

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0, v6}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 394
    invoke-direct {p0}, Lba/vaktija/android/service/NotificationsManager;->startCountDownTimer()V

    goto :goto_0
.end method
