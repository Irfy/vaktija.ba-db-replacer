.class public Lba/vaktija/android/service/SilentModeManager;
.super Ljava/lang/Object;
.source "SilentModeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lba/vaktija/android/service/SilentModeManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lba/vaktija/android/service/SilentModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "alarm"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v0, "notification"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->notificationManager:Landroid/app/NotificationManager;

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;
    .locals 1

    .line 38
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lba/vaktija/android/service/SilentModeManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/SilentModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    .line 41
    :cond_0
    sget-object p0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    return-object p0
.end method

.method private isVibrationOff()Z
    .locals 8

    .line 133
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 134
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 138
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    .line 143
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 144
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    if-gt v5, v1, :cond_0

    if-ge v1, v2, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 151
    :goto_1
    sget-object v5, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "standard vibration off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    return v3

    .line 155
    :cond_3
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    if-nez v0, :cond_6

    .line 156
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v2, v0

    if-gt v2, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move v4, v3

    .line 167
    :cond_6
    :goto_3
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alternative vibration off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public isSilentOn()Z
    .locals 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 46
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 48
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSunriseSilentModeOn()Z
    .locals 5

    .line 203
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 204
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 207
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v4

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v4, v0

    if-gt v4, v1, :cond_1

    const/4 v2, 0x1

    .line 219
    :cond_1
    :goto_0
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alternative silent on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public silentSetByApp()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "silentByApp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public silentShoudBeActive()Z
    .locals 7

    .line 175
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 176
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 179
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    .line 184
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 185
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    if-gt v0, v1, :cond_2

    if-ge v1, v2, :cond_2

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    :goto_1
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard silent on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    return v3

    .line 197
    :cond_3
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v0

    return v0
.end method

.method public updateSilentMode(Landroid/content/Context;)V
    .locals 11

    .line 59
    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "silentByApp"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 61
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v4

    .line 62
    iget-object v5, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 64
    :goto_0
    sget-object v8, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "silent set by app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v8, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "silent should be on: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v8, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceInSilentMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    if-eqz v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x18

    const-string v8, "COMMING_FROM_SILENT"

    const-string v9, "goingSilent"

    if-eqz v4, :cond_7

    .line 73
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    invoke-interface {v1, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_2

    .line 80
    sget-object v1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object v1, v1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    goto :goto_2

    .line 85
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    .line 86
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 87
    sget-object v1, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    const-string v2, "set ringer mode to RINGER_MODE_VIBRATE"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_3
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    invoke-direct {p0}, Lba/vaktija/android/service/SilentModeManager;->isVibrationOff()Z

    move-result v2

    xor-int/2addr v2, v7

    .line 89
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 93
    sget-object v1, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ringer mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p0}, Lba/vaktija/android/service/SilentModeManager;->isVibrationOff()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "RINGER_MODE_SILENT"

    goto :goto_1

    :cond_4
    const-string v3, "RINGER_MODE_VIBRATE"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 102
    :cond_6
    iget-object v1, p0, Lba/vaktija/android/service/SilentModeManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, v1}, Lba/vaktija/android/models/Prayer;->scheduleSilentOffAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_b

    .line 107
    iget-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    .line 109
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eq p1, v6, :cond_8

    const/4 v3, 0x1

    .line 112
    :cond_8
    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_a

    .line 116
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 117
    iget-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v7}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 118
    sget-object p1, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    const-string v0, "set interruption filter to INTERRUPTION_FILTER_ALL"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_9
    sget-object p1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SILENT_BLOCKED_BY_DND_REVOKE"

    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 123
    :cond_a
    iget-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 126
    :goto_3
    sget-object p1, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    const-string v0, "set ringer mode to RINGER_MODE_NORMAL"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method
