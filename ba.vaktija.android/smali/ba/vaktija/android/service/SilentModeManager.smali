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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lba/vaktija/android/service/SilentModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lba/vaktija/android/service/SilentModeManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/SilentModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    .line 37
    :cond_0
    sget-object v0, Lba/vaktija/android/service/SilentModeManager;->instance:Lba/vaktija/android/service/SilentModeManager;

    return-object v0
.end method

.method private isVibrationOff()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 119
    iget-object v9, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v9

    invoke-virtual {v9}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    .line 120
    .local v2, "currentVakat":Lba/vaktija/android/models/Prayer;
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 121
    .local v1, "currentTime":I
    const/4 v5, 0x0

    .line 122
    .local v5, "standardVibrationOff":Z
    const/4 v0, 0x0

    .line 124
    .local v0, "alternativeVibrationOff":Z
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v9

    if-nez v9, :cond_0

    .line 125
    const/4 v5, 0x0

    .line 137
    :goto_0
    sget-object v9, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "standard vibration off: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz v5, :cond_4

    .line 155
    :goto_1
    return v7

    .line 127
    :cond_0
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v9

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    add-int v4, v9, v10

    .line 129
    .local v4, "silentTimeout":I
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    .line 130
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v9

    if-gt v9, v1, :cond_1

    if-ge v1, v4, :cond_1

    move v5, v7

    :goto_2
    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_2

    .line 133
    :cond_2
    if-ge v1, v4, :cond_3

    move v5, v7

    :goto_3
    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_3

    .line 141
    .end local v4    # "silentTimeout":I
    :cond_4
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    if-nez v9, :cond_5

    .line 142
    iget-object v9, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v9

    invoke-virtual {v9, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v6

    .line 144
    .local v6, "sunrise":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v6}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v9

    if-nez v9, :cond_6

    .line 145
    const/4 v0, 0x0

    .line 153
    .end local v6    # "sunrise":Lba/vaktija/android/models/Prayer;
    :cond_5
    :goto_4
    sget-object v7, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alternative vibration off: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v0

    .line 155
    goto :goto_1

    .line 148
    .restart local v6    # "sunrise":Lba/vaktija/android/models/Prayer;
    :cond_6
    invoke-virtual {v6}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v9

    invoke-virtual {v6}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    add-int v3, v9, v10

    .line 150
    .local v3, "silentActivationTime":I
    if-gt v3, v1, :cond_7

    move v0, v7

    :goto_5
    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_5
.end method


# virtual methods
.method public disableSilent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentByApp"

    .line 46
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "goingSilent"

    .line 47
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "COMMING_FROM_SILENT"

    const/4 v2, 0x1

    .line 48
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 51
    return-void
.end method

.method public isSilentOn()Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSunriseSilentModeOn()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 189
    iget-object v6, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v6

    invoke-virtual {v6}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    .line 190
    .local v2, "currentVakat":Lba/vaktija/android/models/Prayer;
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 191
    .local v1, "currentTime":I
    const/4 v0, 0x0

    .line 193
    .local v0, "alternativeSilentOn":Z
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v6

    if-nez v6, :cond_1

    .line 194
    iget-object v6, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v6

    invoke-virtual {v6, v5}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    .line 196
    .local v4, "sunrise":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 205
    .end local v4    # "sunrise":Lba/vaktija/android/models/Prayer;
    :cond_1
    :goto_0
    sget-object v5, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alternative silent on: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v0

    .line 200
    .restart local v4    # "sunrise":Lba/vaktija/android/models/Prayer;
    :cond_2
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v6

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int v3, v6, v7

    .line 202
    .local v3, "silentActivationTime":I
    if-gt v3, v1, :cond_3

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public silentSetByApp()Z
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "silentByApp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public silentShoudBeActive()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    iget-object v6, p0, Lba/vaktija/android/service/SilentModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v6

    invoke-virtual {v6}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 162
    .local v1, "currentVakat":Lba/vaktija/android/models/Prayer;
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v0

    .line 163
    .local v0, "currentTime":I
    const/4 v3, 0x0

    .line 165
    .local v3, "standardSilentOn":Z
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    :cond_0
    const/4 v3, 0x0

    .line 178
    :goto_0
    sget-object v5, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "standard silent on: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz v3, :cond_5

    .line 183
    :goto_1
    return v4

    .line 168
    :cond_1
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v6

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int v2, v6, v7

    .line 170
    .local v2, "silentTimeout":I
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 171
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v6

    if-gt v6, v0, :cond_2

    if-ge v0, v2, :cond_2

    move v3, v4

    :goto_2
    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_2

    .line 174
    :cond_3
    if-ge v0, v2, :cond_4

    move v3, v4

    :goto_3
    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_3

    .line 183
    .end local v2    # "silentTimeout":I
    :cond_5
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v4

    goto :goto_1
.end method

.method public updateSilentMode(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 61
    .local v0, "currentVakat":Lba/vaktija/android/models/Prayer;
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "silentByApp"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 62
    .local v3, "silentSetByApp":Z
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v4

    .line 63
    .local v4, "silentShouldBeActive":Z
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eq v7, v10, :cond_1

    move v1, v5

    .line 65
    .local v1, "deviceInSilentMode":Z
    :goto_0
    sget-object v7, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "silent set by app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v7, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "silent should be on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v7, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceInSilentMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 114
    :cond_0
    :goto_1
    return-void

    .end local v1    # "deviceInSilentMode":Z
    :cond_1
    move v1, v6

    .line 63
    goto :goto_0

    .line 73
    .restart local v1    # "deviceInSilentMode":Z
    :cond_2
    if-eqz v4, :cond_6

    .line 74
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "silentByApp"

    .line 75
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "goingSilent"

    .line 76
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "COMMING_FROM_SILENT"

    .line 77
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 78
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_3

    .line 82
    iget-object v6, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 83
    sget-object v5, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    const-string v6, "set ringer mode to RINGER_MODE_VIBRATE"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_2
    invoke-virtual {p0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    iget-object v5, p0, Lba/vaktija/android/service/SilentModeManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, v5}, Lba/vaktija/android/models/Prayer;->scheduleSilentOffAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_1

    .line 85
    :cond_3
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    invoke-direct {p0}, Lba/vaktija/android/service/SilentModeManager;->isVibrationOff()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    :goto_3
    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 89
    sget-object v6, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set ringer mode to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    invoke-direct {p0}, Lba/vaktija/android/service/SilentModeManager;->isVibrationOff()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "RINGER_MODE_SILENT"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v6, v5}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v6, v5

    .line 86
    goto :goto_3

    .line 90
    :cond_5
    const-string v5, "RINGER_MODE_VIBRATE"

    goto :goto_4

    .line 101
    :cond_6
    if-eqz v3, :cond_0

    .line 103
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 105
    .local v2, "ringerMode":I
    iget-object v7, p0, Lba/vaktija/android/service/SilentModeManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "silentByApp"

    .line 106
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "goingSilent"

    .line 107
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "COMMING_FROM_SILENT"

    if-eq v2, v10, :cond_7

    .line 108
    :goto_5
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 109
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    iget-object v5, p0, Lba/vaktija/android/service/SilentModeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 112
    sget-object v5, Lba/vaktija/android/service/SilentModeManager;->TAG:Ljava/lang/String;

    const-string v6, "set ringer mode to RINGER_MODE_NORMAL"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v5, v6

    .line 107
    goto :goto_5
.end method
