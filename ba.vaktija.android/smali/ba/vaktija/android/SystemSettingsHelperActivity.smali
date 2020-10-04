.class public Lba/vaktija/android/SystemSettingsHelperActivity;
.super Lba/vaktija/android/BaseActivity;
.source "SystemSettingsHelperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemSettingsHelperActivity"


# instance fields
.field private dndModeCheckIcon:Landroid/widget/ImageView;

.field private dndModeDescriptionLabel:Landroid/widget/TextView;

.field private dndModeSettingsButton:Landroid/widget/Button;

.field private dontShowAgainCheckbox:Landroid/widget/CheckBox;

.field private dozeModeCheckIcon:Landroid/widget/ImageView;

.field private dozeModeDescriptionLabel:Landroid/widget/TextView;

.field private dozeModeSettingsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method

.method private checkDndModeStatus()V
    .locals 3

    .line 164
    sget-object v0, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object v0, v0, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "DND_GRANTED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeCheckIcon:Landroid/widget/ImageView;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeSettingsButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeDescriptionLabel:Landroid/widget/TextView;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeCheckIcon:Landroid/widget/ImageView;

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeSettingsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkDozeModeState()V
    .locals 5

    const-string v0, "SystemSettingsHelperActivity"

    const-string v1, "checkDozeModeState"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    .line 144
    invoke-virtual {p0, v1}, Lba/vaktija/android/SystemSettingsHelperActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 146
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIgnoringBatteryOptimizations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeCheckIcon:Landroid/widget/ImageView;

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeSettingsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeCheckIcon:Landroid/widget/ImageView;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeSettingsButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeDescriptionLabel:Landroid/widget/TextView;

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08006a

    if-eq p1, v0, :cond_2

    const v0, 0x7f080079

    if-eq p1, v0, :cond_1

    const v0, 0x7f08007d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 130
    :cond_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 107
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->setResult(I)V

    .line 109
    iget-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dontShowAgainCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    sget-object p1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "ASK_NO_MORE_DOZE"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "SystemSettingsHelperActivity"

    .line 44
    invoke-virtual {p0, v0}, Lba/vaktija/android/SystemSettingsHelperActivity;->setTheme(Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0026

    .line 48
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b001f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f08002f

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0086

    .line 56
    invoke-virtual {p0, v3}, Lba/vaktija/android/SystemSettingsHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget-object v3, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 62
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 63
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const p1, 0x7f08007b

    .line 66
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeCheckIcon:Landroid/widget/ImageView;

    const p1, 0x7f080076

    .line 67
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeCheckIcon:Landroid/widget/ImageView;

    const p1, 0x7f08007c

    .line 69
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeDescriptionLabel:Landroid/widget/TextView;

    const p1, 0x7f080077

    .line 70
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeDescriptionLabel:Landroid/widget/TextView;

    const p1, 0x7f08007d

    .line 72
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeSettingsButton:Landroid/widget/Button;

    const p1, 0x7f080079

    .line 73
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeSettingsButton:Landroid/widget/Button;

    const p1, 0x7f08007a

    .line 75
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dontShowAgainCheckbox:Landroid/widget/CheckBox;

    const p1, 0x7f08006a

    .line 77
    invoke-virtual {p0, p1}, Lba/vaktija/android/SystemSettingsHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dozeModeSettingsButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lba/vaktija/android/SystemSettingsHelperActivity;->dndModeSettingsButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, v0}, Lba/vaktija/android/SystemSettingsHelperActivity;->setResult(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Lba/vaktija/android/BaseActivity;->onResume()V

    .line 88
    invoke-direct {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->checkDozeModeState()V

    .line 89
    invoke-direct {p0}, Lba/vaktija/android/SystemSettingsHelperActivity;->checkDndModeStatus()V

    return-void
.end method
