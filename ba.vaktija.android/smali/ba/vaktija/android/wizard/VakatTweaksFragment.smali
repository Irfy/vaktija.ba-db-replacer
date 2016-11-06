.class public Lba/vaktija/android/wizard/VakatTweaksFragment;
.super Landroid/support/v4/app/Fragment;
.source "VakatTweaksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field app:Lba/vaktija/android/App;

.field mActivity:Landroid/support/v7/app/AppCompatActivity;

.field mSeparateSettingsJuma:Landroid/widget/CheckBox;

.field mSeparateSettingsJumaExpl:Landroid/widget/TextView;

.field next:Landroid/widget/Button;

.field prev:Landroid/widget/Button;

.field radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "Podne namaz"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dhuhrTime"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 78
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->prev:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJuma:Landroid/widget/CheckBox;

    new-instance v1, Lba/vaktija/android/wizard/VakatTweaksFragment$1;

    invoke-direct {v1, p0}, Lba/vaktija/android/wizard/VakatTweaksFragment$1;-><init>(Lba/vaktija/android/wizard/VakatTweaksFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 43
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iput-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->app:Lba/vaktija/android/App;

    .line 45
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 122
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const v0, 0x7f0e00a0

    if-ne p2, v0, :cond_0

    .line 125
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "radioNormalized"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dhuhrTime"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "radioReal"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dhuhrTime"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00e4

    if-ne v1, v2, :cond_0

    .line 99
    sget-object v1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wizardCompleted"

    const/4 v3, 0x1

    .line 100
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const-class v3, Lba/vaktija/android/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lba/vaktija/android/wizard/VakatTweaksFragment;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lba/vaktija/android/wizard/VakatTweaksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00e3

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 112
    const v1, 0x7f04000b

    const v2, 0x7f04000e

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    :cond_1
    const v1, 0x7f0e006b

    const/4 v2, 0x0

    invoke-static {v2}, Lba/vaktija/android/wizard/LocationFragment;->newInstance(Z)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 118
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lba/vaktija/android/wizard/VakatTweaksFragment;->setHasOptionsMenu(Z)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget-object v1, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    .line 60
    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->prev:Landroid/widget/Button;

    .line 61
    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 62
    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJuma:Landroid/widget/CheckBox;

    .line 63
    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJumaExpl:Landroid/widget/TextView;

    .line 65
    return-object v0
.end method
