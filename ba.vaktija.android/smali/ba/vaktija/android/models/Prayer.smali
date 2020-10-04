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
            "Landroid/os/Parcelable$Creator<",
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

    .line 36
    const-class v0, Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lba/vaktija/android/models/Prayer$1;

    invoke-direct {v0}, Lba/vaktija/android/models/Prayer$1;-><init>()V

    sput-object v0, Lba/vaktija/android/models/Prayer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 94
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH\'h\' mm\'m\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 94
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH\'h\' mm\'m\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 144
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[<init> id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 94
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 99
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "HH\'h\' mm\'m\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lba/vaktija/android/models/Prayer;->id:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0, v1}, Lba/vaktija/android/models/Prayer;->setNextNotifOff(Z)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    .line 122
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initCalendar()V

    .line 124
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->initFromPreference()V

    return-void
.end method

.method public static getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;
    .locals 3

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/receiver/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmReceiver.ACTION_SHOW_ALARM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    const-string v1, "EXTRA_PRAYER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x350b

    const/high16 v1, 0x10000000

    .line 133
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getNextVakatTitle(I)Ljava/lang/String;
    .locals 4

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 219
    :goto_0
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "separateJumaSettings"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-ne p0, v1, :cond_1

    const-string p0, "D\u017euma"

    return-object p0

    :cond_1
    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "Zora"

    return-object p0

    :pswitch_1
    const-string p0, "Jacija"

    return-object p0

    :pswitch_2
    const-string p0, "Ak\u0161am"

    return-object p0

    :pswitch_3
    const-string p0, "Ikindija"

    return-object p0

    :pswitch_4
    const-string p0, "Podne"

    return-object p0

    :pswitch_5
    const-string p0, "Izlazak sunca"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "NotifPendingIntent"

    .line 202
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SHOW_APPROACHING_NOTIFICATION_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x6068

    const/high16 v1, 0x10000000

    .line 205
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "PrayerChangePendingIntent"

    .line 154
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_PRAYER_CHANGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x15194

    const/high16 v1, 0x10000000

    .line 157
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "SilentOffPendingIntent"

    .line 176
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DEACTIVATE_SILENT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x17cfb

    const/high16 v1, 0x10000000

    .line 179
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "SilentOnPendingIntent"

    .line 165
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SILENT_ACTIVATED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x17ae8

    const/high16 v1, 0x10000000

    .line 168
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static isSummerTime()Z
    .locals 2

    .line 213
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

    .line 900
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cancelAllAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 3

    .line 587
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelling all alarms for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 590
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 591
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 592
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmActivationTime()Ljava/lang/String;
    .locals 4

    .line 848
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 850
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 851
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmMins()I
    .locals 1

    .line 456
    iget v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    return v0
.end method

.method public getAlarmSound()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .line 500
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getHrsString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v1

    div-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 427
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    return v0
.end method

.method public getMinsString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 514
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .line 504
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getNotifMins()I
    .locals 1

    .line 527
    iget v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    return v0
.end method

.method public getNotificationTime()Ljava/lang/String;
    .locals 4

    .line 856
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 858
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 859
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrayerTime()I
    .locals 4

    .line 481
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "dhuhrTime"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 482
    invoke-static {}, Lba/vaktija/android/models/Prayer;->isSummerTime()Z

    move-result v1

    .line 484
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const v0, 0xb6d0

    goto :goto_0

    :cond_1
    const v0, 0xa8c0

    :goto_0
    return v0

    .line 488
    :cond_2
    iget v0, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    return v0
.end method

.method public getPrayerTimeString()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawPrayerTime()I
    .locals 1

    .line 496
    iget v0, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    return v0
.end method

.method public getSettingsAsJson()Lcom/google/gson/JsonElement;
    .locals 3

    .line 187
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 188
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "alarmOn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 189
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "silentOn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "notifOn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    iget v1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alarmMins"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 192
    iget v1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "silentTimeout"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 193
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "notifSoundOn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "notifVibroOn"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 195
    iget v1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notifTime"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 196
    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "silentVibroOff"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public getShortTitle()Ljava/lang/String;
    .locals 1

    .line 406
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "No title"

    return-object v0

    :pswitch_0
    const-string v0, "D\u017euma"

    return-object v0

    :pswitch_1
    const-string v0, "Jacija"

    return-object v0

    :pswitch_2
    const-string v0, "Ak\u0161am"

    return-object v0

    :pswitch_3
    const-string v0, "Ikindija"

    return-object v0

    :pswitch_4
    const-string v0, "Podne"

    return-object v0

    :pswitch_5
    const-string v0, "I. sunca"

    return-object v0

    :pswitch_6
    const-string v0, "Zora"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSilentDeactivationTime()Ljava/lang/String;
    .locals 4

    .line 864
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 866
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 867
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundOffMins()I
    .locals 2

    .line 893
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 894
    iget v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundOnMins()I
    .locals 1

    .line 472
    iget v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 385
    iget v0, p0, Lba/vaktija/android/models/Prayer;->id:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "No title"

    return-object v0

    :pswitch_0
    const-string v0, "D\u017euma"

    return-object v0

    :pswitch_1
    const-string v0, "Jacija"

    return-object v0

    :pswitch_2
    const-string v0, "Ak\u0161am"

    return-object v0

    :pswitch_3
    const-string v0, "Ikindija"

    return-object v0

    :pswitch_4
    const-string v0, "Podne"

    return-object v0

    :pswitch_5
    const-string v0, "Izlazak sunca"

    return-object v0

    :pswitch_6
    const-string v0, "Zora"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initCalendar()V
    .locals 3

    .line 244
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    .line 246
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 247
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 248
    iget-object v0, p0, Lba/vaktija/android/models/Prayer;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;
    .locals 2

    const-string v0, "skipNextAlarm"

    .line 290
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    :cond_0
    const-string v0, "skipNextNotif"

    .line 293
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    :cond_1
    const-string v0, "skipNextSilent"

    .line 296
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    :cond_2
    const-string v0, "alarmOn"

    .line 299
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    const-string v0, "silentOn"

    .line 300
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    const-string v0, "notifOn"

    .line 301
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    const-string v0, "alarmMins"

    .line 303
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    const-string v0, "silentTimeout"

    .line 304
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    const-string v0, "notifTime"

    .line 305
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    const-string v0, "notifSound"

    .line 307
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    :cond_3
    const-string v0, "alarmSound"

    .line 310
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    :cond_4
    const-string v0, "notifSoundOn"

    .line 313
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    const-string v0, "notifVibroOn"

    .line 314
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    const-string v0, "silentVibroOff"

    .line 315
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    return-object p0
.end method

.method protected initFromPreference()V
    .locals 5

    .line 254
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 256
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 257
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "skipNextAlarm"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 258
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "skipNextNotif"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "skipNextSilent"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 261
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "alarmOn"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "notifOn"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 263
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "silentOn"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 265
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "alarmMins"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 266
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "silentTimeout"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 267
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "notifTime"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getIntDefault(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "notifSound"

    const-string v3, ""

    .line 269
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alarmSound"

    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "notifSoundOn"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "notifVibroOn"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 274
    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    const-string v3, "silentVibroOff"

    invoke-static {v2, v3}, Lba/vaktija/android/prefs/Defaults;->getBooleanDefault(ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    sget-object v2, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    iget v3, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    const-class v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Lba/vaktija/android/models/Prayer;->initFromJson(Lcom/google/gson/JsonObject;)Lba/vaktija/android/models/Prayer;

    return-void
.end method

.method public isAlarmOn()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    return v0
.end method

.method public isNotifOn()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    return v0
.end method

.method public isNotifSoundOn()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    return v0
.end method

.method public isNotifVibroOn()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    return v0
.end method

.method public isSilentOn()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    return v0
.end method

.method public isSilentVibrationOff()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    return v0
.end method

.method public isSummerTime(II)Z
    .locals 2

    .line 871
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 873
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x7

    .line 874
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 876
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public resetSkips()V
    .locals 1

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    .line 905
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    .line 906
    iput-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    .line 907
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->save()V

    return-void
.end method

.method public save()V
    .locals 8

    .line 321
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 323
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 325
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "skipNextAlarm"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "skipNextSilent"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "skipNextNotif"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 329
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "alarmOn"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "silentOn"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 331
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifOn"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 333
    iget v3, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "alarmMins"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 334
    iget v3, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "notifTime"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 335
    iget v3, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "silentTimeout"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 337
    iget-object v3, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    const-string v4, "alarmSound"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    const-string v4, "notifSound"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifSoundOn"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifVibroOn"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 342
    iget-boolean v3, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "silentVibroOff"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 345
    sget-object v3, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget v4, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 347
    :cond_0
    sget-object v3, Lba/vaktija/android/App;->vakatPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget v4, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 351
    sget-object v5, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v2, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save data done in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    long-to-double v0, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " us"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public scheduleAlarms(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 10

    .line 655
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 657
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v1

    .line 658
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v2

    const/16 v3, 0xb

    .line 660
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 661
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 662
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 664
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 666
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 668
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 669
    iget-object v4, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 672
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 674
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 676
    sget-object v6, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarm for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " enabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v6, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " skipped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    if-nez v6, :cond_3

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 682
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alarm activation time has passed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", not setting alarm"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 686
    :cond_0
    invoke-static {p1, p0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 688
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 690
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 695
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 697
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 703
    :cond_2
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 709
    :goto_0
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alarm set for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activation time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public scheduleNotifications(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 7

    .line 716
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 718
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v1

    .line 719
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v2

    const/16 v3, 0xb

    .line 721
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 722
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 723
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 725
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 727
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 729
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 730
    iget-object v4, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 733
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 735
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v6

    invoke-static {p1, v6}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 737
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v6

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 739
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 743
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-static {p1, v4}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 740
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 744
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 748
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-static {p1, v4}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 745
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-static {p1, v4}, Lba/vaktija/android/models/Prayer;->getNotifPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 750
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 756
    :goto_0
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notif set for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activation time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public schedulePrayerChangeAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 8

    .line 763
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 767
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 768
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 769
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 771
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 773
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prayer change time for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 776
    iget-object v3, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-static {p1, v3}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v3, v5, v1

    if-lez v3, :cond_2

    .line 782
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 786
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 783
    invoke-virtual {p2, v4, v5, v6, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 787
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 791
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 788
    invoke-virtual {p2, v4, v5, v6, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lba/vaktija/android/models/Prayer;->getPrayerChangePendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 793
    invoke-virtual {p2, v4, v5, v6, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 801
    :goto_0
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vakat change set, activationTime: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public scheduleSilentOffAlarm(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 7

    .line 808
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 810
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v1

    .line 811
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v2

    .line 813
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    const/16 v3, 0xb

    .line 815
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 816
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 817
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 819
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 821
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 823
    sget-object v2, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silent deactivation for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {p1, v2}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 827
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    .line 831
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {p1, v2}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 828
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 832
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_1

    .line 836
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {p1, v2}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 833
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {p1, v2}, Lba/vaktija/android/models/Prayer;->getSilentOffPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 838
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public scheduleSunriseSilent(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 11

    .line 597
    sget-object v0, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSunriseSilent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getHours()I

    move-result v1

    .line 601
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getMinutes()I

    move-result v2

    const/16 v3, 0xb

    .line 603
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 604
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 605
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 607
    sget-object v2, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sunrise sound off mins: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getSoundOffMins()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 611
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 613
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 614
    iget-object v4, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 617
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 619
    invoke-static {p1, v6}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 621
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarm for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " enabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v7, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " skipped: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    if-nez v7, :cond_3

    cmp-long v7, v0, v4

    if-gez v7, :cond_0

    .line 627
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alarm activation time has passed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", not setting alarm"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 631
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 635
    invoke-static {p1, v6}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 632
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 636
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 640
    invoke-static {p1, v6}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 637
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 645
    :cond_2
    invoke-static {p1, v6}, Lba/vaktija/android/models/Prayer;->getSilentOnPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 642
    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 648
    :goto_0
    sget-object p1, Lba/vaktija/android/models/Prayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alarm set for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activation time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setAlarmMins(I)V
    .locals 0

    .line 460
    iput p1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    return-void
.end method

.method public setAlarmOn(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    return-void
.end method

.method public setAlarmSound(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 431
    iput p1, p0, Lba/vaktija/android/models/Prayer;->id:I

    return-void
.end method

.method public setNextNotifOff(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    return-void
.end method

.method public setNotifMins(I)V
    .locals 0

    .line 531
    iput p1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    return-void
.end method

.method public setNotifOn(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    return-void
.end method

.method public setNotifSoundOn(Z)V
    .locals 0

    .line 535
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    return-void
.end method

.method public setNotifVibroOn(Z)V
    .locals 0

    .line 547
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    return-void
.end method

.method public setSilentOn(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    return-void
.end method

.method public setSilentVibrationOff(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    return-void
.end method

.method public setSkipNextAlarm(Z)V
    .locals 0

    .line 555
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    return-void
.end method

.method public setSkipNextNotif(Z)V
    .locals 0

    .line 888
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    return-void
.end method

.method public setSkipNextSilent(Z)V
    .locals 0

    .line 884
    iput-boolean p1, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    return-void
.end method

.method public setSoundOnMins(I)V
    .locals 0

    .line 476
    iput p1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    return-void
.end method

.method public skipNextAlarm()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    return v0
.end method

.method public skipNextNotif()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    return v0
.end method

.method public skipNextSilent()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vakat [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skipNextAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipNexSoundOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipNextNotif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->skipNextNotif:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alarmOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", silentOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alarmMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alarmSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", soundOnMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notifOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifMins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notifSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notifSoundOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifVibroOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifLedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", silentVibrationOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prayerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previousTime=, mDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/models/Prayer;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 365
    iget p2, p0, Lba/vaktija/android/models/Prayer;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->skipNextAlarm:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->skipNextSilent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->alarmOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->silentOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget p2, p0, Lba/vaktija/android/models/Prayer;->alarmMins:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object p2, p0, Lba/vaktija/android/models/Prayer;->alarmSound:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget p2, p0, Lba/vaktija/android/models/Prayer;->soundOnMins:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->notifOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget p2, p0, Lba/vaktija/android/models/Prayer;->notifMins:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object p2, p0, Lba/vaktija/android/models/Prayer;->notifSound:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->notifSoundOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->notifVibroOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->notifLedOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-boolean p2, p0, Lba/vaktija/android/models/Prayer;->silentVibrationOff:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget p2, p0, Lba/vaktija/android/models/Prayer;->prayerTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
