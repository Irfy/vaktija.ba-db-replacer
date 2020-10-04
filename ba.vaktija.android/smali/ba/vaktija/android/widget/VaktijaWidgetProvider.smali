.class public Lba/vaktija/android/widget/VaktijaWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "VaktijaWidgetProvider.java"


# static fields
.field private static final MAIN_ACTIVITY_ID:I = 0x3039

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 40
    sget-object v4, Lba/vaktija/android/widget/VaktijaWidgetProvider;->TAG:Ljava/lang/String;

    const-string v5, "onUpdate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    array-length v4, v3

    if-nez v4, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    .line 48
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    .line 50
    invoke-virtual {v5, v6}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    const/4 v8, 0x1

    .line 51
    invoke-virtual {v5, v8}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v9

    const/4 v10, 0x2

    .line 52
    invoke-virtual {v5, v10}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v11

    const/4 v12, 0x3

    .line 53
    invoke-virtual {v5, v12}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v13

    const/4 v14, 0x4

    .line 54
    invoke-virtual {v5, v14}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v15

    const/4 v14, 0x5

    .line 55
    invoke-virtual {v5, v14}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v16

    .line 57
    invoke-virtual {v5}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v11, 0x6

    .line 58
    invoke-virtual {v5, v11}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v11

    .line 61
    :cond_1
    iget-object v5, v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "locationName"

    const-string v12, "Sarajevo"

    invoke-interface {v5, v14, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    new-instance v12, Landroid/content/Intent;

    const-class v14, Lba/vaktija/android/MainActivity;

    invoke-direct {v12, v1, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v14, 0x20000

    .line 64
    invoke-virtual {v12, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v14, 0x3039

    const/high16 v8, 0x8000000

    .line 66
    invoke-static {v1, v14, v12, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f05006c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v6, 0x7f05006f

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_1d

    .line 81
    aget v10, v3, v14

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    .line 85
    invoke-virtual {v2, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, -0x1

    move/from16 v18, v4

    const-string v4, "appWidgetCategory"

    .line 87
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 91
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b005c

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f080148

    .line 94
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v4

    .line 95
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v19

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v19}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v14

    .line 93
    invoke-static {v4, v14}, Lba/vaktija/android/util/Utils;->getTimeTillNext(Lba/vaktija/android/models/Prayer;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f080149

    .line 98
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v4

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    const/4 v3, 0x5

    goto/16 :goto_15

    :cond_3
    move/from16 v18, v4

    :cond_4
    move/from16 v20, v14

    .line 106
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0700ae

    const v4, 0x7f080150

    const-string v14, "setBackgroundResource"

    .line 112
    invoke-virtual {v0, v4, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v3, 0x7f060099

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 114
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080135

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v4, 0x7f08012e

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    const-string v3, "vaktija.ba"

    .line 120
    invoke-static {v1, v3, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v3, 0x7f08013c

    .line 128
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    const/16 v14, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080151

    .line 129
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080136

    .line 130
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08012f

    .line 131
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08014a

    .line 132
    invoke-virtual {v15}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080142

    .line 133
    invoke-virtual/range {v16 .. v16}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08013e

    .line 135
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_8

    :cond_b
    const/16 v4, 0x8

    :goto_8
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080153

    .line 136
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080138

    .line 137
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    goto :goto_a

    :cond_d
    const/16 v4, 0x8

    :goto_a
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080131

    .line 138
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    const/16 v4, 0x8

    :goto_b
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08014c

    .line 139
    invoke-virtual {v15}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    const/16 v4, 0x8

    :goto_c
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080144

    .line 140
    invoke-virtual/range {v16 .. v16}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_d

    :cond_10
    const/16 v4, 0x8

    :goto_d
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08013f

    .line 142
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    goto :goto_e

    :cond_11
    const/16 v4, 0x8

    :goto_e
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080154

    .line 143
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_f

    :cond_12
    const/16 v4, 0x8

    :goto_f
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080139

    .line 144
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    goto :goto_10

    :cond_13
    const/16 v4, 0x8

    :goto_10
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080132

    .line 145
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    goto :goto_11

    :cond_14
    const/16 v4, 0x8

    :goto_11
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f08014d

    .line 146
    invoke-virtual {v15}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    goto :goto_12

    :cond_15
    const/16 v4, 0x8

    :goto_12
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f080145

    .line 147
    invoke-virtual/range {v16 .. v16}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v14, 0x0

    :cond_16
    invoke-virtual {v0, v3, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v4

    invoke-static {v4}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v3, 0x7f060099

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 149
    invoke-static {v1, v4, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080140

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v14

    invoke-static {v14}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v14

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 155
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080155

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v14

    invoke-static {v14}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v14

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 161
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f08013a

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 169
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v14

    invoke-static {v14}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v14

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 167
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080133

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 175
    invoke-virtual {v15}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v14

    invoke-static {v14}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v14

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 173
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f08014e

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 181
    invoke-virtual/range {v16 .. v16}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v14

    invoke-static {v14}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v14

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 179
    invoke-static {v1, v14, v12, v4}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080146

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 187
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 185
    invoke-static {v1, v4, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080141

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v4, 0x7f080156

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    const-string v3, "I. SUNCA"

    .line 191
    invoke-static {v1, v3, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 199
    invoke-virtual {v11}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v3, 0x7f060099

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 197
    invoke-static {v1, v4, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f08013b

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 205
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 203
    invoke-static {v1, v4, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f080134

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 211
    invoke-virtual {v15}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 209
    invoke-static {v1, v4, v12, v14}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    const v14, 0x7f08014f

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 217
    invoke-virtual/range {v16 .. v16}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 215
    invoke-static {v1, v4, v12, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    const v4, 0x7f080147

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v3, 0x7f08013d

    const-string v4, "setBackgroundColor"

    const/4 v14, 0x0

    .line 221
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f080152

    .line 222
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f080137

    .line 223
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f080130

    .line 224
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f08014b

    .line 225
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f080143

    .line 226
    invoke-virtual {v0, v3, v4, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 228
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v3, 0x1

    if-eq v14, v3, :cond_1b

    const/4 v3, 0x2

    if-eq v14, v3, :cond_1a

    const/4 v3, 0x3

    if-eq v14, v3, :cond_19

    const/4 v3, 0x4

    if-eq v14, v3, :cond_18

    const/4 v3, 0x5

    if-eq v14, v3, :cond_17

    :goto_13
    const v4, 0x7f080150

    goto :goto_14

    :cond_17
    const v14, 0x7f080143

    .line 245
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    :cond_18
    const/4 v3, 0x5

    const v14, 0x7f08014b

    .line 242
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    :cond_19
    const/4 v3, 0x5

    const v14, 0x7f080130

    .line 239
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    :cond_1a
    const/4 v3, 0x5

    const v14, 0x7f080137

    .line 236
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    :cond_1b
    const/4 v3, 0x5

    const v14, 0x7f080152

    .line 233
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    :cond_1c
    const/4 v3, 0x5

    const v14, 0x7f08013d

    .line 230
    invoke-virtual {v0, v14, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13

    .line 249
    :goto_14
    invoke-virtual {v0, v4, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 251
    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :goto_15
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, v18

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_1d
    return-void
.end method
