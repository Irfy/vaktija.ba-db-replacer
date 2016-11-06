.class public Lba/vaktija/android/prefs/SettingsActivity;
.super Lba/vaktija/android/BaseActivity;
.source "SettingsActivity.java"


# static fields
.field public static final EXTRA_FIRST_VISIBLE_ITEM:Ljava/lang/String; = "EXTRA_FIRST_VISIBLE_ITEM"

.field public static final EXTRA_ITEM_TOP:Ljava/lang/String; = "EXTRA_ITEM_TOP"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lba/vaktija/android/prefs/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/prefs/SettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 39
    sget-object v6, Lba/vaktija/android/prefs/SettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lba/vaktija/android/prefs/SettingsActivity;->setTheme(Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v6, 0x7f030021

    invoke-virtual {p0, v6}, Lba/vaktija/android/prefs/SettingsActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "customAb":Landroid/view/View;
    const v6, 0x7f0e0022

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 51
    .local v5, "title":Landroid/widget/TextView;
    const-string v6, "POSTAVKE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget-object v6, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 56
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 60
    new-instance v4, Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {v4}, Lba/vaktija/android/prefs/SettingsFragment;-><init>()V

    .line 62
    .local v4, "sf":Lba/vaktija/android/prefs/SettingsFragment;
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 64
    .local v3, "scrollPosition":I
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_ITEM_TOP"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "itemTop":I
    sget-object v6, Lba/vaktija/android/prefs/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollPosition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v6, Lba/vaktija/android/prefs/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemTop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v3, v2}, Lba/vaktija/android/prefs/SettingsFragment;->newInstance(II)Lba/vaktija/android/prefs/SettingsFragment;

    move-result-object v4

    .line 71
    .end local v2    # "itemTop":I
    .end local v3    # "scrollPosition":I
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f0e006a

    .line 73
    invoke-virtual {v6, v7, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsActivity;->finish()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
