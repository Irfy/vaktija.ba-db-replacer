.class public Lba/vaktija/android/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lba/vaktija/android/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/util/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v3, "\\d"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 91
    .local v1, "pattern":Ljava/util/regex/Pattern;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v2, "sbOut":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 98
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 99
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    .line 96
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 103
    :cond_0
    return-object v2
.end method

.method public static concatArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 38
    array-length v0, p0

    .line 39
    .local v0, "aLen":I
    array-length v1, p1

    .line 40
    .local v1, "bLen":I
    add-int v3, v0, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 41
    .local v2, "c":[Ljava/lang/String;
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object v2
.end method

.method public static convertDiptoPix(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .prologue
    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 77
    .local v0, "value":I
    return v0
.end method

.method public static getCurrentTimeSec()I
    .locals 6

    .prologue
    .line 28
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 30
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 31
    .local v1, "currentHours":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 32
    .local v2, "currentMins":I
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 34
    .local v3, "currentSec":I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4
.end method

.method public static getFontBitmap(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "fontSizeSP"    # F

    .prologue
    .line 56
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lba/vaktija/android/util/Utils;->convertDiptoPix(Landroid/content/Context;F)I

    move-result v4

    .line 57
    .local v4, "fontSizePX":I
    div-int/lit8 v6, v4, 0x9

    .line 58
    .local v6, "pad":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 59
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "fonts/RobotoCondensed-Light.ttf"

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 60
    .local v9, "typeface":Landroid/graphics/Typeface;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    int-to-float v11, v4

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 66
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    mul-int/lit8 v12, v6, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    float-to-int v8, v11

    .line 67
    .local v8, "textWidth":I
    int-to-double v12, v4

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    div-double/2addr v12, v14

    double-to-int v5, v12

    .line 68
    .local v5, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v3, "canvas":Landroid/graphics/Canvas;
    int-to-float v10, v6

    .line 71
    .local v10, "xOriginal":F
    int-to-float v11, v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    return-object v2
.end method

.method public static getTimeTillNext(Lba/vaktija/android/models/Prayer;IZ)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "currentPrayer"    # Lba/vaktija/android/models/Prayer;
    .param p1, "seconds"    # I
    .param p2, "ceil"    # Z

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {v2}, Lba/vaktija/android/models/Prayer;->getNextVakatTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " je za "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "time":Ljava/lang/String;
    invoke-static {v0}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lba/vaktija/android/widget/VaktijaWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lba/vaktija/android/widget/VaktijaWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 51
    .local v0, "ids":[I
    const-string v2, "appWidgetIds"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
