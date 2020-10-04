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
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;
    .locals 1

    .line 42
    sget-object v0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lba/vaktija/android/util/SettingsManager;

    invoke-direct {v0, p0}, Lba/vaktija/android/util/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    .line 45
    :cond_0
    sget-object p0, Lba/vaktija/android/util/SettingsManager;->instance:Lba/vaktija/android/util/SettingsManager;

    return-object p0
.end method


# virtual methods
.method public getSettings()Ljava/lang/String;
    .locals 7

    .line 53
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x2

    .line 58
    invoke-virtual {v0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x3

    .line 59
    invoke-virtual {v0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x4

    .line 60
    invoke-virtual {v0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x5

    .line 61
    invoke-virtual {v0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x6

    .line 62
    invoke-virtual {v0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getSettingsAsJson()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v0, "unknown"

    .line 68
    :try_start_0
    iget-object v4, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 69
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 70
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 72
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v4, -0x1

    .line 75
    :goto_0
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v6, "appVersionName"

    .line 77
    invoke-virtual {v5, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "appVersionCode"

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "alarmToneUri"

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "notificationToneUri"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "dhuhrTime"

    const-string v6, "0"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const/16 v4, 0x6b

    const-string v6, "selectedLocation"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "separateJumaSettings"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "gaEnabled"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "statusbarNotification"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "useVaktijaAlarmTone"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "useVaktijaNotifTone"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "showDate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "prayersSettings"

    .line 90
    invoke-virtual {v5, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 92
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreSettings(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;,
            Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;
        }
    .end annotation

    const-string v0, "showDate"

    const-string v1, "useVaktijaNotifTone"

    const-string v2, "useVaktijaAlarmTone"

    const-string v3, "statusbarNotification"

    const-string v4, "gaEnabled"

    const-string v5, "separateJumaSettings"

    const-string v6, "selectedLocation"

    const-string v7, "dhuhrTime"

    const-string v8, ""

    const-string v9, "notificationToneUri"

    const-string v10, "alarmToneUri"

    .line 97
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    iget-object v12, p0, Lba/vaktija/android/util/SettingsManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 104
    :try_start_0
    const-class v13, Lcom/google/gson/JsonObject;

    invoke-virtual {v11, p1, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string v11, "appVersionName"

    .line 105
    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    const-string v11, "appVersionCode"

    .line 106
    invoke-virtual {p1, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v11
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v13, 0x18

    if-lt v11, v13, :cond_1

    .line 113
    :try_start_1
    invoke-virtual {p1, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v11

    .line 116
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 117
    invoke-interface {v12, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v12, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    :goto_0
    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    invoke-interface {v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    invoke-interface {v12, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "prayersSettings"

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->save()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/util/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->save()V

    .line 138
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 109
    :cond_1
    new-instance p1, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;

    invoke-direct {p1}, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;-><init>()V

    throw p1
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :catch_1
    new-instance p1, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;

    invoke-direct {p1}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;-><init>()V

    throw p1

    .line 141
    :catch_2
    new-instance p1, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;

    invoke-direct {p1}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
