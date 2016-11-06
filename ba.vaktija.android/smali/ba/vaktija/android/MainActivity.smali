.class public Lba/vaktija/android/MainActivity;
.super Lba/vaktija/android/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/MainActivity$DatePickerFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarSubtitle:Landroid/widget/TextView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActualEvent:Landroid/view/View;

.field private mActualEventAction:Landroid/widget/TextView;

.field private mActualEventMessage:Landroid/widget/TextView;

.field private mApp:Lba/vaktija/android/App;

.field private mIsDualPane:Z

.field private mLocationId:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lba/vaktija/android/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/vaktija/android/MainActivity;->mIsDualPane:Z

    return-void
.end method

.method private _tintStatusBar()V
    .locals 4

    .prologue
    .line 393
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 408
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v1, Lcom/readystatesoftware/systembartint/SystemBarTintManager;

    invoke-direct {v1, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 396
    .local v1, "tintManager":Lcom/readystatesoftware/systembartint/SystemBarTintManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 400
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 402
    .local v0, "color":I
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 405
    invoke-virtual {v1, v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintColor(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lba/vaktija/android/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lba/vaktija/android/MainActivity;)Lba/vaktija/android/App;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    return-object v0
.end method

.method static synthetic access$200(Lba/vaktija/android/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/MainActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    return-void
.end method

.method private changeActionBarColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 383
    .local v0, "colorDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 385
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 389
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 390
    return-void
.end method

.method private checkDozeModeState()V
    .locals 6

    .prologue
    .line 575
    sget-object v3, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "checkDozeModeState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v3, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "ASK_NO_MORE_DOZE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 578
    .local v0, "askNoMoreAboutDoze":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 579
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 581
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIgnoringBatteryOptimizations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showDozeModeDialog()V

    .line 588
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private setupActivity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "[setupActivity]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lba/vaktija/android/MainActivity;->setContentView(I)V

    .line 118
    const v2, 0x7f0e005d

    invoke-virtual {p0, v2}, Lba/vaktija/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 120
    .local v0, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lba/vaktija/android/MainActivity;->changeActionBarColor(I)V

    .line 122
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 124
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lba/vaktija/android/MainActivity;->changeActionBarColor(I)V

    .line 127
    :cond_0
    const v2, 0x7f0e005e

    invoke-virtual {p0, v2}, Lba/vaktija/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const v3, 0x7f0e005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const v3, 0x7f0e0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    .line 131
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "selectedLocation"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    .line 134
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showActionBarInfo()V

    .line 136
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 138
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    sget-object v3, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "USER_CLOSED"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setupActivity()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lba/vaktija/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    return-void
.end method

.method private showActualEvent()V
    .locals 4

    .prologue
    .line 446
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "[showActualEvent]"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/service/SilentModeManager;->silentSetByApp()Z

    move-result v1

    .line 450
    .local v1, "silentSetByApp":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bez zvukova do "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDurationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    invoke-static {v0}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    if-nez v1, :cond_0

    .line 454
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 457
    :cond_0
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v3, Lba/vaktija/android/MainActivity$1;

    invoke-direct {v3, p0}, Lba/vaktija/android/MainActivity$1;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 481
    return-void
.end method

.method private showActualEventMessage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    sget-object v4, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v5, "[showActualEventMessage]"

    invoke-static {v4, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/service/SilentModeManager;->isSilentOn()Z

    move-result v2

    .line 171
    .local v2, "silentOn":Z
    iget-object v4, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "alarmActive"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    .local v0, "alarmActive":Z
    iget-object v4, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "silentDisabledByUser"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    .local v1, "silentDisabledByUser":Z
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v3

    .line 175
    .local v3, "silentShouldBeActive":Z
    sget-object v4, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm active: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v4, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent disabled by user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v4, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent should be active: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showAlarmEvent()V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 182
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showSilentActive()V

    goto :goto_0

    .line 183
    :cond_1
    if-eqz v1, :cond_2

    .line 184
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showSilentDisabledByUser()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v4, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAlarmEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 544
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "[showAlarmEvent]"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    .line 548
    .local v1, "prayerId":I
    const v2, 0x7f070015

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    .line 550
    invoke-static {v1, v4}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 548
    invoke-virtual {p0, v2, v3}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v3, 0x7f07006a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 555
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v3, Lba/vaktija/android/MainActivity$4;

    invoke-direct {v3, p0}, Lba/vaktija/android/MainActivity$4;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 564
    return-void
.end method

.method private showDozeModeDialog()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 593
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070030

    .line 594
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070031

    .line 595
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 596
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070021

    const/4 v2, 0x0

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001f

    new-instance v2, Lba/vaktija/android/MainActivity$6;

    invoke-direct {v2, p0}, Lba/vaktija/android/MainActivity$6;-><init>(Lba/vaktija/android/MainActivity;)V

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003c

    new-instance v2, Lba/vaktija/android/MainActivity$5;

    invoke-direct {v2, p0}, Lba/vaktija/android/MainActivity$5;-><init>(Lba/vaktija/android/MainActivity;)V

    .line 604
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 616
    return-void
.end method

.method private showSilentActive()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 484
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showSilentActive]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const v1, 0x7f070038

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 490
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDurationString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 488
    invoke-virtual {p0, v1, v2}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 495
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$2;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$2;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    return-void
.end method

.method private showSilentDisabledByUser()V
    .locals 2

    .prologue
    .line 525
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showSilentDisabledByUser]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 528
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$3;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$3;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    return-void
.end method


# virtual methods
.method exit()V
    .locals 4

    .prologue
    .line 371
    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "### That\'s it, user is closing me!"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v2, "Close applicaton"

    const-string v3, "Close applicaton"

    invoke-virtual {v1, v2, v3}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "USER_CLOSED"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":exit()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 376
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_QUIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 378
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->finish()V

    .line 379
    return-void
.end method

.method launchShareIntent()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 285
    iget-object v5, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v6, "Share"

    invoke-virtual {v5, v6}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "dd\'. \'MM\'. \'yyyy\'.\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 288
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "shareText":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "locationName"

    const-string v7, "Beč (Džemat Bosna)"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "city":Ljava/lang/String;
    const v5, 0x7f07003e

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 296
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 294
    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 293
    invoke-virtual {p0, v5, v6}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v6}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba/vaktija/android/models/Prayer;

    .line 304
    .local v4, "v":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 305
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-static {v8, v9, v10}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    .end local v4    # "v":Lba/vaktija/android/models/Prayer;
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v3, "sharingIntent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 317
    const v5, 0x7f070057

    invoke-virtual {p0, v5}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5, v11}, Lba/vaktija/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    :goto_1
    return-void

    .line 319
    :cond_1
    const-string v5, "Nije prona\u0111ena nijedna aplikacija koja mo\u017ee da prihvati sadr\u017eaj"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v8, 0x1060000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "[onCreate]"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lba/vaktija/android/MainActivity;->setTheme(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/App;

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 81
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lba/vaktija/android/MainActivity;->mIsDualPane:Z

    .line 83
    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wizard completed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "wizardCompleted"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "customAb":Landroid/view/View;
    const v2, 0x7f0e006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0e006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 95
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 107
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "wizardCompleted"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->startWizard()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->setupActivity()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 253
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lba/vaktija/android/models/Events$PrayerChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lba/vaktija/android/models/Events$PrayerChangedEvent;

    .prologue
    .line 567
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    .line 568
    return-void
.end method

.method public onEvent(Lba/vaktija/android/models/Events$RingerModeChanged;)V
    .locals 0
    .param p1, "event"    # Lba/vaktija/android/models/Events$RingerModeChanged;

    .prologue
    .line 571
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    .line 572
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 263
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 279
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showDatePickerDialog()V

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->launchShareIntent()V

    goto :goto_0

    .line 271
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lba/vaktija/android/prefs/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lba/vaktija/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->exit()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x7f0e00e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 195
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onPause()V

    .line 196
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 150
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onResume()V

    .line 151
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 155
    iget v0, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "selectedLocation"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "selectedLocation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    .line 161
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showActionBarInfo()V

    .line 163
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    .line 165
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->checkDozeModeState()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onStop()V

    .line 201
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onStop]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method showActionBarInfo()V
    .locals 12

    .prologue
    const v10, 0x7f070036

    const/4 v7, 0x0

    .line 206
    iget-object v8, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "showDate"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 208
    .local v2, "dateEnabled":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 211
    invoke-virtual {p0, v10}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "dayName":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 213
    .local v3, "day":I
    packed-switch v3, :pswitch_data_0

    .line 237
    :goto_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "dd. MM. yyyy."

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "date":Ljava/lang/String;
    iget-object v8, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "locationName"

    const-string v11, "Beč (Džemat Bosna)"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {v8}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "hijriDate":Ljava/lang/String;
    iget-object v8, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v8, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    return-void

    .line 215
    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "hijriDate":Ljava/lang/String;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :pswitch_0
    invoke-virtual {p0, v10}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    goto :goto_0

    .line 218
    :pswitch_1
    const v8, 0x7f070067

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    goto :goto_0

    .line 221
    :pswitch_2
    const v8, 0x7f07006f

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    goto :goto_0

    .line 224
    :pswitch_3
    const v8, 0x7f070066

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    goto :goto_0

    .line 227
    :pswitch_4
    const v8, 0x7f070033

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    goto :goto_0

    .line 230
    :pswitch_5
    const v8, 0x7f070055

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    goto :goto_0

    .line 233
    :pswitch_6
    const v8, 0x7f070065

    invoke-virtual {p0, v8}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 246
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v5    # "hijriDate":Ljava/lang/String;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const/16 v7, 0x8

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showDatePickerDialog()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v2, "Date picker"

    invoke-virtual {v1, v2}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lba/vaktija/android/MainActivity$DatePickerFragment;

    invoke-direct {v0}, Lba/vaktija/android/MainActivity$DatePickerFragment;-><init>()V

    .line 327
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method startWizard()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/wizard/WizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->finish()V

    .line 414
    return-void
.end method
