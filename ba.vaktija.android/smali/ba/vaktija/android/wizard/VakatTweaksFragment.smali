.class public Lba/vaktija/android/wizard/VakatTweaksFragment;
.super Landroidx/fragment/app/Fragment;
.source "VakatTweaksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field app:Lba/vaktija/android/App;

.field mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field mSeparateSettingsJuma:Landroid/widget/CheckBox;

.field mSeparateSettingsJumaExpl:Landroid/widget/TextView;

.field next:Landroid/widget/Button;

.field prev:Landroid/widget/Button;

.field radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    sget-object p1, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v0, "Podne namaz"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    sget-object p1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "dhuhrTime"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    const v0, 0x7f0f003b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->prev:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJuma:Landroid/widget/CheckBox;

    new-instance v0, Lba/vaktija/android/wizard/VakatTweaksFragment$1;

    invoke-direct {v0, p0}, Lba/vaktija/android/wizard/VakatTweaksFragment$1;-><init>(Lba/vaktija/android/wizard/VakatTweaksFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    sget-object v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->app:Lba/vaktija/android/App;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 123
    sget-object p1, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCheckedChanged"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dhuhrTime"

    const v0, 0x7f0800da

    if-ne p2, v0, :cond_0

    .line 126
    sget-object p2, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "radioNormalized"

    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object p2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "1"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 129
    :cond_0
    sget-object p2, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "radioReal"

    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object p2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "0"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080159

    if-ne v0, v1, :cond_0

    .line 100
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "wizardCompleted"

    .line 101
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lba/vaktija/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lba/vaktija/android/wizard/VakatTweaksFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lba/vaktija/android/wizard/VakatTweaksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08015a

    if-ne p1, v0, :cond_2

    .line 109
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    const v0, 0x7f010020

    const v1, 0x7f010023

    .line 113
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    const v0, 0x7f080056

    const/4 v1, 0x0

    .line 116
    invoke-static {v1}, Lba/vaktija/android/wizard/LocationFragment;->newInstance(Z)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-object p1, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lba/vaktija/android/wizard/VakatTweaksFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    sget-object p3, Lba/vaktija/android/wizard/VakatTweaksFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0b0032

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080159

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->next:Landroid/widget/Button;

    const p2, 0x7f08015a

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->prev:Landroid/widget/Button;

    const p2, 0x7f08009a

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->radioGroup:Landroid/widget/RadioGroup;

    const p2, 0x7f080098

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJuma:Landroid/widget/CheckBox;

    const p2, 0x7f080099

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJumaExpl:Landroid/widget/TextView;

    return-object p1
.end method
