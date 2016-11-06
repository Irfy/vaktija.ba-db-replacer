.class public Lba/vaktija/android/util/FormattingUtils;
.super Ljava/lang/Object;
.source "FormattingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/util/FormattingUtils$Case;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    .line 19
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    return-object v0
.end method

.method public static getCaseTitle(II)Ljava/lang/String;
    .locals 1
    .param p0, "vakatId"    # I
    .param p1, "caseId"    # I

    .prologue
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 175
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 133
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 139
    :pswitch_1
    packed-switch p1, :pswitch_data_2

    .line 145
    :pswitch_2
    packed-switch p1, :pswitch_data_3

    .line 151
    :pswitch_3
    packed-switch p1, :pswitch_data_4

    .line 157
    :pswitch_4
    packed-switch p1, :pswitch_data_5

    .line 163
    :pswitch_5
    packed-switch p1, :pswitch_data_6

    .line 169
    :pswitch_6
    packed-switch p1, :pswitch_data_7

    goto :goto_0

    .line 171
    :pswitch_7
    const-string v0, "d\u017eumu"

    goto :goto_1

    .line 135
    :pswitch_8
    const-string v0, "zoru"

    goto :goto_1

    .line 141
    :pswitch_9
    const-string v0, "izlazak Sunca"

    goto :goto_1

    .line 147
    :pswitch_a
    const-string v0, "podne"

    goto :goto_1

    .line 153
    :pswitch_b
    const-string v0, "ikindiju"

    goto :goto_1

    .line 159
    :pswitch_c
    const-string v0, "ak\u0161am"

    goto :goto_1

    .line 165
    :pswitch_d
    const-string v0, "jaciju"

    goto :goto_1

    .line 131
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

    .line 133
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch

    .line 139
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch

    .line 145
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch

    .line 151
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch

    .line 157
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch

    .line 163
    :pswitch_data_6
    .packed-switch 0x4
        :pswitch_d
    .end packed-switch

    .line 169
    :pswitch_data_7
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public static getFormattedTime(JZ)Ljava/lang/String;
    .locals 12
    .param p0, "milliseconds"    # J
    .param p2, "withSeconds"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    const-wide/16 v4, 0x3e8

    div-long v4, p0, v4

    long-to-int v4, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 28
    .local v3, "seconds":I
    const-wide/32 v4, 0xea60

    div-long v4, p0, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 29
    .local v1, "minutes":I
    const-wide/32 v4, 0x36ee80

    div-long v4, p0, v4

    const-wide/16 v6, 0x18

    rem-long/2addr v4, v6

    long-to-int v0, v4

    .line 31
    .local v0, "hours":I
    const-string v4, "%02d:%02d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 34
    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_0
    return-object v2
.end method

.method static getSuffixForNumber(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I
    .param p1, "maleGender"    # Z

    .prologue
    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "numString":Ljava/lang/String;
    const-string v1, "i"

    .line 105
    .local v1, "suffix":Ljava/lang/String;
    const-string v2, "i"

    .line 107
    .local v2, "suffixFemale":Ljava/lang/String;
    const/16 v3, 0xa

    if-le p0, v3, :cond_1

    const/16 v3, 0xf

    if-ge p0, v3, :cond_1

    .line 108
    if-eqz p1, :cond_0

    const-string v3, "i"

    .line 127
    :goto_0
    return-object v3

    .line 108
    :cond_0
    const-string v3, "a"

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 127
    :goto_1
    if-eqz p1, :cond_2

    move-object v3, v1

    goto :goto_0

    .line 112
    :pswitch_0
    const-string v1, "i"

    .line 113
    const-string v2, "a"

    .line 114
    goto :goto_1

    .line 116
    :pswitch_1
    const-string v1, ""

    .line 117
    const-string v2, "a"

    .line 118
    goto :goto_1

    .line 120
    :pswitch_2
    const-string v1, "a"

    .line 121
    const-string v2, "e"

    .line 122
    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 127
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimeString(IZ)Ljava/lang/String;
    .locals 10
    .param p0, "totalSecs"    # I
    .param p1, "ceil"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    add-int/lit8 p0, p0, 0x3c

    .line 54
    :cond_0
    rem-int/lit8 v3, p0, 0x3c

    .line 55
    .local v3, "seconds":I
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 56
    .local v1, "minutes":I
    div-int/lit16 v4, p0, 0xe10

    rem-int/lit8 v0, v4, 0x18

    .line 61
    .local v0, "hours":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%dh %dm"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%dh"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_1
    if-nez v0, :cond_2

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%dm"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_3

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "0m %ds"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_3
    return-object v2
.end method

.method public static getTimeStringDots(I)Ljava/lang/String;
    .locals 9
    .param p0, "totalSecs"    # I

    .prologue
    .line 82
    rem-int/lit8 v3, p0, 0x3c

    .line 83
    .local v3, "seconds":I
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 84
    .local v1, "minutes":I
    div-int/lit16 v4, p0, 0xe10

    rem-int/lit8 v0, v4, 0x18

    .line 86
    .local v0, "hours":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static getVakatAnnouncement(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v1, "Nastupio"

    .line 93
    .local v1, "gender":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " je "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "announcement":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    .line 95
    const-string v1, "Nastupila"

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 97
    const-string v1, "Nastupilo"

    .line 99
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
