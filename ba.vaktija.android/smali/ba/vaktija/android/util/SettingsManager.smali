.class public Lba/vaktija/android/util/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;,
        Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;
    }
.end annotation


# static fields
.field private static final APP_VERSION_CODE:Ljava/lang/String; = "appVersionCode"

.field private static final APP_VERSION_NAME:Ljava/lang/String; = "appVersionName"

.field private static final MIN_VERSION_CODE:I = 0x18

.field private static final PRAYERS_SETTINGS:Ljava/lang/String; = "prayersSettings"

.field private static instance:Lba/vaktija/android/util/SettingsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lba/vaktija/android/util/SettingsManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/util/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    .line 40
    :cond_0
    sget-object v0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    return-object v0
.end method


# virtual methods
.method public getSettings()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 50
    iget-object v7, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    .line 52
    .local v5, "schedule":Lba/vaktija/android/models/PrayersSchedule;
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 53
    .local v4, "prayersSettings":Lcom/google/gson/JsonArray;
    invoke-virtual {v5, v12}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 54
    invoke-virtual {v5, v11}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 55
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 56
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 57
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 58
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 59
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 61
    const-string v1, "unknown"

    .line 62
    .local v1, "appVersionName":Ljava/lang/String;
    const/4 v0, -0x1

    .line 65
    .local v0, "appVersionCode":I
    :try_start_0
    iget-object v7, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 66
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 67
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 74
    .local v6, "settings":Lcom/google/gson/JsonObject;
    const-string v7, "appVersionName"

    invoke-virtual {v6, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v7, "appVersionCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 76
    const-string v7, "alarmToneUri"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "alarmToneUri"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "notificationToneUri"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "notificationToneUri"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "dhuhrTime"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "dhuhrTime"

    const-string v10, "0"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "selectedLocation"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "selectedLocation"

    const/16 v10, 0x6b

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 80
    const-string v7, "separateJumaSettings"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "separateJumaSettings"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    const-string v7, "gaEnabled"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "gaEnabled"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 82
    const-string v7, "statusbarNotification"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "statusbarNotification"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    const-string v7, "useVaktijaAlarmTone"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "useVaktijaAlarmTone"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v7, "useVaktijaNotifTone"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "useVaktijaNotifTone"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    const-string v7, "showDate"

    iget-object v8, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "showDate"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v7, "prayersSettings"

    invoke-virtual {v6, v7, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 89
    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 68
    .end local v6    # "settings":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public restoreSettings(Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;,
            Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 98
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v10, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-class v10, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonObject;

    .line 102
    .local v6, "settings":Lcom/google/gson/JsonObject;
    const-string v10, "appVersionName"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "versionName":Ljava/lang/String;
    const-string v10, "appVersionCode"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    .line 105
    .local v8, "versionCode":I
    const/16 v10, 0x18

    if-ge v8, v10, :cond_0

    .line 106
    new-instance v10, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;

    invoke-direct {v10}, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;-><init>()V

    throw v10
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    .end local v6    # "settings":Lcom/google/gson/JsonObject;
    .end local v8    # "versionCode":I
    .end local v9    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "jse":Lcom/google/gson/JsonSyntaxException;
    new-instance v10, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;

    invoke-direct {v10}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;-><init>()V

    throw v10

    .line 110
    .end local v3    # "jse":Lcom/google/gson/JsonSyntaxException;
    .restart local v6    # "settings":Lcom/google/gson/JsonObject;
    .restart local v8    # "versionCode":I
    .restart local v9    # "versionName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v10, "alarmToneUri"

    const-string v11, "alarmToneUri"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v10, "notificationToneUri"

    const-string v11, "notificationToneUri"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 118
    :goto_0
    :try_start_2
    const-string v10, "dhuhrTime"

    const-string v11, "dhuhrTime"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v10, "selectedLocation"

    const-string v11, "selectedLocation"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v10, "separateJumaSettings"

    const-string v11, "separateJumaSettings"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v10, "gaEnabled"

    const-string v11, "gaEnabled"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v10, "statusbarNotification"

    const-string v11, "statusbarNotification"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v10, "useVaktijaAlarmTone"

    const-string v11, "useVaktijaAlarmTone"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v10, "useVaktijaNotifTone"

    const-string v11, "useVaktijaNotifTone"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v10, "showDate"

    const-string v11, "showDate"

    invoke-virtual {v6, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v10, "prayersSettings"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 129
    .local v5, "prayersSettings":Lcom/google/gson/JsonArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v10, 0x5

    if-gt v2, v10, :cond_1

    .line 130
    iget-object v10, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v10

    invoke-virtual {v10, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v10

    invoke-virtual {v5, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v10, v11}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    move-result-object v10

    invoke-virtual {v10}, Lba/vaktija/android/models/Prayer;->save()V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "i":I
    .end local v5    # "prayersSettings":Lcom/google/gson/JsonArray;
    :catch_1
    move-exception v7

    .line 113
    .local v7, "uoe":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 114
    const-string v10, "alarmToneUri"

    const-string v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v10, "notificationToneUri"

    const-string v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 139
    .end local v6    # "settings":Lcom/google/gson/JsonObject;
    .end local v7    # "uoe":Ljava/lang/UnsupportedOperationException;
    .end local v8    # "versionCode":I
    .end local v9    # "versionName":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 140
    .local v4, "npe":Ljava/lang/NullPointerException;
    new-instance v10, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;

    invoke-direct {v10}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;-><init>()V

    throw v10

    .line 133
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v5    # "prayersSettings":Lcom/google/gson/JsonArray;
    .restart local v6    # "settings":Lcom/google/gson/JsonObject;
    .restart local v8    # "versionCode":I
    .restart local v9    # "versionName":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v10, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v5, v11}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v10, v11}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    move-result-object v10

    invoke-virtual {v10}, Lba/vaktija/android/models/Prayer;->save()V

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    return-void
.end method
