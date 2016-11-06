.class public Lba/vaktija/android/prefs/Defaults;
.super Ljava/lang/Object;
.source "Defaults.java"


# static fields
.field public static ALARM_TONE_TITLE:Ljava/lang/String; = null

.field public static final ALL_PRAYERS_IN_NOTIF_DEFAULT:Z = false

.field public static final LOCATION_ID:I = 0x6b

.field public static final LOCATION_NAME:Ljava/lang/String; = "Sarajevo"

.field public static NOTIF_TONE_TITLE:Ljava/lang/String; = null

.field public static final STATUSBAR_NOTIFICATION:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Default (Beep)"

    sput-object v0, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    .line 15
    const-string v0, "Default (Beep Beep)"

    sput-object v0, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanDefault(ILjava/lang/String;)Z
    .locals 3
    .param p0, "prayerId"    # I
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 91
    :pswitch_0
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :pswitch_1
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_6
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    :pswitch_2
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 129
    :cond_7
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 130
    goto/16 :goto_0

    .line 131
    :cond_8
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 133
    :cond_9
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 134
    goto/16 :goto_0

    .line 135
    :cond_a
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    :pswitch_3
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 144
    goto/16 :goto_0

    .line 145
    :cond_b
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 146
    goto/16 :goto_0

    .line 147
    :cond_c
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_d
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 151
    :cond_e
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    :pswitch_4
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 161
    :cond_f
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 162
    goto/16 :goto_0

    .line 163
    :cond_10
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 165
    :cond_11
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    .line 166
    goto/16 :goto_0

    .line 167
    :cond_12
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :pswitch_5
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 177
    :cond_13
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    .line 178
    goto/16 :goto_0

    .line 179
    :cond_14
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 181
    :cond_15
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 182
    goto/16 :goto_0

    .line 183
    :cond_16
    const-string v2, "silentVibroOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    :pswitch_6
    const-string v2, "skipNextAlarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "alarmOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const-string v2, "silentOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 193
    :cond_17
    const-string v2, "notifOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 195
    :cond_18
    const-string v2, "notifSoundOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    .line 196
    goto/16 :goto_0

    .line 197
    :cond_19
    const-string v2, "notifVibroOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 199
    :cond_1a
    const-string v1, "silentVibroOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public static getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmTone"    # Z

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 v0, 0x7f060000

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f060001

    goto :goto_0
.end method

.method public static getIntDefault(ILjava/lang/String;)I
    .locals 4
    .param p0, "prayerId"    # I
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x2d

    const/16 v2, 0x1e

    const/16 v1, 0xf

    .line 207
    packed-switch p0, :pswitch_data_0

    .line 267
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 211
    :pswitch_0
    const-string v3, "alarmMins"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    const-string v3, "notifTime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_2
    const-string v3, "silentTimeout"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    :pswitch_1
    const-string v3, "alarmMins"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const/16 v0, 0x23

    goto :goto_0

    .line 223
    :cond_4
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const/16 v0, -0x1e

    goto :goto_0

    .line 227
    :cond_5
    :pswitch_2
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 228
    goto :goto_0

    .line 229
    :cond_6
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 230
    goto :goto_0

    .line 231
    :cond_7
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    const/16 v0, 0x19

    goto :goto_0

    .line 235
    :cond_8
    :pswitch_3
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 236
    goto :goto_0

    .line 237
    :cond_9
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 238
    goto :goto_0

    .line 239
    :cond_a
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    const/16 v0, 0x32

    goto :goto_0

    .line 243
    :cond_b
    :pswitch_4
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    .line 244
    goto/16 :goto_0

    .line 245
    :cond_c
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 246
    goto/16 :goto_0

    .line 247
    :cond_d
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 248
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 251
    :cond_e
    :pswitch_5
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 252
    goto/16 :goto_0

    .line 253
    :cond_f
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 254
    goto/16 :goto_0

    .line 255
    :cond_10
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 259
    :cond_11
    :pswitch_6
    const-string v0, "alarmMins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    .line 260
    goto/16 :goto_0

    .line 261
    :cond_12
    const-string v0, "notifTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    .line 262
    goto/16 :goto_0

    .line 263
    :cond_13
    const-string v0, "silentTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 264
    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public static getMaxValue(ILjava/lang/String;)I
    .locals 5
    .param p0, "prayerId"    # I
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5a

    const/16 v3, 0x32

    const/16 v1, 0x1e

    const/16 v0, 0x3c

    .line 24
    packed-switch p0, :pswitch_data_0

    .line 83
    :cond_0
    const/16 v0, 0x14

    :cond_1
    :goto_0
    return v0

    .line 27
    :pswitch_0
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 29
    const-string v4, "notif"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 31
    const-string v4, "silent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    :pswitch_1
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const-string v4, "notif"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :pswitch_2
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    const-string v2, "notif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :pswitch_3
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    const-string v2, "notif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :pswitch_4
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    const-string v2, "notif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :pswitch_5
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string v2, "notif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 72
    goto/16 :goto_0

    .line 75
    :cond_5
    :pswitch_6
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v3

    .line 76
    goto/16 :goto_0

    .line 77
    :cond_6
    const-string v1, "notif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 78
    goto/16 :goto_0

    .line 79
    :cond_7
    const-string v1, "silent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
