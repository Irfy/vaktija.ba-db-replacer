.class public Lba/vaktija/android/service/LegacyNotifManager;
.super Ljava/lang/Object;
.source "LegacyNotifManager.java"

# interfaces
.implements Lba/vaktija/android/service/NotifManager;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static instance:Lba/vaktija/android/service/LegacyNotifManager;


# instance fields
.field protected approaching:Z

.field protected context:Landroid/content/Context;

.field private mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field protected mPrayer:Lba/vaktija/android/models/Prayer;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSilentModeOn:Z

.field private mStatusbarNotification:Z

.field protected notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lba/vaktija/android/service/LegacyNotifManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-string v0, "notification"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 49
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 50
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    .line 52
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "statusbarNotification"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mStatusbarNotification:Z

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/service/LegacyNotifManager;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 29
    iget-object p0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lba/vaktija/android/service/LegacyNotifManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mSilentModeOn:Z

    return p0
.end method

.method static synthetic access$200(Lba/vaktija/android/service/LegacyNotifManager;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lba/vaktija/android/service/LegacyNotifManager;->updateCountDownNotif(I)V

    return-void
.end method

.method private cancelExistingNotif()V
    .locals 1

    .line 500
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 503
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/service/LegacyNotifManager;
    .locals 3

    .line 58
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->instance:Lba/vaktija/android/service/LegacyNotifManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lba/vaktija/android/service/LegacyNotifManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/LegacyNotifManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/service/LegacyNotifManager;->instance:Lba/vaktija/android/service/LegacyNotifManager;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    iput-object v1, v0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 62
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->instance:Lba/vaktija/android/service/LegacyNotifManager;

    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p0

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result p0

    iput-boolean p0, v0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    .line 64
    sget-object p0, Lba/vaktija/android/service/LegacyNotifManager;->instance:Lba/vaktija/android/service/LegacyNotifManager;

    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "statusbarNotification"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mStatusbarNotification:Z

    .line 69
    :goto_0
    sget-object p0, Lba/vaktija/android/service/LegacyNotifManager;->instance:Lba/vaktija/android/service/LegacyNotifManager;

    return-object p0
.end method

.method private getTimeTillNext(I)Ljava/lang/CharSequence;
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {v1}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " je za "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-static {p1}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private resetStoredState()V
    .locals 3

    .line 508
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[resetStoredState]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_0"

    const/4 v2, 0x0

    .line 510
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_1"

    .line 511
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_2"

    .line 512
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_3"

    .line 513
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_4"

    .line 514
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "approachingNotifDeleted_5"

    .line 515
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_0"

    .line 516
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_1"

    .line 517
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_2"

    .line 518
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_3"

    .line 519
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_4"

    .line 520
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentNotifDeleted_5"

    .line 521
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startCountDownTimer()V
    .locals 7

    .line 252
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[startCountDownTimer]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 257
    :cond_0
    new-instance v0, Lba/vaktija/android/service/LegacyNotifManager$1;

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x2710

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lba/vaktija/android/service/LegacyNotifManager$1;-><init>(Lba/vaktija/android/service/LegacyNotifManager;JJ)V

    iput-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 273
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateCountDownNotif(I)V
    .locals 2

    .line 278
    invoke-direct {p0, p1}, Lba/vaktija/android/service/LegacyNotifManager;->getTimeTillNext(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 280
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 282
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 284
    iget-boolean p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result p1

    invoke-static {p1}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uskoro je "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {v1}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 288
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 291
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "locationName"

    const-string v1, "Sarajevo"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 299
    :goto_0
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 300
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x4d

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 302
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildCountDownNotif(Z)V
    .locals 3

    .line 73
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildCountdownNotification] showTicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEFAULT_CHANNEL"

    .line 75
    invoke-virtual {p0, p1, v0}, Lba/vaktija/android/service/LegacyNotifManager;->getOngoingNotif(ZLjava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 77
    iput v0, p1, Landroid/app/Notification;->priority:I

    .line 79
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public cancelAlarmNotif()V
    .locals 2

    .line 491
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelApproachingNotif()V
    .locals 0

    return-void
.end method

.method public cancelNotification()V
    .locals 1

    .line 313
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 317
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_1
    return-void
.end method

.method public getAlarmNotif(Lba/vaktija/android/models/Prayer;)Landroid/app/Notification;
    .locals 10

    const-string v0, "alarm"

    const/4 v1, -0x1

    const v2, 0x7f07008f

    const-string v3, "ALARMS_CHANNEL_3"

    if-nez p1, :cond_0

    .line 439
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-direct {p1, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v2, "Alarm"

    .line 442
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 443
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .line 450
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-class v6, Lba/vaktija/android/receiver/AlarmReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "AlarmReceiver.ACTION_DISMISS_ALARM"

    .line 451
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v7, v6

    const/high16 v6, 0x8000000

    .line 453
    invoke-static {v5, v7, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 460
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    const v7, 0x7f070092

    const-string v8, "Ugasi Alarm"

    invoke-direct {v5, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 466
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-class v8, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    const-string v8, "EXTRA_PRAYER_ID"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v7, 0x0

    const-string v8, "EXTRA_PLAY_ALARM_SOUND"

    .line 468
    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    iget-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v9, v8

    .line 470
    invoke-static {v7, v9, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " je za "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 475
    invoke-static {v7}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v7

    .line 474
    invoke-static {v7}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2022 Alarm"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 483
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p1, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getOngoingNotif(ZLjava/lang/String;)Landroid/app/Notification;
    .locals 10

    .line 84
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildCountdownNotification] showTicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "locationName"

    const-string v2, "Sarajevo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v1

    iput-boolean v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mSilentModeOn:Z

    .line 90
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 92
    iget-object v3, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approachingNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    iget-object v3, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "ALL_PRAYERS_IN_NOTIF"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 96
    iget-boolean v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    .line 98
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-class v6, Lba/vaktija/android/MainActivityHelper;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x24000000

    .line 99
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v7, v6

    .line 101
    invoke-static {v5, v7, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "statusbarNotification"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "Uskoro je "

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v5, v7, :cond_1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {v7}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " je za "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v5

    invoke-static {v5}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 113
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {v7}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    :goto_1
    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iput-object v7, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 117
    iget-object v8, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v8}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v8

    invoke-virtual {v8}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayersTimes()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    .line 118
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    iget-object v8, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const v9, 0x7f0f0090

    .line 119
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 121
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-direct {v7, v8, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x7f07008e

    .line 122
    invoke-virtual {v7, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 123
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 124
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-boolean v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mStatusbarNotification:Z

    .line 126
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 127
    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 128
    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 130
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_2

    .line 131
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 133
    :cond_2
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_2
    if-eqz v3, :cond_3

    .line 137
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    if-eqz p1, :cond_4

    .line 141
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 144
    :cond_4
    iget-boolean p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mSilentModeOn:Z

    const v0, 0x7f07008f

    if-eqz p2, :cond_7

    .line 146
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p2

    invoke-virtual {p2}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDurationString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_5

    .line 149
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lba/vaktija/android/util/FormattingUtils;->getVakatAnnouncement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    :cond_5
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/service/SilentModeManager;->silentSetByApp()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bez zvukova do "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 156
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 157
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    goto :goto_3

    .line 159
    :cond_6
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "Zvukovi isklju\u010deni"

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 160
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 163
    :goto_3
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-string v1, "piSilentOff"

    invoke-static {p2, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "ACTION_SKIP_SILENT"

    .line 164
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v3, v7

    const/high16 v5, 0x8000000

    .line 165
    invoke-static {v1, v3, p2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 171
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 173
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f070090

    const-string v5, "Uklju\u010di zvukove"

    invoke-virtual {v1, v3, v5, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 175
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-string v1, "piDeleteIntent"

    invoke-static {p2, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "ACTION_SILENT_NOTIFICATION_DELETED"

    .line 176
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v3, v7

    .line 178
    invoke-static {v1, v3, p2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 184
    iget-boolean v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mStatusbarNotification:Z

    if-nez v1, :cond_7

    .line 185
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 189
    :cond_7
    iget-boolean p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-eqz p2, :cond_c

    .line 190
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p2

    invoke-virtual {p2}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result p2

    invoke-static {p2}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_8

    .line 193
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uskoro nastupa "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-static {v3}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 201
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {v1}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 203
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mBigTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 205
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 207
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isNotifVibroOn()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 215
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 218
    :cond_9
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isNotifSoundOn()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 220
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 223
    invoke-static {p2, v4}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "notificationToneUri"

    .line 221
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 225
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "useVaktijaNotifTone"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 226
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1, v4}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 229
    :cond_a
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 234
    :cond_b
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    const-string p2, "deleteIntent"

    invoke-static {p1, p2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ACTION_APPROACHING_NOTIFICATION_DELETED"

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 237
    invoke-static {p2, v1, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 243
    iget-boolean p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mStatusbarNotification:Z

    if-nez p2, :cond_c

    .line 244
    iget-object p2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    :cond_c
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mCountdownNotifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    nop

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

.method public onApproachingNotifDeleted()V
    .locals 5

    .line 333
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[onApproachingNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 337
    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->cancelExistingNotif()V

    return-void
.end method

.method public onSilentNotifDeleted()V
    .locals 3

    .line 324
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[onSilentNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silentNotifDeleted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 327
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 7

    .line 363
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNotificationsEnabled] enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statusbarNotification"

    .line 366
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->resetStoredState()V

    .line 373
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 375
    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 376
    iget-object v3, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "approachingNotifDeleted_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0, v1}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    .line 380
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->startCountDownTimer()V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->cancelExistingNotif()V

    .line 385
    :goto_0
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 386
    invoke-virtual {p0, v4}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    .line 389
    :cond_2
    iget-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 392
    invoke-virtual {p0, v4}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    :cond_3
    return-void
.end method

.method public showApproachingNotification()V
    .locals 5

    .line 346
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[showApproachingNotification]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 350
    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "Not showing approaching notification, notification deleted"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->cancelExistingNotif()V

    .line 358
    invoke-virtual {p0, v1}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    .line 359
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->startCountDownTimer()V

    return-void
.end method

.method public updateNotification()V
    .locals 6

    .line 398
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "[updateNotification]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayerApproaching()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    .line 402
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 404
    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 406
    iget-boolean v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "Not updating notification, approaching notification deleted"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "statusbarNotification"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 415
    iget-object v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentNotifDeleted_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lba/vaktija/android/service/LegacyNotifManager;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 417
    sget-object v2, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusbar notification on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v2, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silent notification deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lba/vaktija/android/service/LegacyNotifManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 422
    invoke-virtual {p0, v3}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    goto :goto_0

    .line 423
    :cond_1
    iget-boolean v1, p0, Lba/vaktija/android/service/LegacyNotifManager;->approaching:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 424
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->cancelExistingNotif()V

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p0, v3}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    .line 427
    invoke-direct {p0}, Lba/vaktija/android/service/LegacyNotifManager;->startCountDownTimer()V

    :goto_0
    return-void
.end method
