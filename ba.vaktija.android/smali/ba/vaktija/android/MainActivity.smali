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
.field private static final REQUEST_SYSTEM_SETTINGS:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarSubtitle:Landroid/widget/TextView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActualEvent:Landroid/view/View;

.field private mActualEventAction:Landroid/widget/TextView;

.field private mActualEventMessage:Landroid/widget/TextView;

.field private mApp:Lba/vaktija/android/App;

.field private mLocationId:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lba/vaktija/android/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/MainActivity;)Lba/vaktija/android/App;
    .locals 0

    .line 52
    iget-object p0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    return-object p0
.end method

.method static synthetic access$100(Lba/vaktija/android/MainActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 52
    iget-object p0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lba/vaktija/android/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    return-void
.end method

.method private changeActionBarColor(I)V
    .locals 4

    .line 387
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 388
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 394
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method private checkDozeAndDndModesState()V
    .locals 3

    .line 468
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkDozeAndDndModesState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ASK_NO_MORE_DOZE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "power"

    .line 476
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 477
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 479
    sget-object v1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object v1, v1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/SystemSettingsHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lba/vaktija/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private disableSilentModesIfDndPermissionIsRevoked()V
    .locals 3

    .line 499
    sget-object v0, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object v0, v0, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    const-string v1, "DND_GRANTED"

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 503
    :cond_0
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":checkDozeAndDndModesState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION_DISABLE_SILENT_MODES"

    .line 508
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 511
    invoke-static {p0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupActivity()V
    .locals 3

    .line 104
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[setupActivity]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0023

    .line 105
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->setContentView(I)V

    const v0, 0x7f0800bc

    .line 107
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lba/vaktija/android/MainActivity;->changeActionBarColor(I)V

    .line 111
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lba/vaktija/android/MainActivity;->changeActionBarColor(I)V

    :cond_0
    const v0, 0x7f0800b4

    .line 116
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const v1, 0x7f0800b3

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "selectedLocation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    .line 123
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showActionBarInfo()V

    .line 125
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 127
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    sget-object v2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "USER_CLOSED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setupActivity()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private showActualEventMessage()V
    .locals 8

    .line 158
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showActualEventMessage]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/SilentModeManager;->isSilentOn()Z

    move-result v0

    .line 160
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "alarmActive"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 161
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "silentDisabledByUser"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 162
    invoke-static {p0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/service/SilentModeManager;->silentShoudBeActive()Z

    move-result v4

    .line 163
    iget-object v5, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "SILENT_BLOCKED_BY_DND_REVOKE"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 165
    sget-object v5, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DnD revoked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v5, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v5, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "silent disabled by user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v5, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "silent should be active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 171
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showSilentBlockedByDndRevoke()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 173
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showAlarmEvent()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 175
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showSilentActive()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 177
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showSilentDisabledByUser()V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showAlarmEvent()V
    .locals 3

    .line 404
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showAlarmEvent]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getNextPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    .line 410
    invoke-static {v0, v2}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f0f001e

    .line 408
    invoke-virtual {p0, v0, v1}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$2;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$2;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSilentActive()V
    .locals 4

    .line 331
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showSilentActive]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 337
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    .line 338
    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getSilentModeDurationString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f004f

    .line 335
    invoke-virtual {p0, v2, v1}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v1}, Lba/vaktija/android/util/Utils;->boldNumbers(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$1;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$1;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSilentBlockedByDndRevoke()V
    .locals 2

    .line 446
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showSilentBlockedByDndRevoke]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const v1, 0x7f0f007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f0f0074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$4;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$4;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSilentDisabledByUser()V
    .locals 2

    .line 427
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showSilentDisabledByUser]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventMessage:Landroid/widget/TextView;

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 430
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 432
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEventAction:Landroid/widget/TextView;

    new-instance v1, Lba/vaktija/android/MainActivity$3;

    invoke-direct {v1, p0}, Lba/vaktija/android/MainActivity$3;-><init>(Lba/vaktija/android/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActualEvent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method exit()V
    .locals 3

    .line 320
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "### That\'s it, user is closing me!"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v1, "Close applicaton"

    invoke-virtual {v0, v1, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "USER_CLOSED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":exit()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION_QUIT"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->finish()V

    return-void
.end method

.method launchShareIntent()V
    .locals 8

    .line 274
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd\'. \'MM\'. \'yyyy\'.\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "locationName"

    const-string v4, "Sarajevo"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 281
    new-instance v5, Ljava/util/Date;

    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 285
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 283
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v0, 0x7f0f0059

    .line 282
    invoke-virtual {p0, v0, v4}, Lba/vaktija/android/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getAllPrayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba/vaktija/android/models/Prayer;

    .line 293
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    invoke-static {v6, v7, v5}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0075

    .line 306
    invoke-virtual {p0, v1}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lba/vaktija/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const-string v0, "Nije prona\u0111ena nijedna aplikacija koja mo\u017ee da prihvati sadr\u017eaj"

    .line 308
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 518
    invoke-super {p0, p1, p2, p3}, Lba/vaktija/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 521
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 522
    sget-object p1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string p2, "Access no notification policy not granted, disabling silent modes..."

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":onActivityResult"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ACTION_DISABLE_SILENT_MODES"

    .line 525
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-static {p0, p1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 528
    invoke-static {p0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 68
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->setTheme(Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 76
    sget-object p1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wizard completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wizardCompleted"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080071

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    const v0, 0x7f080070

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x1060000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const-string v4, ""

    .line 89
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 91
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 93
    iget-object p1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->startWizard()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->setupActivity()V

    .line 97
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 98
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->checkDozeAndDndModesState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEvent(Lba/vaktija/android/models/Events$PrayerChangedEvent;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    return-void
.end method

.method public onEvent(Lba/vaktija/android/models/Events$RingerModeChanged;)V
    .locals 0

    .line 494
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->launchShareIntent()V

    return v1

    .line 260
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lba/vaktija/android/prefs/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lba/vaktija/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 254
    :pswitch_2
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showDatePickerDialog()V

    return v1

    .line 264
    :pswitch_3
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->exit()V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0800c2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 185
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 188
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 138
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onResume()V

    .line 139
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 143
    iget v0, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "selectedLocation"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/MainActivity;->mLocationId:I

    .line 148
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->showActionBarInfo()V

    .line 150
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->showActualEventMessage()V

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 153
    invoke-direct {p0}, Lba/vaktija/android/MainActivity;->disableSilentModesIfDndPermissionIsRevoked()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 193
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onStop()V

    .line 194
    sget-object v0, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onStop]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showActionBarInfo()V
    .locals 7

    .line 199
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showDate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x2

    .line 202
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const v3, 0x7f0f004d

    .line 204
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    .line 205
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v3, 0x7f0f0071

    .line 223
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0f0042

    .line 220
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0f0087

    .line 217
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    const v3, 0x7f0f0091

    .line 214
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    const v3, 0x7f0f0088

    .line 211
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_6
    const v3, 0x7f0f0085

    .line 226
    invoke-virtual {p0, v3}, Lba/vaktija/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "dd. MM. yyyy."

    invoke-direct {v3, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 231
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mActionBarTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "locationName"

    const-string v6, "Sarajevo"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 236
    iget-object v3, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lba/vaktija/android/MainActivity;->mActionBarSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDatePickerDialog()V
    .locals 3

    .line 313
    iget-object v0, p0, Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;

    const-string v1, "Date picker"

    invoke-virtual {v0, v1}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lba/vaktija/android/MainActivity$DatePickerFragment;

    invoke-direct {v0}, Lba/vaktija/android/MainActivity$DatePickerFragment;-><init>()V

    .line 316
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method startWizard()V
    .locals 2

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/wizard/WizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    invoke-virtual {p0, v0}, Lba/vaktija/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity;->finish()V

    return-void
.end method
