.class public Lba/vaktija/android/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final VAKAT_PREFS:Ljava/lang/String; = "VAKAT_PREFS"

.field public static app:Lba/vaktija/android/App;

.field public static prefs:Landroid/content/SharedPreferences;

.field public static robotoCondensedLight:Landroid/graphics/Typeface;

.field public static robotoCondensedRegular:Landroid/graphics/Typeface;

.field public static vakatPrefs:Landroid/content/SharedPreferences;


# instance fields
.field public db:Lba/vaktija/android/db/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lba/vaktija/android/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private applySettingsChanges()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 159
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "SILENT_VIBRATION_SETTINGS_ADJUSTED"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 161
    .local v2, "silentVibrationSettingsAdjusted":Z
    if-nez v2, :cond_0

    .line 163
    :try_start_0
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    .line 164
    .local v1, "prayer":Lba/vaktija/android/models/Prayer;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lba/vaktija/android/models/Prayer;->setSilentVibrationOff(Z)V

    .line 165
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1    # "prayer":Lba/vaktija/android/models/Prayer;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "silentVibrationSettingsAdjusted":Z
    :cond_0
    :goto_1
    return-void

    .line 167
    .restart local v2    # "silentVibrationSettingsAdjusted":Z
    :cond_1
    :try_start_1
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "SILENT_VIBRATION_SETTINGS_ADJUSTED"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkAlarmTone()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 141
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "useVaktijaAlarmTone"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "alarmToneUri"

    .line 144
    invoke-static {p0, v5}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "selectedAlarmTone":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 149
    .local v0, "alarmRingtone":Landroid/media/Ringtone;
    if-nez v0, :cond_0

    .line 150
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "useVaktijaAlarmTone"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    .end local v0    # "alarmRingtone":Landroid/media/Ringtone;
    .end local v1    # "selectedAlarmTone":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkNotifTone()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 127
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "useVaktijaNotifTone"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "notificationToneUri"

    const/4 v4, 0x0

    .line 129
    invoke-static {p0, v4}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "selectedNotifTone":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 134
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-nez v0, :cond_0

    .line 135
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "useVaktijaNotifTone"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .end local v1    # "selectedNotifTone":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    const/4 v3, 0x3

    invoke-static {v3}, Lba/vaktija/android/util/FileLog;->newLine(I)V

    .line 51
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    const-string v4, "[>>> onCreate <<<]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lba/vaktija/android/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lba/vaktija/android/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 55
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    sput-object p0, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    .line 64
    new-instance v3, Lba/vaktija/android/db/Database;

    invoke-direct {v3, p0}, Lba/vaktija/android/db/Database;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    .line 68
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "selectedLocation"

    const/16 v5, 0x6b

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "locationId":I
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "locationName"

    iget-object v5, p0, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    invoke-virtual {v5, v1}, Lba/vaktija/android/db/Database;->getLocationName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-virtual {p0}, Lba/vaktija/android/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/RobotoCondensed-Light.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lba/vaktija/android/App;->robotoCondensedLight:Landroid/graphics/Typeface;

    .line 74
    invoke-virtual {p0}, Lba/vaktija/android/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/RobotoCondensed-Regular.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    .line 76
    const-string v3, "VAKAT_PREFS"

    invoke-virtual {p0, v3, v6}, Lba/vaktija/android/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    .line 78
    new-instance v3, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v3}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    const-string v4, "fonts/RobotoCondensed-Regular.ttf"

    .line 79
    invoke-virtual {v3, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v3

    const v4, 0x7f010001

    .line 80
    invoke-virtual {v3, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v3

    .line 78
    invoke-static {v3}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 84
    invoke-direct {p0}, Lba/vaktija/android/App;->checkNotifTone()V

    .line 85
    invoke-direct {p0}, Lba/vaktija/android/App;->checkAlarmTone()V

    .line 86
    invoke-direct {p0}, Lba/vaktija/android/App;->applySettingsChanges()V

    .line 88
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.VERSION.SDK_INT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.DEVICE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.BOARD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.BRAND="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.MODEL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v3, Lba/vaktija/android/App;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.PRODUCT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 56
    .end local v1    # "locationId":I
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public sendScreenView(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method
