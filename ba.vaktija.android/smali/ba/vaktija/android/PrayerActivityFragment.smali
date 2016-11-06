.class public Lba/vaktija/android/PrayerActivityFragment;
.super Landroid/support/v4/app/Fragment;
.source "PrayerActivityFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final EXTRA_PRAYER_ID:Ljava/lang/String; = "EXTRA_PRAYER_ID"

.field private static final EXTRA_RESPECT_JUMA:Ljava/lang/String; = "EXTRA_RESPECT_JUMA"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field alarm:Landroid/support/v7/widget/CardView;

.field alarmButton:Landroid/support/v7/widget/SwitchCompat;

.field alarmCheckBox:Landroid/widget/CheckBox;

.field alarmOptionsWrapper:Landroid/view/View;

.field alarmSeekBar:Landroid/widget/SeekBar;

.field alarmTime:Landroid/widget/TextView;

.field app:Lba/vaktija/android/App;

.field cardElev:F

.field cardElevEnabled:F

.field colorDisabled:I

.field colorEnabled:I

.field invertValues:Z

.field mPrayer:Lba/vaktija/android/models/Prayer;

.field private mUseCheckBoxes:Z

.field notif:Landroid/support/v7/widget/CardView;

.field notifButton:Landroid/support/v7/widget/SwitchCompat;

.field notifCheckBox:Landroid/widget/CheckBox;

.field notifOnTime:Landroid/widget/TextView;

.field notifOptionsWrapper:Landroid/view/View;

.field notifTime:Landroid/widget/SeekBar;

.field notifUseSound:Landroid/widget/CheckBox;

.field notifUseVibro:Landroid/widget/CheckBox;

.field private respectJuma:Z

.field silent:Landroid/support/v7/widget/CardView;

.field silentButton:Landroid/support/v7/widget/SwitchCompat;

.field silentCheckBox:Landroid/widget/CheckBox;

.field silentOffSeekBar:Landroid/widget/SeekBar;

.field soundLabel:Landroid/widget/TextView;

.field soundOffTime:Landroid/widget/TextView;

.field soundOptionsWrapper:Landroid/view/View;

.field vibroOff:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    return-void
.end method

.method public static newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;
    .locals 3
    .param p0, "prayerId"    # I
    .param p1, "respectJuma"    # Z

    .prologue
    .line 87
    new-instance v1, Lba/vaktija/android/PrayerActivityFragment;

    invoke-direct {v1}, Lba/vaktija/android/PrayerActivityFragment;-><init>()V

    .line 88
    .local v1, "fragment":Lba/vaktija/android/PrayerActivityFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_PRAYER_ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v2, "EXTRA_RESPECT_JUMA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {v1, v0}, Lba/vaktija/android/PrayerActivityFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private updateCheckBoxColor()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 257
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 260
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    goto :goto_0

    .line 257
    :cond_2
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    goto :goto_1

    .line 260
    :cond_3
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x6

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/16 v12, 0x8

    const/4 v9, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    sget-object v7, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v10, "onActivityCreated"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lba/vaktija/android/App;

    iput-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    .line 141
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "EXTRA_RESPECT_JUMA"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    .line 143
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "EXTRA_PRAYER_ID"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, "prayerId":I
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v7}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v7

    invoke-virtual {v7, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    iput-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 147
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0d0051

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    .line 148
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0d004f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    .line 150
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    if-ne v7, v13, :cond_0

    iget-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    if-nez v7, :cond_0

    .line 151
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v7}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v7

    invoke-virtual {v7, v11}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    iput-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 154
    :cond_0
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    if-ne v7, v11, :cond_1

    iget-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    if-eqz v7, :cond_1

    .line 155
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v7}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v7

    invoke-virtual {v7, v13}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v7

    iput-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 158
    :cond_1
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    iget-object v10, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v10}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v10

    const-string v11, "alarm"

    invoke-static {v10, v11}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 159
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    iget-object v10, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v10}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v10

    const-string v11, "notif"

    invoke-static {v10, v11}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 160
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    iget-object v10, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v10}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v10

    const-string v11, "silent"

    invoke-static {v10, v11}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 162
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ge v7, v10, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mUseCheckBoxes:Z

    .line 164
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    .line 166
    iget-object v10, p0, Lba/vaktija/android/PrayerActivityFragment;->soundLabel:Landroid/widget/TextView;

    iget-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v7, :cond_5

    const-string v7, "ISKLJU\u010cIVANJE ZVUKOVA"

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0e0085

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 169
    .local v3, "silentDesc":Landroid/widget/TextView;
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    if-ne v7, v8, :cond_6

    const v7, 0x7f070059

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 173
    sget-object v7, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPrayer="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v7, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "respectJuma="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->showActionBarTitle()V

    .line 178
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 179
    .local v6, "soundOnMins":I
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v1

    .line 180
    .local v1, "notifMins":I
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v0

    .line 182
    .local v0, "alarmMins":I
    mul-int/lit8 v7, v6, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v4, v7

    .line 184
    .local v4, "soundOnMillis":J
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0xea60

    mul-int/2addr v10, v0

    int-to-long v10, v10

    invoke-static {v10, v11, v9}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " prije nastupa"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5, v9}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v7, :cond_7

    const-string v7, " prije nastupa"

    :goto_4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0xea60

    mul-int/2addr v10, v1

    int-to-long v10, v10

    .line 190
    invoke-static {v10, v11, v9}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " prije nastupa"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifSoundOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifVibroOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 197
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 200
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080052

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    .line 205
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    .line 207
    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroid/support/v7/widget/CardView;

    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_5
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 208
    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroid/support/v7/widget/CardView;

    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_6
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 209
    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroid/support/v7/widget/CardView;

    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_7
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 211
    iget-boolean v7, p0, Lba/vaktija/android/PrayerActivityFragment;->mUseCheckBoxes:Z

    if-eqz v7, :cond_b

    .line 212
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, v12}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 221
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, v12}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 222
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, v12}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 237
    :goto_8
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 242
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 243
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 245
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 246
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget v8, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 247
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 248
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 251
    :cond_2
    invoke-direct {p0}, Lba/vaktija/android/PrayerActivityFragment;->updateCheckBoxColor()V

    .line 252
    return-void

    .end local v0    # "alarmMins":I
    .end local v1    # "notifMins":I
    .end local v3    # "silentDesc":Landroid/widget/TextView;
    .end local v4    # "soundOnMillis":J
    .end local v6    # "soundOnMins":I
    :cond_3
    move v7, v9

    .line 162
    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 164
    goto/16 :goto_1

    .line 166
    :cond_5
    const-string v7, "UKLJU\u010cIVANJE ZVUKOVA"

    goto/16 :goto_2

    .line 169
    .restart local v3    # "silentDesc":Landroid/widget/TextView;
    :cond_6
    const v7, 0x7f070058

    goto/16 :goto_3

    .line 186
    .restart local v0    # "alarmMins":I
    .restart local v1    # "notifMins":I
    .restart local v4    # "soundOnMillis":J
    .restart local v6    # "soundOnMins":I
    :cond_7
    const-string v7, " nakon nastupa"

    goto/16 :goto_4

    .line 207
    :cond_8
    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto/16 :goto_5

    .line 208
    :cond_9
    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto/16 :goto_6

    .line 209
    :cond_a
    iget v7, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto/16 :goto_7

    .line 224
    :cond_b
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroid/support/v7/widget/SwitchCompat;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 225
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroid/support/v7/widget/SwitchCompat;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 226
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroid/support/v7/widget/SwitchCompat;

    iget-object v8, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 228
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 232
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 233
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 234
    iget-object v7, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 20
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 367
    sget-object v2, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCheckedChanged"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 371
    .local v12, "start":J
    const-string v14, ""

    .line 372
    .local v14, "startedFrom":Ljava/lang/String;
    const-string v8, ""

    .line 373
    .local v8, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "gaEventCategory":Ljava/lang/String;
    const-string v9, ""

    .line 376
    .local v9, "gaEventAction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 461
    :goto_0
    :pswitch_0
    move-object v5, v8

    .line 462
    .local v5, "serviceAction":Ljava/lang/String;
    move-object v4, v14

    .line 463
    .local v4, "serviceStartedFrom":Ljava/lang/String;
    move-object v7, v9

    .line 465
    .local v7, "eventAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->save()V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lba/vaktija/android/PrayerActivityFragment;->getView()Landroid/view/View;

    move-result-object v15

    new-instance v2, Lba/vaktija/android/PrayerActivityFragment$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lba/vaktija/android/PrayerActivityFragment$1;-><init>(Lba/vaktija/android/PrayerActivityFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v15, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 482
    .local v10, "endTime":J
    sget-object v2, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onChecked changed done in "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v16, v10, v12

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " us"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 378
    .end local v4    # "serviceStartedFrom":Ljava/lang/String;
    .end local v5    # "serviceAction":Ljava/lang/String;
    .end local v7    # "eventAction":Ljava/lang/String;
    .end local v10    # "endTime":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setNotifSoundOn(Z)V

    .line 380
    const-string v14, "onCheckedChanged-activity_vakat_notifUseSound"

    .line 381
    const-string v8, "ACTION_NOTIF_CHANGED"

    .line 382
    if-eqz p2, :cond_0

    const-string v9, "Enabled sound for notifications"

    .line 385
    :goto_1
    goto :goto_0

    .line 382
    :cond_0
    const-string v9, "Disabled sound for notifications"

    goto :goto_1

    .line 388
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setNotifVibroOn(Z)V

    .line 390
    const-string v14, "onCheckedChanged-activity_vakat_notifUseVibro"

    .line 391
    const-string v8, "ACTION_NOTIF_CHANGED"

    .line 393
    if-eqz p2, :cond_1

    const-string v9, "Enabled vibration for notifications"

    .line 396
    :goto_2
    goto :goto_0

    .line 393
    :cond_1
    const-string v9, "Disabled vibration for notifications"

    goto :goto_2

    .line 399
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setSilentVibrationOff(Z)V

    .line 401
    const-string v14, "onCheckedChanged-activity_vakat_vibroOff"

    .line 402
    const-string v8, "ACTION_SILENT_CHANGED"

    .line 404
    if-eqz p2, :cond_2

    const-string v9, "Disabled vibration in silent mode"

    .line 406
    :goto_3
    goto/16 :goto_0

    .line 404
    :cond_2
    const-string v9, "Enabled vibration in silent mode"

    goto :goto_3

    .line 411
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroid/support/v7/widget/CardView;

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_4
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lba/vaktija/android/models/Prayer;->setSkipNextAlarm(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setAlarmOn(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    const-string v14, "onCheckedChanged-activity_vakat_alarmSwitch"

    .line 417
    const-string v8, "ACTION_ALARM_CHANGED"

    .line 419
    if-eqz p2, :cond_4

    const-string v9, "Enabled alarm"

    .line 421
    :goto_5
    goto/16 :goto_0

    .line 411
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto :goto_4

    .line 419
    :cond_4
    const-string v9, "Disabled alarm"

    goto :goto_5

    .line 426
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroid/support/v7/widget/CardView;

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_6
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lba/vaktija/android/models/Prayer;->setSkipNextNotif(Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setNotifOn(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    const-string v14, "onCheckedChanged-activity_vakat_notifSwitch"

    .line 436
    const-string v8, "ACTION_NOTIF_CHANGED"

    .line 438
    if-eqz p2, :cond_6

    const-string v9, "Enabled notification"

    .line 440
    :goto_7
    goto/16 :goto_0

    .line 426
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto :goto_6

    .line 438
    :cond_6
    const-string v9, "Disabled notification"

    goto :goto_7

    .line 445
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroid/support/v7/widget/CardView;

    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    :goto_9
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lba/vaktija/android/models/Prayer;->setSilentOn(Z)V

    .line 453
    const-string v14, "onCheckedChanged-activity_vakat_silentSwitch"

    .line 454
    const-string v8, "ACTION_SILENT_CHANGED"

    .line 456
    if-eqz p2, :cond_9

    const-string v9, "Enabled silent mode"

    :goto_a
    goto/16 :goto_0

    .line 445
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    goto :goto_8

    .line 446
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    goto :goto_9

    .line 456
    :cond_9
    const-string v9, "Disabled silent mode"

    goto :goto_a

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0072
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 98
    sget-object v1, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroid/support/v7/widget/CardView;

    .line 102
    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroid/support/v7/widget/CardView;

    .line 103
    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroid/support/v7/widget/CardView;

    .line 105
    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroid/support/v7/widget/SwitchCompat;

    .line 106
    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroid/support/v7/widget/SwitchCompat;

    .line 107
    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroid/support/v7/widget/SwitchCompat;

    .line 109
    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    .line 110
    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    .line 111
    const v1, 0x7f0e007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    .line 113
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    .line 114
    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    .line 115
    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    .line 117
    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    .line 118
    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    .line 119
    const v1, 0x7f0e007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    .line 121
    const v1, 0x7f0e0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f0e007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    .line 124
    const v1, 0x7f0e007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    .line 125
    const v1, 0x7f0e007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->soundLabel:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0e0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    .line 131
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0e0076

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setAlarmMins(I)V

    .line 286
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3, v4}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prije nastupa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0e0089

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-boolean v0, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lba/vaktija/android/models/Prayer;->setSoundOnMins(I)V

    .line 292
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 293
    invoke-static {v2, v3, v4}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v0, :cond_4

    const-string v0, " prije"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nastupa"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0e007f

    if-ne v0, v1, :cond_2

    .line 299
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setNotifMins(I)V

    .line 301
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3, v4}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prije nastupa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    return-void

    .line 290
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :cond_4
    const-string v0, " nakon"

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 306
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v7, 0x0

    .line 310
    sget-object v3, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v4, "onStopTrackingTouch"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, ""

    .line 314
    .local v2, "startedFrom":Ljava/lang/String;
    const-string v0, ""

    .line 316
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 349
    :goto_0
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->save()V

    .line 351
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 353
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silentNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 354
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "approachingNotifDeleted_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 355
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 356
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 359
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 362
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 363
    return-void

    .line 319
    .end local v1    # "service":Landroid/content/Intent;
    :sswitch_0
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/Prayer;->setAlarmMins(I)V

    .line 321
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm time set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "ACTION_ALARM_CHANGED"

    .line 324
    const-string v2, "activity_vakat_alarmSeekBar"

    .line 326
    goto/16 :goto_0

    .line 329
    :sswitch_1
    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget-boolean v3, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_1
    mul-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lba/vaktija/android/models/Prayer;->setSoundOnMins(I)V

    .line 331
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent off time set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "ACTION_SILENT_CHANGED"

    .line 334
    const-string v2, "activity_vakat_silentOffSeekBar"

    .line 336
    goto/16 :goto_0

    .line 329
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 339
    :sswitch_2
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Lba/vaktija/android/models/Prayer;->setNotifMins(I)V

    .line 341
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification time set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "ACTION_NOTIF_CHANGED"

    .line 344
    const-string v2, "activity_vakat_notifTime"

    goto/16 :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0076 -> :sswitch_0
        0x7f0e007f -> :sswitch_2
        0x7f0e0089 -> :sswitch_1
    .end sparse-switch
.end method

.method showActionBarTitle()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 266
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "title":Ljava/lang/String;
    sget-object v3, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "separateJumaSettings"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 270
    .local v1, "respect":Z
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v0, v4

    .line 271
    .local v0, "hideTitle":Z
    :goto_0
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_1
    or-int/2addr v0, v3

    .line 273
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 274
    const-string v2, ""

    .line 277
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 278
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 279
    return-void

    .end local v0    # "hideTitle":Z
    :cond_1
    move v0, v5

    .line 270
    goto :goto_0

    .restart local v0    # "hideTitle":Z
    :cond_2
    move v3, v5

    .line 271
    goto :goto_1
.end method
