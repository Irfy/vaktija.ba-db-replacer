.class public Lba/vaktija/android/models/PrayersSchedule;
.super Ljava/lang/Object;
.source "PrayersSchedule.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static instance:Lba/vaktija/android/models/PrayersSchedule;


# instance fields
.field private app:Lba/vaktija/android/App;

.field private currentDay:I

.field private currentMonth:I

.field private currentYear:I

.field private locationId:I

.field private mContext:Landroid/content/Context;

.field private mJuma:Lba/vaktija/android/models/Prayer;

.field private mPrayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lba/vaktija/android/models/Prayer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

.field private mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

.field private times:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lba/vaktija/android/models/PrayersSchedule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrefs:Landroid/content/SharedPreferences;

    .line 56
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/models/PrayersSchedule;->currentYear:I

    .line 63
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "selectedLocation"

    const/16 v2, 0x6b

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    .line 65
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v1, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    iget v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    iget v3, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {p1, v1, v2, v3}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->times:[I

    const/4 p1, 0x0

    :goto_0
    if-gt p1, v0, :cond_0

    .line 68
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-direct {p0, p1}, Lba/vaktija/android/models/PrayersSchedule;->getTodaysPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/models/PrayersSchedule;->getYesterdaysIsha()Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

    .line 72
    invoke-direct {p0}, Lba/vaktija/android/models/PrayersSchedule;->getTomorrowsFajr()Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    return-void
.end method

.method public static getDstRespectingPrayerTime(IIII)I
    .locals 3

    .line 144
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDstRespectingPrayerTime defaultPrayerTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    .line 149
    invoke-static {p1, p2, p3}, Lba/vaktija/android/models/PrayersSchedule;->isSummerTimeOn(III)Z

    move-result p1

    .line 151
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summer time on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/16 p1, 0x9

    if-ne p2, p1, :cond_1

    :cond_0
    const/16 p1, 0x19

    if-lt p3, p1, :cond_1

    const/16 p1, 0x1e

    if-gt p3, p1, :cond_1

    .line 155
    sget-object p1, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string p2, "adding one hour to default prayer time"

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p0, p0, 0xe10

    :cond_1
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;
    .locals 1

    .line 46
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lba/vaktija/android/models/PrayersSchedule;

    invoke-direct {v0, p0}, Lba/vaktija/android/models/PrayersSchedule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    .line 49
    :cond_0
    sget-object p0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    return-object p0
.end method

.method private getTodaysPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 5

    .line 76
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTodaysPrayer whichPrayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 79
    new-instance v0, Lba/vaktija/android/models/Prayer;

    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->times:[I

    aget v1, v1, p1

    iget v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentYear:I

    iget v3, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    iget v4, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    .line 80
    invoke-static {v1, v2, v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    iput-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    .line 84
    :cond_0
    new-instance v0, Lba/vaktija/android/models/Prayer;

    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->times:[I

    aget v1, v1, p1

    iget v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentYear:I

    iget v3, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    iget v4, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    .line 85
    invoke-static {v1, v2, v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v1

    invoke-direct {v0, v1, p1}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    return-object v0
.end method

.method private getTomorrowsFajr()Lba/vaktija/android/models/Prayer;
    .locals 6

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x2

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 115
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v2, v2, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v4, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v2, v3, v1, v4}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v2

    .line 117
    new-instance v4, Lba/vaktija/android/models/Prayer;

    const/4 v5, 0x0

    aget v2, v2, v5

    .line 118
    invoke-static {v2, v0, v3, v1}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v0

    invoke-direct {v4, v0, v5}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    return-object v4
.end method

.method private getYesterdaysIsha()Lba/vaktija/android/models/Prayer;
    .locals 6

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x2

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 98
    iget-object v3, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v3, v3, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v5, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v3, v2, v4, v5}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v3

    .line 100
    new-instance v5, Lba/vaktija/android/models/Prayer;

    aget v3, v3, v1

    .line 101
    invoke-static {v3, v0, v2, v4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v0

    invoke-direct {v5, v0, v1}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    return-object v5
.end method

.method public static isSummerTimeOn(III)Z
    .locals 2

    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 398
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 399
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 400
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAllPrayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lba/vaktija/android/models/Prayer;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    return-object v0
.end method

.method public getAllPrayersTimes()Ljava/lang/CharSequence;
    .locals 5

    .line 305
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 315
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    .line 323
    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 325
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 331
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 335
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 339
    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAndNextTime()Ljava/lang/CharSequence;
    .locals 6

    .line 347
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x5

    .line 361
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentPrayer()Lba/vaktija/android/models/Prayer;
    .locals 4

    monitor-enter p0

    .line 168
    :try_start_0
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v0

    const/4 v1, 0x0

    .line 170
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 172
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 173
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_0
    :try_start_1
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    if-ge v0, v2, :cond_3

    if-nez v1, :cond_1

    .line 178
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 181
    :try_start_2
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 185
    :cond_2
    :try_start_3
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 190
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getNextPrayer()Lba/vaktija/android/models/Prayer;
    .locals 4

    .line 286
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 290
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    return-object v0

    :cond_1
    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    return-object v0

    .line 301
    :cond_2
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    return-object v0
.end method

.method public getNextPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 3

    .line 263
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 269
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    return-object p1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 278
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 281
    :cond_3
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/2addr p1, v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1
.end method

.method public getPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 446
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1
.end method

.method public getPrayerForDate(IIII)Lba/vaktija/android/models/Prayer;
    .locals 3

    .line 128
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPrayerForDate year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v0, v0, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v1, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v0, p3, p4, v1}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v0

    .line 132
    invoke-virtual {p0, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 133
    new-instance v1, Lba/vaktija/android/models/Prayer;

    aget p1, v0, p1

    .line 134
    invoke-static {p1, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result p1

    const/4 p2, 0x6

    invoke-direct {v1, p1, p2}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    return-object v1

    .line 138
    :cond_0
    new-instance v1, Lba/vaktija/android/models/Prayer;

    aget v0, v0, p1

    .line 139
    invoke-static {v0, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result p2

    invoke-direct {v1, p2, p1}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    return-object v1
.end method

.method public getPreviousPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 1

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 377
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1
.end method

.method public getPreviousPrayerIgnoringDate(I)Lba/vaktija/android/models/Prayer;
    .locals 2

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 386
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 389
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 390
    iget-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    return-object p1

    .line 393
    :cond_2
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    return-object p1
.end method

.method public getSilentModeDuration()I
    .locals 2

    .line 453
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 455
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSilentModeDurationString()Ljava/lang/String;
    .locals 1

    .line 464
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDuration()I

    move-result v0

    invoke-static {v0}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeTillNextPrayer()I
    .locals 2

    .line 213
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x15180

    add-int/2addr v0, v1

    .line 220
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public isDayEnding()Z
    .locals 6

    .line 431
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 434
    :goto_0
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v4

    if-gt v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 436
    :goto_1
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v4

    const v5, 0x15180

    if-gt v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public isJumaDay()Z
    .locals 5

    .line 194
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x7

    .line 196
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isJumaDay(III)Z
    .locals 3

    .line 202
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v2

    const/4 p1, 0x2

    .line 205
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 206
    invoke-virtual {v1, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x7

    .line 207
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isNextPrayer(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 411
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    return v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v0, :cond_1

    if-ne p1, v2, :cond_1

    return v0

    .line 419
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    if-eq p1, v2, :cond_4

    .line 424
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    add-int/2addr v2, v0

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public isNextPrayerApproaching()Z
    .locals 8

    .line 230
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 233
    sget-object v2, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current prayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next prayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v0

    .line 238
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "next prayer approaching: NO"

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    sub-int/2addr v2, v5

    .line 245
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification mins for next prayer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notif activation time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v0, v2, :cond_1

    .line 252
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v1, "next prayer approaching: YES"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 257
    :cond_1
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 239
    :cond_2
    :goto_0
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public reset()V
    .locals 2

    .line 406
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v1, "resetting schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Lba/vaktija/android/models/PrayersSchedule;

    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    return-void
.end method
