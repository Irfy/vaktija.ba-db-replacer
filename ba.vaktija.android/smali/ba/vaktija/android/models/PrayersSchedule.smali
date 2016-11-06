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
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 28
    const-class v0, Lba/vaktija/android/models/PrayersSchedule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrefs:Landroid/content/SharedPreferences;

    .line 56
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/App;

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    .line 60
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/models/PrayersSchedule;->currentYear:I

    .line 63
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "selectedLocation"

    const/16 v4, 0x6b

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    .line 65
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v2, v2, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v3, p0, Lba/vaktija/android/models/PrayersSchedule;->currentMonth:I

    iget v4, p0, Lba/vaktija/android/models/PrayersSchedule;->currentDay:I

    iget v5, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v2, v3, v4, v5}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->times:[I

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v6, :cond_0

    .line 68
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-direct {p0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getTodaysPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/models/PrayersSchedule;->getYesterdaysIsha()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

    .line 72
    invoke-direct {p0}, Lba/vaktija/android/models/PrayersSchedule;->getTomorrowsFajr()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    .line 73
    return-void
.end method

.method public static getDstRespectingPrayerTime(IIII)I
    .locals 4
    .param p0, "defaultPrayerTime"    # I
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 144
    sget-object v1, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDstRespectingPrayerTime defaultPrayerTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " year="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " month="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    add-int/lit8 p2, p2, -0x1

    .line 149
    invoke-static {p1, p2, p3}, Lba/vaktija/android/models/PrayersSchedule;->isSummerTimeOn(III)Z

    move-result v0

    .line 151
    .local v0, "summerTimeOn":Z
    sget-object v1, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "summer time on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 154
    :cond_0
    const/16 v1, 0x19

    if-lt p3, v1, :cond_1

    const/16 v1, 0x1e

    if-gt p3, v1, :cond_1

    .line 155
    sget-object v1, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v2, "adding one hour to default prayer time"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    add-int/lit16 p0, p0, 0xe10

    .line 162
    .end local p0    # "defaultPrayerTime":I
    :cond_1
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lba/vaktija/android/models/PrayersSchedule;

    invoke-direct {v0, p0}, Lba/vaktija/android/models/PrayersSchedule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    .line 49
    :cond_0
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    return-object v0
.end method

.method private getTodaysPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 5
    .param p1, "whichPrayer"    # I

    .prologue
    .line 76
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTodaysPrayer whichPrayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
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

    .line 84
    return-object v0
.end method

.method private getTomorrowsFajr()Lba/vaktija/android/models/Prayer;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 111
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 112
    .local v2, "month":I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 113
    .local v1, "day":I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 115
    .local v4, "year":I
    iget-object v5, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v5, v5, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v6, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v5, v2, v1, v6}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v3

    .line 117
    .local v3, "time":[I
    new-instance v5, Lba/vaktija/android/models/Prayer;

    aget v6, v3, v7

    .line 118
    invoke-static {v6, v4, v2, v1}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v6

    invoke-direct {v5, v6, v7}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    .line 117
    return-object v5
.end method

.method private getYesterdaysIsha()Lba/vaktija/android/models/Prayer;
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 92
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v5, -0x1

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 94
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 95
    .local v2, "month":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 96
    .local v1, "day":I
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 98
    .local v4, "year":I
    iget-object v5, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v5, v5, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v6, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v5, v2, v1, v6}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v3

    .line 100
    .local v3, "time":[I
    new-instance v5, Lba/vaktija/android/models/Prayer;

    aget v6, v3, v7

    .line 101
    invoke-static {v6, v4, v2, v1}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v6

    invoke-direct {v5, v6, v7}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    .line 100
    return-object v5
.end method

.method public static isSummerTimeOn(III)Z
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 398
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 399
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 400
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 402
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


# virtual methods
.method public getAllPrayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lba/vaktija/android/models/Prayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    return-object v0
.end method

.method public getAllPrayersTimes()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 306
    .local v0, "currentPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 308
    .local v1, "nextVakat":Lba/vaktija/android/models/Prayer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v2, "time":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    invoke-virtual {p0, v5}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    invoke-virtual {p0, v6}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    invoke-virtual {p0, v6}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    .line 323
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    invoke-virtual {p0, v8}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 332
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 333
    invoke-virtual {p0, v8}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    .line 334
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-virtual {p0, v9}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {p0, v9}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 339
    invoke-virtual {p0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 341
    invoke-virtual {p0, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 325
    :cond_0
    invoke-virtual {p0, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    invoke-virtual {p0, v7}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getCurrentAndNextTime()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 347
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 348
    .local v0, "currentPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    .line 350
    .local v2, "nextVakat":Lba/vaktija/android/models/Prayer;
    const-string v1, ""

    .line 351
    .local v1, "nextDay":Ljava/lang/String;
    const-string v3, ""

    .line 353
    .local v3, "prevDay":Ljava/lang/String;
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const-string v1, ""

    .line 361
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "time":Ljava/lang/String;
    invoke-static {v4}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .line 356
    .end local v4    # "time":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 358
    const-string v3, ""

    goto :goto_0
.end method

.method public declared-synchronized getCurrentPrayer()Lba/vaktija/android/models/Prayer;
    .locals 4

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v0

    .line 170
    .local v0, "currentSeconds":I
    const/4 v1, 0x0

    .local v1, "i":I
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
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_1
    monitor-exit p0

    return-object v2

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

    .line 177
    if-nez v1, :cond_1

    .line 178
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

    goto :goto_1

    .line 181
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    goto :goto_1

    .line 185
    :cond_2
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 168
    .end local v0    # "currentSeconds":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getNextPrayer()Lba/vaktija/android/models/Prayer;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 286
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "separateJumaSettings"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 287
    .local v1, "respectJuma":Z
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    .line 289
    .local v0, "prayerId":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    .line 301
    :goto_0
    return-object v2

    .line 293
    :cond_0
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 297
    :cond_1
    if-ne v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 298
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Prayer;

    goto :goto_0
.end method

.method public getNextPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 4
    .param p1, "prayerId"    # I

    .prologue
    const/4 v3, 0x1

    .line 263
    sget-object v1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "separateJumaSettings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 265
    .local v0, "respectJuma":Z
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mTomorrowsFajr:Lba/vaktija/android/models/Prayer;

    .line 281
    :goto_0
    return-object v1

    .line 269
    :cond_0
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 273
    :cond_1
    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 277
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 278
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 281
    :cond_3
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Prayer;

    goto :goto_0
.end method

.method public getPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 445
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 446
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    .line 449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    goto :goto_0
.end method

.method public getPrayerForDate(IIII)Lba/vaktija/android/models/Prayer;
    .locals 4
    .param p1, "whichPrayer"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 128
    sget-object v1, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPrayerForDate year="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " month="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->app:Lba/vaktija/android/App;

    iget-object v1, v1, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    iget v2, p0, Lba/vaktija/android/models/PrayersSchedule;->locationId:I

    invoke-virtual {v1, p3, p4, v2}, Lba/vaktija/android/db/Database;->getPrayerTimesSec(III)[I

    move-result-object v0

    .line 132
    .local v0, "time":[I
    invoke-virtual {p0, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 133
    new-instance v1, Lba/vaktija/android/models/Prayer;

    aget v2, v0, p1

    .line 134
    invoke-static {v2, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v2

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    .line 138
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lba/vaktija/android/models/Prayer;

    aget v2, v0, p1

    .line 139
    invoke-static {v2, p2, p3, p4}, Lba/vaktija/android/models/PrayersSchedule;->getDstRespectingPrayerTime(IIII)I

    move-result v2

    invoke-direct {v1, v2, p1}, Lba/vaktija/android/models/Prayer;-><init>(II)V

    goto :goto_0
.end method

.method public getPreviousPrayer(I)Lba/vaktija/android/models/Prayer;
    .locals 2
    .param p1, "prayerId"    # I

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mYesterdaysIsha:Lba/vaktija/android/models/Prayer;

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    goto :goto_0
.end method

.method public getPreviousPrayerIgnoringDate(I)Lba/vaktija/android/models/Prayer;
    .locals 2
    .param p1, "prayerId"    # I

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    .line 393
    :goto_0
    return-object v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 386
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 390
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mJuma:Lba/vaktija/android/models/Prayer;

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lba/vaktija/android/models/PrayersSchedule;->mPrayers:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Prayer;

    goto :goto_0
.end method

.method public getSilentModeDuration()I
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int v0, v2, v3

    .line 455
    .local v0, "silentTimeout":I
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 457
    .local v1, "sunrise":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v0

    .line 460
    .end local v1    # "sunrise":Lba/vaktija/android/models/Prayer;
    :cond_0
    return v0
.end method

.method public getSilentModeDurationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDuration()I

    move-result v0

    invoke-static {v0}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeTillNextPrayer()I
    .locals 5

    .prologue
    .line 213
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 215
    .local v0, "currentPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 217
    .local v1, "nextPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v2

    .line 219
    .local v2, "nextPrayerTime":I
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->isDayEnding()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const v3, 0x15180

    add-int/2addr v3, v2

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v4

    sub-int v2, v3, v4

    .line 225
    :goto_0
    return v2

    .line 222
    :cond_0
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public isDayEnding()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 431
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 432
    .local v0, "current":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v2, v5

    .line 434
    .local v2, "stepOne":Z
    :goto_0
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v7

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v8

    if-gt v7, v8, :cond_1

    move v4, v5

    .line 436
    .local v4, "stepTwo":Z
    :goto_1
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v7

    const v8, 0x15180

    if-gt v7, v8, :cond_2

    move v3, v5

    .line 438
    .local v3, "stepThree":Z
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v1, v5

    .line 440
    .local v1, "ending":Z
    :goto_3
    return v1

    .end local v1    # "ending":Z
    .end local v2    # "stepOne":Z
    .end local v3    # "stepThree":Z
    .end local v4    # "stepTwo":Z
    :cond_0
    move v2, v6

    .line 432
    goto :goto_0

    .restart local v2    # "stepOne":Z
    :cond_1
    move v4, v6

    .line 434
    goto :goto_1

    .restart local v4    # "stepTwo":Z
    :cond_2
    move v3, v6

    .line 436
    goto :goto_2

    .restart local v3    # "stepThree":Z
    :cond_3
    move v1, v6

    .line 438
    goto :goto_3
.end method

.method public isJumaDay()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 194
    sget-object v5, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "separateJumaSettings"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    .local v3, "respectJuma":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    move v1, v2

    .line 197
    .local v1, "isFriday":Z
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 198
    .local v2, "jumaDay":Z
    :goto_1
    return v2

    .end local v1    # "isFriday":Z
    .end local v2    # "jumaDay":Z
    :cond_0
    move v1, v4

    .line 196
    goto :goto_0

    .restart local v1    # "isFriday":Z
    :cond_1
    move v2, v4

    .line 197
    goto :goto_1
.end method

.method public isJumaDay(III)Z
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 202
    sget-object v5, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "separateJumaSettings"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 203
    .local v2, "respectJuma":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 204
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 205
    const/4 v5, 0x2

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 206
    const/4 v5, 0x5

    invoke-virtual {v0, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 207
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    move v1, v3

    .line 208
    .local v1, "isFriday":Z
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v3

    .end local v1    # "isFriday":Z
    :cond_0
    move v1, v4

    .line 207
    goto :goto_0

    .restart local v1    # "isFriday":Z
    :cond_1
    move v3, v4

    .line 208
    goto :goto_1
.end method

.method public isNextPrayer(I)Z
    .locals 5
    .param p1, "prayerId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 411
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    if-ne v2, v0, :cond_2

    if-eq p1, v4, :cond_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 423
    :cond_3
    if-eq p1, v4, :cond_4

    .line 424
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 426
    goto :goto_0
.end method

.method public isNextPrayerApproaching()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 231
    .local v0, "currentPrayer":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    .line 233
    .local v2, "nextPrayer":Lba/vaktija/android/models/Prayer;
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current prayer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next prayer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v1

    .line 238
    .local v1, "currentTime":I
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    :cond_0
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v6, "next prayer approaching: NO"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return v4

    .line 243
    :cond_1
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    sub-int v3, v5, v6

    .line 245
    .local v3, "notifActivationTime":I
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification mins for next prayer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notif activation time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-lt v1, v3, :cond_2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 253
    sget-object v4, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v5, "next prayer approaching: YES"

    invoke-static {v4, v5}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v4, 0x1

    goto :goto_0

    .line 257
    :cond_2
    sget-object v5, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v6, "next prayer approaching: NO"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lba/vaktija/android/models/PrayersSchedule;->TAG:Ljava/lang/String;

    const-string v1, "resetting schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Lba/vaktija/android/models/PrayersSchedule;

    iget-object v1, p0, Lba/vaktija/android/models/PrayersSchedule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lba/vaktija/android/models/PrayersSchedule;->instance:Lba/vaktija/android/models/PrayersSchedule;

    .line 408
    return-void
.end method
