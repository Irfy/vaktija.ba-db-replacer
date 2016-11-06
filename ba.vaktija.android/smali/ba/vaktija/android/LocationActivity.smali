.class public Lba/vaktija/android/LocationActivity;
.super Lba/vaktija/android/BaseActivity;
.source "LocationActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lba/vaktija/android/LocationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/LocationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    sget-object v3, Lba/vaktija/android/LocationActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lba/vaktija/android/LocationActivity;->setTheme(Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f03001e

    invoke-virtual {p0, v3}, Lba/vaktija/android/LocationActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "customAb":Landroid/view/View;
    const v3, 0x7f0e0022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f070035

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 30
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 32
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 33
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 37
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0e005c

    .line 42
    invoke-static {v7}, Lba/vaktija/android/wizard/LocationFragment;->newInstance(Z)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lba/vaktija/android/LocationActivity;->finish()V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
