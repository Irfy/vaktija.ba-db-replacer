.class public Lba/vaktija/android/models/Prayer;
.super Ljava/lang/Object;
.source "Prayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field protected static final ALARM_PENDING_INTENT_ID:I = 0x350b

.field public static final ASR:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lba/vaktija/android/models/Prayer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHUHR:I = 0x2

.field public static final FAJR:I = 0x0

.field public static final FIELD_ALARM:Ljava/lang/String; = "alarm"

.field public static final FIELD_ALARM_ON:Ljava/lang/String; = "alarmOn"

.field public static final FIELD_ALARM_ON_MINS:Ljava/lang/String; = "alarmMins"

.field public static final FIELD_ALARM_SOUND:Ljava/lang/String; = "alarmSound"

.field public static final FIELD_NOTIF:Ljava/lang/String; = "notif"

.field public static final FIELD_NOTIF_ON:Ljava/lang/String; = "notifOn"

.field public static final FIELD_NOTIF_ON_MINS:Ljava/lang/String; = "notifTime"

.field public static final FIELD_NOTIF_SOUND:Ljava/lang/String; = "notifSound"

.field public static final FIELD_NOTIF_SOUND_ON:Ljava/lang/String; = "notifSoundOn"

.field public static final FIELD_NOTIF_VIBRO_ON:Ljava/lang/String; = "notifVibroOn"

.field public static final FIELD_SILENT:Ljava/lang/String; = "silent"

.field public static final FIELD_SILENT_ON:Ljava/lang/String; = "silentOn"

.field public static final FIELD_SILENT_TIMEOUT:Ljava/lang/String; = "silentTimeout"

.field public static final FIELD_SILENT_VIBRO_OFF:Ljava/lang/String; = "silentVibroOff"

.field public static final FIELD_SKIP_NEXT_ALARM:Ljava/lang/String; = "skipNextAlarm"

.field public static final FIELD_SKIP_NEXT_NOTIF:Ljava/lang/String; = "skipNextNotif"

.field public static final FIELD_SKIP_NEXT_SILENT:Ljava/lang/String; = "skipNextSilent"

.field public static final ISHA:I = 0x5

.field public static final JUMA:I = 0x6

.field public static final MAGHRIB:I = 0x4

.field protected static final NOTIF_PENDING_INTET_ID:I = 0x6068

.field protected static final PRAYER_CHANGE_PENDING_INTENT_ID:I = 0x15194

.field protected static final SILENT_OFF_PENDING_INTENT_ID:I = 0x17cfb

.field protected static final SILENT_ON_PENDING_INTENT_ID:I = 0x17ae8

.field public static final SUNRISE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected alarmMins:I

.field protected alarmOn:Z

.field protected alarmSound:Ljava/lang/String;

.field protected id:I

.field protected mCalendar:Ljava/util/Calendar;

.field protected mDateFormat:Ljava/text/SimpleDateFormat;

.field protected notifLedOn:Z

.field protected notifMins:I

.field protected notifOn:Z

.field protected notifSound:Ljava/lang/String;

.field protected notifSoundOn:Z

.field protected notifVibroOn:Z

.field protected prayerTime:I

.field protected silentOn:Z

.field protected silentVibrationOff:Z

.field protected skipNextAlarm:Z

.field protected skipNextNotif:Z

.field protected skipNextSilent:Z

.field protected soundOnMins:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Lba/vaktija/android/models/Prayer$1;

    invoke-direct {v0}, Lba/vaktija/android/models/Prayer$1;-><init>()V

    sput-object v0, Lba/vaktija/android/models/Prayer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 84
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH\'h\' mm\'m\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 141
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "prayerTimeId"    # I

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 84
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH\'h\' mm\'m\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 144
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[<init> id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput p1, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    .line 146
    iput p2, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 148
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initCalendar()V

    .line 150
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initFromPreference()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 84
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH\'h\' mm\'m\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p0, v0}, Lba/vaktija/android/models/Prayer;->setNextNotifOff(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_9
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    .line 121
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initCalendar()V

    .line 123
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initFromPreference()V

    .line 124
    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v0, v2

    .line 104
    goto :goto_1

    :cond_2
    move v0, v2

    .line 105
    goto :goto_2

    :cond_3
    move v0, v2

    .line 106
    goto :goto_3

    :cond_4
    move v0, v2

    .line 110
    goto :goto_4

    :cond_5
    move v0, v2

    .line 113
    goto :goto_5

    :cond_6
    move v0, v2

    .line 114
    goto :goto_6

    :cond_7
    move v0, v2

    .line 115
    goto :goto_7

    :cond_8
    move v0, v2

    .line 116
    goto :goto_8

    :cond_9
    move v1, v2

    .line 118
    goto :goto_9
.end method

.method public static getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prayer"    # Lba/vaktija/android/models/Prayer;

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "activateAlarm":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAUNCH_ALARM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "EXTRA_PRAYER_ID"

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const/16 v1, 0x350b

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getNextVakatTitle(I)Ljava/lang/String;
    .locals 5
    .param p0, "currentVakatId"    # I

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 216
    .local v0, "friday":Z
    :goto_0
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "separateJumaSettings"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 218
    .local v1, "respectJuma":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-ne p0, v2, :cond_1

    .line 219
    const-string v2, "D\u017euma"

    .line 237
    :goto_1
    return-object v2

    .line 215
    .end local v0    # "friday":Z
    .end local v1    # "respectJuma":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    .restart local v0    # "friday":Z
    .restart local v1    # "respectJuma":Z
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 237
    const-string v2, ""

    goto :goto_1

    .line 223
    :pswitch_0
    const-string v2, "Izlazak Sunca"

    goto :goto_1

    .line 225
    :pswitch_1
    const-string v2, "Podne"

    goto :goto_1

    .line 228
    :pswitch_2
    const-string v2, "Ikindija"

    goto :goto_1

    .line 230
    :pswitch_3
    const-string v2, "Ak\u0161am"

    goto :goto_1

    .line 232
    :pswitch_4
    const-string v2, "Jacija"

    goto :goto_1

    .line 234
    :pswitch_5
    const-string v2, "Zora"

    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vakatId"    # I

    .prologue
    .line 199
    const-string v1, "NotifPendingIntent"

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "notifIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SHOW_APPROACHING_NOTIFICATION_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/16 v1, 0x6068

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vakatId"    # I

    .prologue
    .line 154
    const-string v1, "PrayerChangePendingIntent"

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "vakatChangeIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_PRAYER_CHANGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const v1, 0x15194

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 176
    const-string v1, "SilentOffPendingIntent"

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "silentOffIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DEACTIVATE_SILENT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const v1, 0x17cfb

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 165
    const-string v1, "SilentOnPendingIntent"

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "silentOnIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SILENT_ACTIVATED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const v1, 0x17ae8

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static isSummerTime()Z
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public anyEventsOn()Z
    .locals 1

    .prologue
    .line 899
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAllAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;

    .prologue
    .line 584
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelling all alarms for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 587
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 588
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 589
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 590
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmActivationTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 847
    iget-object v3, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    sub-long v0, v4, v6

    .line 849
    .local v0, "alarmOnAtMillis":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 850
    .local v2, "d":Ljava/util/Date;
    iget-object v3, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAlarmMins()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    return v0
.end method

.method public getAlarmSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getHrsString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 506
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v3

    div-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    return v0
.end method

.method public getMinsString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 511
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getNotifMins()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    return v0
.end method

.method public getNotificationTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 855
    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    sub-long v2, v4, v6

    .line 857
    .local v2, "notifOnAtMillis":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 858
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrayerTime()I
    .locals 5

    .prologue
    .line 478
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "dhuhrTime"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 479
    .local v1, "timeNormalized":Z
    invoke-static {}, Lba/vaktija/android/models/Prayer;->isSummerTime()Z

    move-result v0

    .line 481
    .local v0, "summerTime":Z
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    if-eqz v1, :cond_2

    .line 482
    if-eqz v0, :cond_1

    const v2, 0xb6d0

    .line 485
    :goto_0
    return v2

    .line 482
    :cond_1
    const v2, 0xa8c0

    goto :goto_0

    .line 485
    :cond_2
    iget v2, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    goto :goto_0
.end method

.method public getPrayerTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawPrayerTime()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    return v0
.end method

.method public getSettingsAsJson()Lcom/google/gson/JsonElement;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 128
    .local v0, "settings":Lcom/google/gson/JsonObject;
    const-string v1, "alarmOn"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    const-string v1, "silentOn"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    const-string v1, "notifOn"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 131
    const-string v1, "alarmMins"

    iget v2, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 132
    const-string v1, "silentTimeout"

    iget v2, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 133
    const-string v1, "notifSoundOn"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    const-string v1, "notifVibroOn"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    const-string v1, "notifTime"

    iget v2, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 136
    const-string v1, "silentVibroOff"

    iget-boolean v2, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    return-object v0
.end method

.method public getShortTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    packed-switch v0, :pswitch_data_0

    .line 420
    const-string v0, "No title"

    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    const-string v0, "Zora"

    goto :goto_0

    .line 407
    :pswitch_1
    const-string v0, "I. Sunca"

    goto :goto_0

    .line 409
    :pswitch_2
    const-string v0, "Podne"

    goto :goto_0

    .line 411
    :pswitch_3
    const-string v0, "Ikindija"

    goto :goto_0

    .line 413
    :pswitch_4
    const-string v0, "Ak\u0161am"

    goto :goto_0

    .line 415
    :pswitch_5
    const-string v0, "Jacija"

    goto :goto_0

    .line 417
    :pswitch_6
    const-string v0, "D\u017euma"

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getSilentDeactivationTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 863
    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 865
    .local v2, "soundOnFutureTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 866
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSoundOffMins()I
    .locals 2

    .prologue
    .line 892
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 893
    iget v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    .line 895
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoundOnMins()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    packed-switch v0, :pswitch_data_0

    .line 399
    const-string v0, "No title"

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    const-string v0, "Zora"

    goto :goto_0

    .line 386
    :pswitch_1
    const-string v0, "Izlazak Sunca"

    goto :goto_0

    .line 388
    :pswitch_2
    const-string v0, "Podne"

    goto :goto_0

    .line 390
    :pswitch_3
    const-string v0, "Ikindija"

    goto :goto_0

    .line 392
    :pswitch_4
    const-string v0, "Ak\u0161am"

    goto :goto_0

    .line 394
    :pswitch_5
    const-string v0, "Jacija"

    goto :goto_0

    .line 396
    :pswitch_6
    const-string v0, "D\u017euma"

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected initCalendar()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    .line 243
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 244
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 245
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 246
    return-void
.end method

.method public initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;
    .locals 1
    .param p1, "data"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 287
    const-string v0, "skipNextAlarm"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "skipNextAlarm"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 290
    :cond_0
    const-string v0, "skipNextNotif"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const-string v0, "skipNextNotif"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    .line 293
    :cond_1
    const-string v0, "skipNextSilent"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "skipNextSilent"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 296
    :cond_2
    const-string v0, "alarmOn"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    .line 297
    const-string v0, "silentOn"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    .line 298
    const-string v0, "notifOn"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    .line 300
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    .line 301
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    .line 302
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    .line 304
    const-string v0, "notifSound"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "notifSound"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 307
    :cond_3
    const-string v0, "alarmSound"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const-string v0, "alarmSound"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 310
    :cond_4
    const-string v0, "notifSoundOn"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 311
    const-string v0, "notifVibroOn"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 312
    const-string v0, "silentVibroOff"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    .line 314
    return-object p0
.end method

.method protected initFromPreference()V
    .locals 7

    .prologue
    .line 251
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 253
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 254
    .local v1, "defData":Lcom/google/gson/JsonObject;
    const-string v4, "skipNextAlarm"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "skipNextAlarm"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    const-string v4, "skipNextNotif"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "skipNextNotif"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 256
    const-string v4, "skipNextSilent"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "skipNextSilent"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 258
    const-string v4, "alarmOn"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "alarmOn"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    const-string v4, "notifOn"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "notifOn"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 260
    const-string v4, "silentOn"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "silentOn"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    const-string v4, "alarmMins"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "alarmMins"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 263
    const-string v4, "silentTimeout"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "silentTimeout"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 264
    const-string v4, "notifTime"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "notifTime"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 266
    const-string v4, "notifSound"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v4, "alarmSound"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "notifSoundOn"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "notifSoundOn"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 270
    const-string v4, "notifVibroOn"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "notifVibroOn"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 271
    const-string v4, "silentVibroOff"

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v6, "silentVibroOff"

    invoke-static {v5, v6}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    sget-object v4, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    iget v5, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "saved":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    :cond_0
    const-class v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 282
    .local v0, "data":Lcom/google/gson/JsonObject;
    invoke-virtual {p0, v0}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    .line 284
    return-void
.end method

.method public isAlarmOn()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    return v0
.end method

.method public isNotifOn()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    return v0
.end method

.method public isNotifSoundOn()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    return v0
.end method

.method public isNotifVibroOn()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    return v0
.end method

.method public isSilentOn()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    return v0
.end method

.method public isSilentVibrationOff()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    return v0
.end method

.method public isSummerTime(II)Z
    .locals 6
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 870
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 872
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 873
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 875
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public resetSkips()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 903
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    .line 904
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 905
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 906
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 907
    return-void
.end method

.method public save()V
    .locals 12

    .prologue
    .line 318
    sget-object v1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 320
    .local v4, "start":J
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 322
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v1, "skipNextAlarm"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const-string v1, "skipNextSilent"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 324
    const-string v1, "skipNextNotif"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string v1, "alarmOn"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    const-string v1, "silentOn"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 328
    const-string v1, "notifOn"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    const-string v1, "alarmMins"

    iget v6, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 331
    const-string v1, "notifTime"

    iget v6, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 332
    const-string v1, "silentTimeout"

    iget v6, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 334
    const-string v1, "alarmSound"

    iget-object v6, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "notifSound"

    iget-object v6, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "notifSoundOn"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 338
    const-string v1, "notifVibroOn"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 339
    const-string v1, "silentVibroOff"

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v1, v6, :cond_0

    .line 342
    sget-object v1, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v6, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 348
    .local v2, "end":J
    sget-object v1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save data done in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " us"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 344
    .end local v2    # "end":J
    :cond_0
    sget-object v1, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v6, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 13
    .param p1, "conext"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v10, 0xc

    const/4 v12, 0x0

    .line 652
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 654
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v7

    .line 655
    .local v7, "prayerH":I
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v8

    .line 657
    .local v8, "prayerM":I
    const/16 v9, 0xb

    invoke-virtual {v1, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 658
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 659
    const/16 v9, 0xd

    invoke-virtual {v1, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 661
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v1, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 663
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 665
    .local v2, "alarmOnAtMillis":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 666
    .local v6, "d":Ljava/util/Date;
    iget-object v9, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "alarmActivationTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 671
    .local v4, "currentTime":J
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 673
    sget-object v9, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v9, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " skipped: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    if-nez v9, :cond_0

    .line 678
    cmp-long v9, v2, v4

    if-gez v9, :cond_1

    .line 679
    sget-object v9, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm activation time has passed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", not setting alarm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    .line 687
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 684
    invoke-virtual {p2, v12, v2, v3, v9}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 708
    :goto_1
    sget-object v9, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm set for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activation time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_3

    .line 692
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 689
    invoke-virtual {p2, v12, v2, v3, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 705
    :cond_3
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 702
    invoke-virtual {p2, v12, v2, v3, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 715
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 717
    .local v3, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v5

    .line 718
    .local v5, "vakatH":I
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v8

    .line 720
    .local v8, "vakatM":I
    const/16 v9, 0xb

    invoke-virtual {v3, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 721
    invoke-virtual {v3, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 722
    const/16 v9, 0xd

    invoke-virtual {v3, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 724
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v3, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 726
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 728
    .local v6, "notifOnAtMillis":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 729
    .local v2, "d":Ljava/util/Date;
    iget-object v9, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "notifActivationTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 732
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 734
    .local v0, "currentTime":J
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {p1, v9}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 736
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v9

    if-eqz v9, :cond_0

    cmp-long v9, v6, v0

    if-lez v9, :cond_0

    .line 738
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_1

    .line 742
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {p1, v9}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 739
    invoke-virtual {p2, v11, v6, v7, v9}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 755
    :goto_0
    sget-object v9, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notif set for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activation time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void

    .line 743
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_2

    .line 747
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {p1, v9}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 744
    invoke-virtual {p2, v11, v6, v7, v9}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {p1, v9}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 749
    invoke-virtual {p2, v11, v6, v7, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 762
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 764
    .local v4, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 766
    .local v2, "currentTime":J
    const/16 v5, 0xb

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 767
    const/16 v5, 0xc

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 768
    const/16 v5, 0xd

    invoke-virtual {v4, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 770
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 772
    .local v6, "vakatChangeTime":J
    sget-object v5, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prayer change time for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 775
    .local v1, "d":Ljava/util/Date;
    iget-object v5, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "activationTime":Ljava/lang/String;
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-static {p1, v5}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 779
    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 781
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v5, v8, :cond_1

    .line 785
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-static {p1, v5}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 782
    invoke-virtual {p2, v10, v6, v7, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 800
    :goto_0
    sget-object v5, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vakat change set, activationTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    return-void

    .line 786
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v5, v8, :cond_2

    .line 790
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-static {p1, v5}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 787
    invoke-virtual {p2, v10, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-static {p1, v5}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 792
    invoke-virtual {p2, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public scheduleSilentOffAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/4 v11, 0x0

    .line 807
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 809
    .local v2, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v3

    .line 810
    .local v3, "vakatH":I
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v6

    .line 812
    .local v6, "vakatM":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 814
    .local v0, "currentTime":J
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 815
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 816
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 818
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v7

    invoke-virtual {v2, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 820
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 822
    .local v4, "soundOnFutureTime":J
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "silent deactivation for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {p1, v7}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 826
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_0

    .line 830
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {p1, v7}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 827
    invoke-virtual {p2, v11, v4, v5, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 843
    :goto_0
    return-void

    .line 831
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_1

    .line 835
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {p1, v7}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 832
    invoke-virtual {p2, v11, v4, v5, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 840
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-static {p1, v7}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 837
    invoke-virtual {p2, v11, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 12
    .param p1, "conext"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 594
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleSunriseSilent for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 597
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v5

    .line 598
    .local v5, "prayerH":I
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v6

    .line 600
    .local v6, "prayerM":I
    const/16 v7, 0xb

    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 601
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 602
    const/16 v7, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 604
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sunrise sound off mins: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/16 v7, 0xc

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v10

    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->add(II)V

    .line 608
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 610
    .local v8, "silentOnAtMillis":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 611
    .local v4, "d":Ljava/util/Date;
    iget-object v7, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "alarmActivationTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 616
    .local v2, "currentTime":J
    const/4 v7, 0x1

    invoke-static {p1, v7}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 618
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " skipped: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    if-nez v7, :cond_0

    .line 623
    cmp-long v7, v8, v2

    if-gez v7, :cond_1

    .line 624
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm activation time has passed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", not setting alarm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v7, v10, :cond_2

    .line 629
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 632
    invoke-static {p1, v10}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 629
    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 645
    :goto_1
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm set for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activation time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v7, v10, :cond_3

    .line 634
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 637
    invoke-static {p1, v10}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 634
    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 639
    :cond_3
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 642
    invoke-static {p1, v10}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 639
    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public setAlarmMins(I)V
    .locals 0
    .param p1, "alarmMins"    # I

    .prologue
    .line 457
    iput p1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    .line 458
    return-void
.end method

.method public setAlarmOn(Z)V
    .locals 0
    .param p1, "alarmOn"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    .line 442
    return-void
.end method

.method public setAlarmSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmSound"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 428
    iput p1, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 429
    return-void
.end method

.method public setNextNotifOff(Z)V
    .locals 0
    .param p1, "skipNextNotif"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    .line 557
    return-void
.end method

.method public setNotifMins(I)V
    .locals 0
    .param p1, "notifMins"    # I

    .prologue
    .line 528
    iput p1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    .line 529
    return-void
.end method

.method public setNotifOn(Z)V
    .locals 0
    .param p1, "notifOn"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    .line 521
    return-void
.end method

.method public setNotifSoundOn(Z)V
    .locals 0
    .param p1, "notifSoundOn"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 533
    return-void
.end method

.method public setNotifVibroOn(Z)V
    .locals 0
    .param p1, "notifVibroOn"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 545
    return-void
.end method

.method public setSilentOn(Z)V
    .locals 0
    .param p1, "silentOn"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    .line 450
    return-void
.end method

.method public setSilentVibrationOff(Z)V
    .locals 0
    .param p1, "silentVibrationOff"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    .line 565
    return-void
.end method

.method public setSkipNextAlarm(Z)V
    .locals 0
    .param p1, "skipNextAlarm"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 553
    return-void
.end method

.method public setSkipNextNotif(Z)V
    .locals 0
    .param p1, "skipNextNotif"    # Z

    .prologue
    .line 887
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    .line 888
    return-void
.end method

.method public setSkipNextSilent(Z)V
    .locals 0
    .param p1, "skipNextSilent"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 884
    return-void
.end method

.method public setSoundOnMins(I)V
    .locals 0
    .param p1, "soundOnMins"    # I

    .prologue
    .line 473
    iput p1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    .line 474
    return-void
.end method

.method public skipNextAlarm()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    return v0
.end method

.method public skipNextNotif()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    return v0
.end method

.method public skipNextSilent()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vakat [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipNextAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipNexSoundOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipNextNotif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silentOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundOnMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifSoundOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifVibroOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifLedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silentVibrationOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prayerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousTime=, mDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    return-void

    :cond_0
    move v0, v2

    .line 363
    goto :goto_0

    :cond_1
    move v0, v2

    .line 364
    goto :goto_1

    :cond_2
    move v0, v2

    .line 365
    goto :goto_2

    :cond_3
    move v0, v2

    .line 366
    goto :goto_3

    :cond_4
    move v0, v2

    .line 370
    goto :goto_4

    :cond_5
    move v0, v2

    .line 373
    goto :goto_5

    :cond_6
    move v0, v2

    .line 374
    goto :goto_6

    :cond_7
    move v0, v2

    .line 375
    goto :goto_7

    :cond_8
    move v0, v2

    .line 376
    goto :goto_8

    :cond_9
    move v1, v2

    .line 377
    goto :goto_9
.end method
