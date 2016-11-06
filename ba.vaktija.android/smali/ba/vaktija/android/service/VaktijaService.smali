.class public Lba/vaktija/android/service/VaktijaService;
.super Landroid/app/Service;
.source "VaktijaService.java"


# static fields
.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "ACTION_ALARM_CHANGED"

.field public static final ACTION_APPROACHING_NOTIFICATION_DELETED:Ljava/lang/String; = "ACTION_APPROACHING_NOTIFICATION_DELETED"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "ACTION_BOOT_COMPLETED"

.field public static final ACTION_DEACTIVATE_SILENT:Ljava/lang/String; = "ACTION_DEACTIVATE_SILENT"

.field public static final ACTION_DISABLE_NOTIFS:Ljava/lang/String; = "ACTION_DISABLE_NOTIFS"

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

    .prologue
    .line 33
    const-class v0, Lba/vaktija/android/service/VaktijaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPowerManager:Landroid/os/PowerManager;

    .line 95
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 97
    return-void
.end method

.method private dumpEventsTimeline()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 272
    invoke-static {v5}, Lba/vaktija/android/util/FileLog;->newLine(I)V

    .line 274
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** ALARMS ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    .line 277
    .local v0, "p":Lba/vaktija/android/models/Prayer;
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarm on for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activation at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getAlarmActivationTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v0    # "p":Lba/vaktija/android/models/Prayer;
    :cond_0
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** NOTIFICATIONS ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
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

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    .line 283
    .restart local v0    # "p":Lba/vaktija/android/models/Prayer;
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification on for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activation at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getNotificationTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    .end local v0    # "p":Lba/vaktija/android/models/Prayer;
    :cond_1
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "*** SILENT DEACTIVATION ***"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
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

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    .line 289
    .restart local v0    # "p":Lba/vaktija/android/models/Prayer;
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silent on for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activation at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSilentDeactivationTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 292
    .end local v0    # "p":Lba/vaktija/android/models/Prayer;
    :cond_2
    invoke-static {v5}, Lba/vaktija/android/util/FileLog;->newLine(I)V

    .line 293
    return-void
.end method

.method private enableNotificaion(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 268
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lba/vaktija/android/service/NotificationsManager;->setNotificationsEnabled(Z)V

    .line 269
    return-void
.end method

.method private getNewDayPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 531
    const-string v1, "NewDayPendingIntent"

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_NEW_DAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const v1, 0x18a92

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startedFrom"    # Ljava/lang/String;

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/service/VaktijaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v0, "startIntent":Landroid/content/Intent;
    const-string v1, "STARTED_FROM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    return-object v0
.end method

.method private onApproachingNotifDeleted()V
    .locals 4

    .prologue
    .line 321
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onApproachingNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/NotificationsManager;->onApproachingNotifDeleted()V

    .line 325
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    const-string v1, "Approaching notification deleted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private onSilentNotifDeleted()V
    .locals 4

    .prologue
    .line 313
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onSilentNotifDeleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/NotificationsManager;->onSilentNotifDeleted()V

    .line 316
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    const-string v1, "Silent notification deleted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private processStartCommand(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-static {}, Lba/vaktija/android/models/Prayer;->isSummerTime()Z

    move-result v2

    .line 146
    .local v2, "summerTime":Z
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "summer time active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "summerTime"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 149
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v6, "summer time changed"

    invoke-static {v3, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "summerTime"

    .line 151
    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 155
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v6, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v6}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v3, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 162
    const-string v0, ""

    .line 164
    .local v0, "action":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_1
    const-string v3, "STARTED_FROM"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "startedFrom":Ljava/lang/String;
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "started from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v1    # "startedFrom":Ljava/lang/String;
    :cond_2
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "ACTION_SHOW_APPROACHING_NOTIFICATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    const-string v0, "ACTION_SHOW_APPROACHING_NOTIFICATION"

    .line 178
    :cond_3
    const-string v3, "ACTION_DEACTIVATE_SILENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    const-string v0, "ACTION_DEACTIVATE_SILENT"

    .line 181
    :cond_4
    const-string v3, "ACTION_PRAYER_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    const-string v0, "ACTION_PRAYER_CHANGE"

    .line 184
    :cond_5
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_6
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 258
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    .line 259
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 260
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 265
    :goto_1
    return-void

    .line 184
    :sswitch_0
    const-string v6, "ACTION_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v6, "ACTION_BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string v6, "ACTION_TIME_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "ACTION_LOCK_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "ACTION_SILENT_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "ACTION_SILENT_ACTIVATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "ACTION_NOTIF_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "ACTION_ALARM_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "ACTION_NEW_DAY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "ACTION_VOLUME_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "ACTION_SKIP_SILENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "ACTION_PRAYER_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "ACTION_DEACTIVATE_SILENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "ACTION_SHOW_APPROACHING_NOTIFICATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "ACTION_DISABLE_NOTIFS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "ACTION_ENABLE_NOTIFS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "ACTION_APPROACHING_NOTIFICATION_DELETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "ACTION_SILENT_NOTIFICATION_DELETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "ACTION_QUIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v3, 0x12

    goto/16 :goto_0

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetDay()V

    .line 190
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetStoredState()V

    .line 191
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    .line 192
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 193
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    goto/16 :goto_1

    .line 196
    :pswitch_1
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    goto/16 :goto_1

    .line 199
    :pswitch_2
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 200
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 201
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v4}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleSilentActivationEvents()V

    goto/16 :goto_1

    .line 205
    :pswitch_3
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 206
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    goto/16 :goto_1

    .line 209
    :pswitch_4
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 210
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllNotifications()V

    goto/16 :goto_1

    .line 213
    :pswitch_5
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAlarms()V

    goto/16 :goto_1

    .line 216
    :pswitch_6
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetDay()V

    .line 217
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleAllEvents()V

    goto/16 :goto_1

    .line 221
    :pswitch_7
    invoke-virtual {p0}, Lba/vaktija/android/service/VaktijaService;->skipSilent()V

    .line 222
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 223
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 224
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v4}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 227
    :pswitch_8
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetPrevoiusPrayerSkips()V

    .line 228
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetStoredState()V

    .line 229
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 230
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 231
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v4}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 232
    invoke-static {p0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 235
    :pswitch_9
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lba/vaktija/android/service/SilentModeManager;->updateSilentMode(Landroid/content/Context;)V

    .line 236
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 237
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v4}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 240
    :pswitch_a
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/service/NotificationsManager;->showApproachingNotification()V

    goto/16 :goto_1

    .line 243
    :pswitch_b
    invoke-direct {p0, v4}, Lba/vaktija/android/service/VaktijaService;->enableNotificaion(Z)V

    goto/16 :goto_1

    .line 246
    :pswitch_c
    invoke-direct {p0, v5}, Lba/vaktija/android/service/VaktijaService;->enableNotificaion(Z)V

    goto/16 :goto_1

    .line 249
    :pswitch_d
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->onApproachingNotifDeleted()V

    goto/16 :goto_1

    .line 252
    :pswitch_e
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->onSilentNotifDeleted()V

    goto/16 :goto_1

    .line 255
    :pswitch_f
    invoke-direct {p0, p2}, Lba/vaktija/android/service/VaktijaService;->shutdown(I)V

    goto/16 :goto_1

    .line 184
    :sswitch_data_0
    .sparse-switch
        -0x74588cca -> :sswitch_f
        -0x54028574 -> :sswitch_a
        -0x4a84110e -> :sswitch_0
        -0x4570e749 -> :sswitch_c
        -0x34174e3d -> :sswitch_e
        -0x2ce07d75 -> :sswitch_2
        -0x28287a6d -> :sswitch_10
        -0x2576c068 -> :sswitch_9
        -0x1f84ad48 -> :sswitch_12
        -0xffff5e4 -> :sswitch_6
        -0xc217e2d -> :sswitch_4
        0x1aab6e9 -> :sswitch_3
        0x20834bf -> :sswitch_b
        0x1a74a3c6 -> :sswitch_11
        0x201f28a9 -> :sswitch_d
        0x2bb69930 -> :sswitch_5
        0x53be843d -> :sswitch_7
        0x5d303647 -> :sswitch_1
        0x760a2734 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private registerScreenOnReceiver()V
    .locals 3

    .prologue
    .line 296
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "[registerScreenOnReceiver]"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Lba/vaktija/android/service/VaktijaService$1;

    invoke-direct {v1, p0}, Lba/vaktija/android/service/VaktijaService$1;-><init>(Lba/vaktija/android/service/VaktijaService;)V

    iput-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lba/vaktija/android/service/VaktijaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    return-void
.end method

.method private resetDay()V
    .locals 2

    .prologue
    .line 344
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 345
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 346
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lba/vaktija/android/models/Events$PrayerChangedEvent;

    invoke-direct {v1}, Lba/vaktija/android/models/Events$PrayerChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method private resetPrevoiusPrayerSkips()V
    .locals 4

    .prologue
    .line 355
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "[resetPrevoiusPrayerSkips]"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPreviousPrayerIgnoringDate(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 358
    .local v0, "prevPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->resetSkips()V

    .line 360
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method private resetStoredState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v3, "[resetStoredState]"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 105
    .local v1, "p":Lba/vaktija/android/models/Prayer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentNotifDeleted_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 109
    .end local v1    # "p":Lba/vaktija/android/models/Prayer;
    :cond_0
    const-string v2, "actualEventMessageShown"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v2, "silentDisabledByUser"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method private scheduleAlarms()V
    .locals 5

    .prologue
    .line 364
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v4, "[scheduleAlarms]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "prayers":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Prayer;>;"
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 373
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 375
    .local v0, "juma":Lba/vaktija/android/models/Prayer;
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 378
    .end local v0    # "juma":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 379
    .local v2, "v":Lba/vaktija/android/models/Prayer;
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 382
    .end local v2    # "v":Lba/vaktija/android/models/Prayer;
    :cond_1
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    .line 383
    return-void
.end method

.method private scheduleAllEvents()V
    .locals 6

    .prologue
    .line 411
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v4, "[scheduleAllEvents]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, "prayers":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Prayer;>;"
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 422
    .local v0, "juma":Lba/vaktija/android/models/Prayer;
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 423
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 424
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 429
    .end local v0    # "juma":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 430
    .local v2, "v":Lba/vaktija/android/models/Prayer;
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 431
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 432
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 434
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 435
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 462
    .end local v2    # "v":Lba/vaktija/android/models/Prayer;
    :cond_2
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    .line 463
    return-void
.end method

.method private scheduleAllNotifications()V
    .locals 5

    .prologue
    .line 466
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v4, "[scheduleAllEvents]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v1, "prayers":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Prayer;>;"
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 474
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 476
    .local v0, "juma":Lba/vaktija/android/models/Prayer;
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 479
    .end local v0    # "juma":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 480
    .local v2, "v":Lba/vaktija/android/models/Prayer;
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 482
    .end local v2    # "v":Lba/vaktija/android/models/Prayer;
    :cond_1
    return-void
.end method

.method private scheduleNewDayAlarm()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 512
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 513
    .local v2, "mCalendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 514
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 515
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 516
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 518
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 520
    .local v0, "atMillis":J
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new day alarm at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->getNewDayPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 524
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 527
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->getNewDayPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 524
    invoke-virtual {v3, v6, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 528
    return-void
.end method

.method private scheduleSilentActivationEvents()V
    .locals 6

    .prologue
    .line 386
    sget-object v3, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v4, "[scheduleSilentActivationEvents]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "prayers":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Prayer;>;"
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 396
    .local v0, "juma":Lba/vaktija/android/models/Prayer;
    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v3}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 399
    .end local v0    # "juma":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    .line 400
    .local v2, "v":Lba/vaktija/android/models/Prayer;
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 402
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 403
    iget-object v4, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, v4}, Lba/vaktija/android/models/Prayer;->scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 407
    .end local v2    # "v":Lba/vaktija/android/models/Prayer;
    :cond_2
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->scheduleNewDayAlarm()V

    .line 408
    return-void
.end method

.method private shutdown(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 329
    sget-object v1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v2, "[### shutdown]"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/service/NotificationsManager;->cancelNotification()V

    .line 333
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    .line 334
    .local v0, "p":Lba/vaktija/android/models/Prayer;
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0, v2}, Lba/vaktija/android/models/Prayer;->cancelAllAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0

    .line 337
    .end local v0    # "p":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->resetStoredState()V

    .line 338
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 339
    invoke-virtual {p0, p1}, Lba/vaktija/android/service/VaktijaService;->stopSelf(I)V

    .line 340
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    .line 77
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wizard completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "wizardCompleted"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "wizardCompleted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/service/VaktijaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mApp:Lba/vaktija/android/App;

    .line 85
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->acquireWakeLock()V

    .line 89
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->registerScreenOnReceiver()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 502
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {p0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/NotificationsManager;->cancelNotification()V

    .line 505
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lba/vaktija/android/service/VaktijaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 507
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 508
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 116
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onStartCommand] startId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "wizardCompleted"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return v1

    .line 122
    :cond_0
    iget-object v2, p0, Lba/vaktija/android/service/VaktijaService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "USER_CLOSED"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    .local v0, "userQuit":Z
    if-eqz v0, :cond_1

    .line 125
    sget-object v2, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v3, "App is userQuit"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p3}, Lba/vaktija/android/service/VaktijaService;->shutdown(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 131
    invoke-direct {p0}, Lba/vaktija/android/service/VaktijaService;->acquireWakeLock()V

    .line 134
    :cond_2
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 136
    invoke-direct {p0, p1, p3}, Lba/vaktija/android/service/VaktijaService;->processStartCommand(Landroid/content/Intent;I)V

    .line 138
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    const/4 v1, 0x1

    goto :goto_0
.end method

.method skipSilent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 486
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 488
    .local v0, "sunrise":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 489
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 491
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lba/vaktija/android/models/Events$SkipSilentEvent;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 498
    .end local v0    # "sunrise":Lba/vaktija/android/models/Prayer;
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 494
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->save()V

    .line 496
    iget-object v1, p0, Lba/vaktija/android/service/VaktijaService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lba/vaktija/android/models/Events$SkipSilentEvent;

    iget-object v3, p0, Lba/vaktija/android/service/VaktijaService;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lba/vaktija/android/models/Events$SkipSilentEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
