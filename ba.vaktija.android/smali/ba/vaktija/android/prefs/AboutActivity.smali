.class public Lba/vaktija/android/prefs/AboutActivity;
.super Lba/vaktija/android/BaseActivity;
.source "AboutActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private root:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lba/vaktija/android/prefs/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/prefs/AboutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 32
    sget-object v8, Lba/vaktija/android/prefs/AboutActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->setTheme(Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v8, 0x7f03001c

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->setContentView(I)V

    .line 37
    const v8, 0x7f0e004f

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lba/vaktija/android/prefs/AboutActivity;->root:Landroid/widget/RelativeLayout;

    .line 39
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03001b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 43
    .local v4, "customAb":Landroid/view/View;
    const v8, 0x7f0e0022

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 45
    .local v6, "title":Landroid/widget/TextView;
    const v8, 0x7f070012

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v8, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    invoke-virtual {v0, v12}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 54
    const v8, 0x7f0e0053

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    .local v3, "copyleftSign":Landroid/widget/TextView;
    const v8, 0x7f0e0050

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 56
    .local v7, "vaktija":Landroid/widget/ImageView;
    const v8, 0x7f0e0054

    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "copyleft":Landroid/widget/TextView;
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/App;

    .line 60
    .local v1, "app":Lba/vaktija/android/App;
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    const v8, 0x7f04000a

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 65
    .local v5, "rotate":Landroid/view/animation/Animation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 2008 - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v8, 0x7f020076

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    new-instance v8, Lba/vaktija/android/prefs/AboutActivity$1;

    invoke-direct {v8, p0}, Lba/vaktija/android/prefs/AboutActivity$1;-><init>(Lba/vaktija/android/prefs/AboutActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const-string v8, "About"

    invoke-virtual {v1, v8}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lba/vaktija/android/prefs/AboutActivity;->finish()V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
