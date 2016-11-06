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

    .prologue
    .line 33
    const-class v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 40
    sget-object v23, Lba/vaktija/android/widget/VaktijaWidgetProvider;->TAG:Ljava/lang/String;

    const-string v24, "onUpdate"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .line 43
    .local v16, "n":I
    if-nez v16, :cond_1

    .line 254
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v18

    .line 48
    .local v18, "schedule":Lba/vaktija/android/models/PrayersSchedule;
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lba/vaktija/android/widget/VaktijaWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    .line 50
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v9

    .line 51
    .local v9, "fajr":Lba/vaktija/android/models/Prayer;
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v19

    .line 52
    .local v19, "sunrise":Lba/vaktija/android/models/Prayer;
    const/16 v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v8

    .line 53
    .local v8, "dhuhr":Lba/vaktija/android/models/Prayer;
    const/16 v23, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v5

    .line 54
    .local v5, "asr":Lba/vaktija/android/models/Prayer;
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v14

    .line 55
    .local v14, "maghrib":Lba/vaktija/android/models/Prayer;
    const/16 v23, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v13

    .line 57
    .local v13, "ishaa":Lba/vaktija/android/models/Prayer;
    invoke-virtual/range {v18 .. v18}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 58
    const/16 v23, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v8

    .line 61
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lba/vaktija/android/widget/VaktijaWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "locationName"

    const-string v25, "Beč (Džemat Bosna)"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "city":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-class v23, Lba/vaktija/android/MainActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v23, 0x20000

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const/16 v23, 0x3039

    const/high16 v24, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 72
    .local v17, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d004e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 74
    .local v20, "textColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d0051

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    .line 76
    .local v21, "themeColor":I
    const/4 v12, 0x0

    .line 80
    .local v12, "isKeyguard":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 81
    aget v4, p3, v10

    .line 83
    .local v4, "appWidgetId":I
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 85
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v15

    .line 87
    .local v15, "myOptions":Landroid/os/Bundle;
    const-string v23, "appWidgetCategory"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 88
    .local v6, "category":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v6, v0, :cond_3

    const/4 v12, 0x1

    .line 90
    :goto_1
    if-eqz v12, :cond_4

    .line 91
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const v24, 0x7f03003e

    invoke-direct/range {v22 .. v24}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v22, "views":Landroid/widget/RemoteViews;
    const v23, 0x7f0e00e0

    .line 94
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v24

    .line 95
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v25

    const/16 v26, 0x1

    .line 93
    invoke-static/range {v24 .. v26}, Lba/vaktija/android/util/Utils;->getTimeTillNext(Lba/vaktija/android/models/Prayer;IZ)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 98
    const v23, 0x7f0e00e1

    .line 99
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentAndNextTime()Ljava/lang/CharSequence;

    move-result-object v24

    .line 98
    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 80
    .end local v6    # "category":I
    .end local v15    # "myOptions":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 88
    .end local v22    # "views":Landroid/widget/RemoteViews;
    .restart local v6    # "category":I
    .restart local v15    # "myOptions":Landroid/os/Bundle;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 107
    .end local v6    # "category":I
    .end local v15    # "myOptions":Landroid/os/Bundle;
    :cond_4
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const v24, 0x7f03003d

    invoke-direct/range {v22 .. v24}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    const v23, 0x7f0e00b8

    const-string v24, "setBackgroundResource"

    const v25, 0x7f02007c

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 115
    const v23, 0x7f0e00b9

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 121
    const v23, 0x7f0e00ba

    const-string v24, "vaktija.ba"

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 121
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 129
    const v24, 0x7f0e00be

    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    const v24, 0x7f0e00c4

    invoke-virtual/range {v19 .. v19}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    const v24, 0x7f0e00ca

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    const v24, 0x7f0e00d0

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x0

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 133
    const v24, 0x7f0e00d6

    invoke-virtual {v14}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x0

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    const v24, 0x7f0e00dc

    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    const v24, 0x7f0e00bf

    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v23, 0x0

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    const v24, 0x7f0e00c5

    invoke-virtual/range {v19 .. v19}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x0

    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    const v24, 0x7f0e00cb

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    const v24, 0x7f0e00d1

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_e

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    const v24, 0x7f0e00d7

    invoke-virtual {v14}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_f

    const/16 v23, 0x0

    :goto_d
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    const v24, 0x7f0e00dd

    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v23

    if-eqz v23, :cond_10

    const/16 v23, 0x0

    :goto_e
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    const v24, 0x7f0e00c0

    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v23, 0x0

    :goto_f
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    const v24, 0x7f0e00c6

    invoke-virtual/range {v19 .. v19}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_12

    const/16 v23, 0x0

    :goto_10
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    const v24, 0x7f0e00cc

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    :goto_11
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    const v24, 0x7f0e00d2

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v23, 0x0

    :goto_12
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    const v24, 0x7f0e00d8

    invoke-virtual {v14}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    :goto_13
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    const v24, 0x7f0e00de

    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    :goto_14
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    const v23, 0x7f0e00bc

    .line 152
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 156
    const v23, 0x7f0e00c3

    .line 158
    invoke-virtual/range {v19 .. v19}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 162
    const v23, 0x7f0e00c9

    .line 164
    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 168
    const v23, 0x7f0e00cf

    .line 170
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 168
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 174
    const v23, 0x7f0e00d5

    .line 176
    invoke-virtual {v14}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 174
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 180
    const v23, 0x7f0e00db

    .line 182
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lba/vaktija/android/util/FormattingUtils;->getTimeStringDots(I)Ljava/lang/String;

    move-result-object v24

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 186
    const v23, 0x7f0e00c1

    .line 188
    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 192
    const v23, 0x7f0e00c7

    const-string v24, "I. SUNCA"

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 192
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 198
    const v23, 0x7f0e00cd

    .line 200
    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 204
    const v23, 0x7f0e00d3

    .line 206
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 210
    const v23, 0x7f0e00d9

    .line 212
    invoke-virtual {v14}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 210
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 216
    const v23, 0x7f0e00df

    .line 218
    invoke-virtual {v13}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lba/vaktija/android/util/Utils;->getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 222
    const v23, 0x7f0e00bb

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 223
    const v23, 0x7f0e00c2

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 224
    const v23, 0x7f0e00c8

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 225
    const v23, 0x7f0e00ce

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 226
    const v23, 0x7f0e00d4

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 227
    const v23, 0x7f0e00da

    const-string v24, "setBackgroundColor"

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 229
    invoke-static/range {p1 .. p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 250
    :goto_15
    const v23, 0x7f0e00b8

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 252
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_2

    .line 129
    :cond_5
    const/16 v23, 0x8

    goto/16 :goto_3

    .line 130
    :cond_6
    const/16 v23, 0x8

    goto/16 :goto_4

    .line 131
    :cond_7
    const/16 v23, 0x8

    goto/16 :goto_5

    .line 132
    :cond_8
    const/16 v23, 0x8

    goto/16 :goto_6

    .line 133
    :cond_9
    const/16 v23, 0x8

    goto/16 :goto_7

    .line 134
    :cond_a
    const/16 v23, 0x8

    goto/16 :goto_8

    .line 136
    :cond_b
    const/16 v23, 0x8

    goto/16 :goto_9

    .line 137
    :cond_c
    const/16 v23, 0x8

    goto/16 :goto_a

    .line 138
    :cond_d
    const/16 v23, 0x8

    goto/16 :goto_b

    .line 139
    :cond_e
    const/16 v23, 0x8

    goto/16 :goto_c

    .line 140
    :cond_f
    const/16 v23, 0x8

    goto/16 :goto_d

    .line 141
    :cond_10
    const/16 v23, 0x8

    goto/16 :goto_e

    .line 143
    :cond_11
    const/16 v23, 0x8

    goto/16 :goto_f

    .line 144
    :cond_12
    const/16 v23, 0x8

    goto/16 :goto_10

    .line 145
    :cond_13
    const/16 v23, 0x8

    goto/16 :goto_11

    .line 146
    :cond_14
    const/16 v23, 0x8

    goto/16 :goto_12

    .line 147
    :cond_15
    const/16 v23, 0x8

    goto/16 :goto_13

    .line 148
    :cond_16
    const/16 v23, 0x8

    goto/16 :goto_14

    .line 231
    :pswitch_0
    const v23, 0x7f0e00bb

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_15

    .line 234
    :pswitch_1
    const v23, 0x7f0e00c2

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_15

    .line 237
    :pswitch_2
    const v23, 0x7f0e00c8

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_15

    .line 240
    :pswitch_3
    const v23, 0x7f0e00ce

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_15

    .line 243
    :pswitch_4
    const v23, 0x7f0e00d4

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_15

    .line 246
    :pswitch_5
    const v23, 0x7f0e00da

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_15

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
