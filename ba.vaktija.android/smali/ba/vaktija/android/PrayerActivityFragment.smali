.class public Lba/vaktija/android/PrayerActivityFragment;
.super Landroidx/fragment/app/Fragment;
.source "PrayerActivityFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final EXTRA_PRAYER_ID:Ljava/lang/String; = "EXTRA_PRAYER_ID"

.field private static final EXTRA_RESPECT_JUMA:Ljava/lang/String; = "EXTRA_RESPECT_JUMA"

.field private static final REQUEST_SYSTEM_SETTINGS:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field alarm:Landroidx/cardview/widget/CardView;

.field alarmButton:Landroidx/appcompat/widget/SwitchCompat;

.field alarmCheckBox:Landroid/widget/CheckBox;

.field alarmOptionsWrapper:Landroid/view/View;

.field alarmSeekBar:Landroid/widget/SeekBar;

.field alarmTime:Landroid/widget/TextView;

.field app:Lba/vaktija/android/App;

.field cardElev:F

.field cardElevEnabled:F

.field colorDisabled:I

.field colorEnabled:I

.field private doAfterGrantingDnd:Ljava/lang/Runnable;

.field invertValues:Z

.field mPrayer:Lba/vaktija/android/models/Prayer;

.field private mUseCheckBoxes:Z

.field notif:Landroidx/cardview/widget/CardView;

.field notifButton:Landroidx/appcompat/widget/SwitchCompat;

.field notifCheckBox:Landroid/widget/CheckBox;

.field notifOnTime:Landroid/widget/TextView;

.field notifOptionsWrapper:Landroid/view/View;

.field notifTime:Landroid/widget/SeekBar;

.field notifUseSound:Landroid/widget/CheckBox;

.field notifUseVibro:Landroid/widget/CheckBox;

.field private respectJuma:Z

.field silent:Landroidx/cardview/widget/CardView;

.field silentButton:Landroidx/appcompat/widget/SwitchCompat;

.field silentCheckBox:Landroid/widget/CheckBox;

.field silentOffSeekBar:Landroid/widget/SeekBar;

.field soundLabel:Landroid/widget/TextView;

.field soundOffTime:Landroid/widget/TextView;

.field soundOptionsWrapper:Landroid/view/View;

.field vibroOff:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    return-void
.end method

.method public static newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;
    .locals 3

    .line 93
    new-instance v0, Lba/vaktija/android/PrayerActivityFragment;

    invoke-direct {v0}, Lba/vaktija/android/PrayerActivityFragment;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXTRA_PRAYER_ID"

    .line 95
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "EXTRA_RESPECT_JUMA"

    .line 96
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v0, v1}, Lba/vaktija/android/PrayerActivityFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateCheckBoxColor()V
    .locals 2

    .line 262
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 263
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    sget-object p1, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    .line 147
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_RESPECT_JUMA"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    .line 149
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PRAYER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 151
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 153
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    .line 154
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    .line 156
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1, v0}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 160
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1, v2}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 164
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const-string v2, "alarm"

    invoke-static {v0, v2}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 165
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const-string v2, "notif"

    invoke-static {v0, v2}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 166
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const-string v2, "silent"

    invoke-static {v0, v2}, Lba/vaktija/android/prefs/Defaults;->getMaxValue(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    const/4 v2, 0x1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mUseCheckBoxes:Z

    .line 170
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    .line 172
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->soundLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const-string p1, "ISKLJU\u010cIVANJE ZVUKOVA"

    goto :goto_2

    :cond_4
    const-string p1, "UKLJU\u010cIVANJE ZVUKOVA"

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    if-ne v0, v2, :cond_5

    const v0, 0x7f0f0077

    goto :goto_3

    :cond_5
    const v0, 0x7f0f0076

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 179
    sget-object p1, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrayer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p1, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respectJuma="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lba/vaktija/android/PrayerActivityFragment;->respectJuma:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->showActionBarTitle()V

    .line 184
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 185
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v0

    .line 186
    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v2

    mul-int/lit8 v3, p1, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 190
    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0xea60

    mul-int v8, v2, v7

    int-to-long v8, v8

    invoke-static {v8, v9, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " prije nastupa"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v5, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v3, :cond_6

    move-object v3, v8

    goto :goto_4

    :cond_6
    const-string v3, " nakon nastupa"

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v7, v7, v0

    int-to-long v5, v7

    .line 196
    invoke-static {v5, v6, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isNotifSoundOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isNotifVibroOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentVibrationOff()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 203
    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 204
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 206
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    .line 211
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060051

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    .line 213
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_5

    :cond_7
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_5
    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 214
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_6

    :cond_8
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_6
    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 215
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_7

    :cond_9
    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_7
    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 217
    iget-boolean p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mUseCheckBoxes:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_a

    .line 218
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 219
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    goto :goto_8

    .line 230
    :cond_a
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 231
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 232
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 234
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 243
    :goto_8
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 248
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 249
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 251
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_b

    .line 252
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget v0, p0, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 253
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 254
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 257
    :cond_b
    invoke-direct {p0}, Lba/vaktija/android/PrayerActivityFragment;->updateCheckBoxColor()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 506
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 510
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->doAfterGrantingDnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 513
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->doAfterGrantingDnd:Ljava/lang/Runnable;

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11

    .line 374
    sget-object v0, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 383
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v2, 0x0

    const-string v3, "ACTION_NOTIF_CHANGED"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 406
    :sswitch_0
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/Prayer;->setSilentVibrationOff(Z)V

    const-string p1, "onCheckedChanged-activity_vakat_vibroOff"

    .line 408
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ACTION_SILENT_CHANGED"

    .line 409
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "Disabled vibration in silent mode"

    goto :goto_0

    :cond_0
    const-string p1, "Enabled vibration in silent mode"

    .line 411
    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 395
    :sswitch_1
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/Prayer;->setNotifVibroOn(Z)V

    const-string p1, "onCheckedChanged-activity_vakat_notifUseVibro"

    .line 397
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "Enabled vibration for notifications"

    goto :goto_1

    :cond_1
    const-string p1, "Disabled vibration for notifications"

    .line 400
    :goto_1
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 385
    :sswitch_2
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/Prayer;->setNotifSoundOn(Z)V

    const-string p1, "onCheckedChanged-activity_vakat_notifUseSound"

    .line 387
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p1, "Enabled sound for notifications"

    goto :goto_2

    :cond_2
    const-string p1, "Disabled sound for notifications"

    .line 389
    :goto_2
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 452
    :sswitch_3
    new-instance p1, Lba/vaktija/android/PrayerActivityFragment$1;

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Lba/vaktija/android/PrayerActivityFragment$1;-><init>(Lba/vaktija/android/PrayerActivityFragment;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->doAfterGrantingDnd:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    .line 470
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_3

    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    .line 471
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 473
    new-instance p1, Landroid/content/Intent;

    .line 474
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v2, Lba/vaktija/android/SystemSettingsHelperActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x64

    .line 473
    invoke-virtual {p0, p1, p2}, Lba/vaktija/android/PrayerActivityFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 477
    :cond_3
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->doAfterGrantingDnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    .line 433
    :sswitch_4
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroidx/cardview/widget/CardView;

    if-eqz p2, :cond_4

    iget v4, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_3

    :cond_4
    iget v4, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_3
    invoke-virtual {p1, v4}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 438
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextNotif(Z)V

    .line 439
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/Prayer;->setNotifOn(Z)V

    .line 440
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "onCheckedChanged-activity_vakat_notifSwitch"

    .line 442
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string p1, "Enabled notification"

    goto :goto_4

    :cond_5
    const-string p1, "Disabled notification"

    .line 445
    :goto_4
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 418
    :sswitch_5
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroidx/cardview/widget/CardView;

    if-eqz p2, :cond_6

    iget v3, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_5

    :cond_6
    iget v3, p0, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_5
    invoke-virtual {p1, v3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 419
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextAlarm(Z)V

    .line 420
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1, p2}, Lba/vaktija/android/models/Prayer;->setAlarmOn(Z)V

    .line 421
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "onCheckedChanged-activity_vakat_alarmSwitch"

    .line 423
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ACTION_ALARM_CHANGED"

    .line 424
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const-string p1, "Enabled alarm"

    goto :goto_6

    :cond_7
    const-string p1, "Disabled alarm"

    .line 426
    :goto_6
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :goto_7
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->save()V

    .line 485
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lba/vaktija/android/PrayerActivityFragment$2;

    invoke-direct {p2, p0, v8, v9, v10}, Lba/vaktija/android/PrayerActivityFragment$2;-><init>(Lba/vaktija/android/PrayerActivityFragment;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 500
    sget-object v2, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChecked changed done in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " us"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080048 -> :sswitch_5
        0x7f08004b -> :sswitch_5
        0x7f08004d -> :sswitch_4
        0x7f08004f -> :sswitch_4
        0x7f080052 -> :sswitch_3
        0x7f080054 -> :sswitch_3
        0x7f08008b -> :sswitch_2
        0x7f08008c -> :sswitch_1
        0x7f080091 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 104
    sget-object p3, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0b002d

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080047

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarm:Landroidx/cardview/widget/CardView;

    const p2, 0x7f08004c

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notif:Landroidx/cardview/widget/CardView;

    const p2, 0x7f080051

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroidx/cardview/widget/CardView;

    const p2, 0x7f08004b

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmButton:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f080054

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->silentButton:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f08004f

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifButton:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f080048

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f080052

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->silentCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f08004d

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f08004a

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmSeekBar:Landroid/widget/SeekBar;

    const p2, 0x7f080053

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->silentOffSeekBar:Landroid/widget/SeekBar;

    const p2, 0x7f080050

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifTime:Landroid/widget/SeekBar;

    const p2, 0x7f080049

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmOptionsWrapper:Landroid/view/View;

    const p2, 0x7f080055

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    const p2, 0x7f08004e

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOptionsWrapper:Landroid/view/View;

    const p2, 0x7f080087

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    const p2, 0x7f08008b

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseSound:Landroid/widget/CheckBox;

    const p2, 0x7f08008c

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifUseVibro:Landroid/widget/CheckBox;

    const p2, 0x7f080089

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    const p2, 0x7f08008f

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    const p2, 0x7f08008e

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->soundLabel:Landroid/widget/TextView;

    const p2, 0x7f080091

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 289
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    const-string v0, " prije nastupa"

    const/4 v1, 0x0

    const v2, 0x7f08004a

    if-ne p3, v2, :cond_0

    .line 290
    iget-object p3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {p3, v2}, Lba/vaktija/android/models/Prayer;->setAlarmMins(I)V

    .line 292
    iget-object p3, p0, Lba/vaktija/android/PrayerActivityFragment;->alarmTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, p2, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    const v2, 0x7f080053

    if-ne p3, v2, :cond_3

    .line 296
    iget-object p3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-boolean v3, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    mul-int v2, v2, v3

    invoke-virtual {p3, v2}, Lba/vaktija/android/models/Prayer;->setSoundOnMins(I)V

    .line 298
    iget-object p3, p0, Lba/vaktija/android/PrayerActivityFragment;->soundOffTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, p2, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 299
    invoke-static {v3, v4, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v3, :cond_2

    const-string v3, " prije"

    goto :goto_1

    :cond_2
    const-string v3, " nakon"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nastupa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    const v2, 0x7f080050

    if-ne p3, v2, :cond_4

    .line 305
    iget-object p3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3, p1}, Lba/vaktija/android/models/Prayer;->setNotifMins(I)V

    .line 307
    iget-object p1, p0, Lba/vaktija/android/PrayerActivityFragment;->notifOnTime:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    invoke-static {v2, v3, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 317
    sget-object v0, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f08004a

    const-string v2, ""

    const-string v3, " settings"

    if-eq v0, v1, :cond_3

    const v1, 0x7f080050

    if-eq v0, v1, :cond_2

    const v1, 0x7f080053

    if-eq v0, v1, :cond_0

    move-object p1, v2

    goto/16 :goto_2

    .line 336
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-boolean v2, p0, Lba/vaktija/android/PrayerActivityFragment;->invertValues:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setSoundOnMins(I)V

    .line 338
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silent off time set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ACTION_SILENT_CHANGED"

    const-string p1, "activity_vakat_silentOffSeekBar"

    goto :goto_1

    .line 346
    :cond_2
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setNotifMins(I)V

    .line 348
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification time set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ACTION_NOTIF_CHANGED"

    const-string p1, "activity_vakat_notifTime"

    goto :goto_1

    .line 326
    :cond_3
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setAlarmMins(I)V

    .line 328
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm time set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ACTION_ALARM_CHANGED"

    const-string p1, "activity_vakat_alarmSeekBar"

    :goto_1
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 356
    :goto_2
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 358
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 360
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silentNotifDeleted_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 361
    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "approachingNotifDeleted_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 362
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    return-void
.end method

.method showActionBarTitle()V
    .locals 6

    .line 272
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 274
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_0
    iget-object v4, p0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v1, v4

    .line 283
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 284
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
