.class public Lba/vaktija/android/service/VaktijaService;
.super Landroid/app/Service;
.source "VaktijaService.java"


# static fields
.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "ACTION_ALARM_CHANGED"

.field public static final ACTION_APPROACHING_NOTIFICATION_DELETED:Ljava/lang/String; = "ACTION_APPROACHING_NOTIFICATION_DELETED"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "ACTION_BOOT_COMPLETED"

.field public static final ACTION_DEACTIVATE_SILENT:Ljava/lang/String; = "ACTION_DEACTIVATE_SILENT"

.field public static final ACTION_DISABLE_NOTIFS:Ljava/lang/String; = "ACTION_DISABLE_NOTIFS"

.field public static final ACTION_DISABLE_SILENT_MODES:Ljava/lang/String; = "ACTION_DISABLE_SILENT_MODES"

.field public static final ACTION_ENABLE_NOTIFS:Ljava/lang/String; = "ACTION_ENABLE_NOTIFS"

.field public static final ACTION_LOCK_CHANGED:Ljava/lang/String; = "ACTION_LOCK_CHANGED"

.field public static final ACTION_NEW_DAY:Ljava/lang/String; = "ACTION_NEW_DAY"

.field public static final ACTION_NOTIF_CHANGED:Ljava/lang/String; = "ACTION_NOTIF_CHANGED"

.field public static final ACTION_PRAYER_CHANGE:Ljava/lang/String; = "ACTION_PRAYER_CHANGE"

.field public static final ACTION_QUIT:Ljava/lang/String; = "ACTION_QUIT"

.field public static final ACTION_SHOW_APPROACHING_NOTIFICATION:Ljava/lang/String; = "ACTION_SHOW_APPROACHING_NOTIFICATION"

.field public static final ACTION_SILENT_ACTIVATED:Ljava/lang/String; = "ACTION_SILENT_ACTIVATED"

.field public static final ACTION_SILENT_CHANGED:Ljava/lang/String; = "ACTION_SILENT_CHANGED"

.field public static final ACTION_SILENT_NOTIFICATION_DELETED:Ljava/lang/String; = "ACTION_SILENT_NOTIFICATION_DELETED"

.field public static final ACTION_SKIP_SILENT:Ljava/lang/String; = "ACTION_SKIP_SILENT"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "ACTION_TIME_CHANGED"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "ACTION_UPDATE"

.field public static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "ACTION_VOLUME_CHANGED"

.field private static final NEW_DAY_ALARM_ID:I = 0x18a92

.field private static final STARTED_FROM:Ljava/lang/String; = "STARTED_FROM"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApp:Lba/vaktija/android/App;

.field private mEventBus:Lde/greenrobot/event/EventBus;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrayer:Lba/vaktija/android/models/Prayer;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lba/vaktija/android/service/VaktijaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "power"

    .line 92
    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPowerManager:Landroid/os/PowerManager;

    .line 94
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private disableSilentModes()V
    .locals 5

    .line 569
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[disableSilentModes]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 574
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 575
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 576
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 577
    invoke-virtual {v1, v2}, Lba/vaktija/android/models/Prayer;->setSilentOn(Z)V

    .line 578
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v4, Lba/vaktija/android/models/Events$SkipSilentEvent;

    invoke-direct {v4, v3}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v1, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 581
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 582
    invoke-virtual {v1, v2}, Lba/vaktija/android/models/Prayer;->setSilentOn(Z)V

    .line 583
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lba/vaktija/android/models/Events$SkipSilentEvent;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-direct {v4, v1}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpEventsTimeline()V
    .locals 8

    const/4 v0, 0x1

    .line 292
    invoke-static {v0}, Lba/vaktija/android/util/FileLog;->newLine(I)V

    .line 294
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** ALARMS ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", activation at: "

    const-string v4, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 297
    sget-object v5, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm on for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getAlarmActivationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** NOTIFICATIONS ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 303
    sget-object v5, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification on for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getNotificationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_1
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** SILENT DEACTIVATION ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 309
    sget-object v5, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "silent on for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getSilentDeactivationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :cond_2
    invoke-static {v0}, Lba/vaktija/android/util/FileLog;->newLine(I)V

    return-void
.end method

.method private enableNotificaion(Z)V
    .locals 1

    .line 316
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lba/vaktija/android/service/NotifManager;->setNotificationsEnabled(Z)V

    return-void
.end method

.method private getNewDayPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "NewDayPendingIntent"

    .line 544
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION_NEW_DAY"

    .line 545
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x18a92

    const/high16 v2, 0x10000000

    .line 547
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/service/VaktijaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "STARTED_FROM"

    .line 100
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private onApproachingNotifDeleted()V
    .locals 3

    .line 345
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onApproachingNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->onApproachingNotifDeleted()V

    .line 349
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Approaching notification deleted"

    invoke-virtual {v0, v2, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSilentNotifDeleted()V
    .locals 3

    .line 337
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onSilentNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->onSilentNotifDeleted()V

    .line 340
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Silent notification deleted"

    invoke-virtual {v0, v2, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processStartCommand(Landroid/content/Intent;I)V
    .locals 7

    .line 149
    invoke-static {}, Lba/vaktija/android/models/Prayer;->isSummerTime()Z

    move-result v0

    .line 150
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "summer time active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "summerTime"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 153
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v4, "summer time changed"

    invoke-static {v1, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 159
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v1}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 162
    :cond_0
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "STARTED_FROM"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "started from: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    sget-object p1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ACTION_SHOW_APPROACHING_NOTIFICATION"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    :cond_3
    const-string v1, "ACTION_DEACTIVATE_SILENT"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_4
    const-string v2, "ACTION_PRAYER_CHANGE"

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v2

    :cond_5
    const/4 v4, -0x1

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "ACTION_NEW_DAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "ACTION_BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "ACTION_ALARM_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x7

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "ACTION_SILENT_ACTIVATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x5

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "ACTION_SILENT_NOTIFICATION_DELETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string p1, "ACTION_LOCK_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x3

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "ACTION_SILENT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x4

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "ACTION_NOTIF_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x6

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "ACTION_QUIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x13

    goto :goto_0

    :sswitch_b
    const-string p1, "ACTION_VOLUME_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_c
    const-string p1, "ACTION_APPROACHING_NOTIFICATION_DELETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x10

    goto :goto_0

    :sswitch_d
    const-string p1, "ACTION_TIME_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_e
    const-string p1, "ACTION_DISABLE_NOTIFS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xe

    goto :goto_0

    :sswitch_f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xc

    goto :goto_0

    :sswitch_10
    const-string p1, "ACTION_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_11
    const-string p1, "ACTION_SKIP_SILENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_12
    const-string p1, "ACTION_ENABLE_NOTIFS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0xf

    goto :goto_0

    :sswitch_13
    const-string p1, "ACTION_DISABLE_SILENT_MODES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v4, 0x12

    :cond_6
    :goto_0
    const/16 p1, 0x1a

    packed-switch v4, :pswitch_data_0

    .line 278
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    .line 279
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 280
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    goto/16 :goto_1

    .line 275
    :pswitch_0
    invoke-direct {p0, p2}, Lba/vaktija/android/service/VaktijaService;->shutdown(I)V

    goto/16 :goto_1

    .line 272
    :pswitch_1
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->disableSilentModes()V

    goto/16 :goto_1

    .line 269
    :pswitch_2
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->onSilentNotifDeleted()V

    goto/16 :goto_1

    .line 266
    :pswitch_3
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->onApproachingNotifDeleted()V

    goto/16 :goto_1

    .line 263
    :pswitch_4
    invoke-direct {p0, v6}, Lba/vaktija/android/service/VaktijaService;->enableNotificaion(Z)V

    goto/16 :goto_1

    .line 260
    :pswitch_5
    invoke-direct {p0, v3}, Lba/vaktija/android/service/VaktijaService;->enableNotificaion(Z)V

    goto/16 :goto_1

    .line 246
    :pswitch_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_7

    .line 247
    invoke-virtual {p0, v6}, Lba/vaktija/android/service/VaktijaService;->stopForeground(Z)V

    const/16 p2, 0x4d

    .line 251
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    const-string v1, "APPROACHING_CHANNEL"

    invoke-interface {v0, v6, v1}, Lba/vaktija/android/service/NotifManager;->getOngoingNotif(ZLjava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 249
    invoke-virtual {p0, p2, v0}, Lba/vaktija/android/service/VaktijaService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 255
    :cond_7
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->showApproachingNotification()V

    goto/16 :goto_1

    .line 240
    :pswitch_7
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 241
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 242
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v0}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 231
    :pswitch_8
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetPrevoiusPrayerSkips()V

    .line 232
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetStoredState()V

    .line 233
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 234
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 235
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v0}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 236
    invoke-static {p0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 237
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->cancelApproachingNotif()V

    goto/16 :goto_1

    .line 225
    :pswitch_9
    invoke-virtual {p0}, Lba/vaktija/android/service/VaktijaService;->skipSilent()V

    .line 226
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 228
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v0}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 220
    :pswitch_a
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetDay()V

    .line 221
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    goto :goto_1

    .line 217
    :pswitch_b
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAlarms()V

    goto :goto_1

    .line 213
    :pswitch_c
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 214
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllNotifications()V

    goto :goto_1

    .line 209
    :pswitch_d
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 210
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    goto :goto_1

    .line 203
    :pswitch_e
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 204
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 205
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v0}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleSilentActivationEvents()V

    goto :goto_1

    .line 200
    :pswitch_f
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    goto :goto_1

    .line 193
    :pswitch_10
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetDay()V

    .line 195
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    .line 196
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 197
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p2

    invoke-interface {p2}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    .line 284
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_8

    iget-object p1, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string p2, "statusbarNotification"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 285
    invoke-virtual {p0, v3}, Lba/vaktija/android/service/VaktijaService;->stopForeground(Z)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77941eda -> :sswitch_13
        -0x74588cca -> :sswitch_12
        -0x54028574 -> :sswitch_11
        -0x4a84110e -> :sswitch_10
        -0x4570e749 -> :sswitch_f
        -0x34174e3d -> :sswitch_e
        -0x2ce07d75 -> :sswitch_d
        -0x28287a6d -> :sswitch_c
        -0x2576c068 -> :sswitch_b
        -0x1f84ad48 -> :sswitch_a
        -0xffff5e4 -> :sswitch_9
        -0xc217e2d -> :sswitch_8
        0x1aab6e9 -> :sswitch_7
        0x20834bf -> :sswitch_6
        0x1a74a3c6 -> :sswitch_5
        0x201f28a9 -> :sswitch_4
        0x2bb69930 -> :sswitch_3
        0x53be843d -> :sswitch_2
        0x5d303647 -> :sswitch_1
        0x760a2734 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerScreenOnReceiver()V
    .locals 2

    .line 320
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[registerScreenOnReceiver]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lba/vaktija/android/service/VaktijaService$1;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/VaktijaService$1;-><init>(Lba/vaktija/android/service/VaktijaService;)V

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lba/vaktija/android/service/VaktijaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetDay()V
    .locals 2

    .line 354
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 355
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 356
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v1}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private resetPrevoiusPrayerSkips()V
    .locals 3

    .line 365
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[resetPrevoiusPrayerSkips]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPreviousPrayerIgnoringDate(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->resetSkips()V

    .line 370
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-direct {v2, v0}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private resetStoredState()V
    .locals 6

    .line 105
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[resetStoredState]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approachingNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silentNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string v1, "actualEventMessageShown"

    .line 114
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "silentDisabledByUser"

    .line 115
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private scheduleAlarms()V
    .locals 3

    .line 374
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[scheduleAlarms]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 381
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 385
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 388
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 389
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    return-void
.end method

.method private scheduleAllEvents()V
    .locals 4

    .line 421
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[scheduleAllEvents]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 432
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 433
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 434
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 438
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 439
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 440
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 441
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 443
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 444
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 471
    :cond_2
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    return-void
.end method

.method private scheduleAllNotifications()V
    .locals 3

    .line 475
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[scheduleAllEvents]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 481
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 483
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 485
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 488
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 489
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleNewDayAlarm()V
    .locals 6

    .line 525
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 526
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xb

    const/4 v3, 0x0

    .line 527
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 528
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 529
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 531
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 533
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new day alarm at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->getNewDayPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 537
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 540
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->getNewDayPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 537
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private scheduleSilentActivationEvents()V
    .locals 4

    .line 396
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[scheduleSilentActivationEvents]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 403
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 409
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 410
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 412
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 413
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    return-void
.end method

.method private shutdown(I)V
    .locals 3

    .line 510
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[### shutdown]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->cancelNotification()V

    .line 514
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 515
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0, v2}, Lba/vaktija/android/models/Prayer;->cancelAllAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetStoredState()V

    .line 519
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 520
    invoke-virtual {p0, p1}, Lba/vaktija/android/service/VaktijaService;->stopSelf(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 78
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    .line 82
    invoke-virtual {p0}, Lba/vaktija/android/service/VaktijaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    const-string v0, "alarm"

    .line 84
    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 86
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->acquireWakeLock()V

    .line 88
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->registerScreenOnReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 556
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->cancelNotification()V

    .line 560
    :try_start_0
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 121
    sget-object p2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStartCommand] startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p2, :cond_0

    .line 124
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->acquireWakeLock()V

    .line 127
    :cond_0
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 129
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-lt p2, v0, :cond_1

    const/16 p2, 0x4d

    .line 132
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    const-string v2, "DEFAULT_CHANNEL"

    invoke-interface {v0, v1, v2}, Lba/vaktija/android/service/NotifManager;->getOngoingNotif(ZLjava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 130
    invoke-virtual {p0, p2, v0}, Lba/vaktija/android/service/VaktijaService;->startForeground(ILandroid/app/Notification;)V

    .line 135
    iget-object p2, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "statusbarNotification"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Lba/vaktija/android/service/VaktijaService;->stopForeground(Z)V

    .line 140
    :cond_1
    invoke-direct {p0, p1, p3}, Lba/vaktija/android/service/VaktijaService;->processStartCommand(Landroid/content/Intent;I)V

    .line 142
    iget-object p1, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v1
.end method

.method skipSilent()V
    .locals 3

    .line 495
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 496
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 498
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 500
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lba/vaktija/android/models/Events$SkipSilentEvent;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-direct {v2, v0}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 503
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 505
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lba/vaktija/android/models/Events$SkipSilentEvent;

    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
