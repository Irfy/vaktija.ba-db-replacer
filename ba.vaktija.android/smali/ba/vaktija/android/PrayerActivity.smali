.class public Lba/vaktija/android/PrayerActivity;
.super Lba/vaktija/android/BaseActivity;
.source "PrayerActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$OnNavigationListener;


# static fields
.field private static final EXTRA_PRAYER:Ljava/lang/String; = "EXTRA_PRAYER"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private pager:Landroid/support/v4/view/ViewPager;

.field private prayer:Lba/vaktija/android/models/Prayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lba/vaktija/android/PrayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prayer"    # Lba/vaktija/android/models/Prayer;

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/PrayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "EXTRA_PRAYER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method private setupActionBarLisNav()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03001a

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "customAb":Landroid/view/View;
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v6, "prayerFragments":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/PrayerActivityFragment;>;"
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {v9, v3}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v9}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v9

    invoke-static {v9, v8}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "pageTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "Podne"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v9, "D\u017euma"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lba/vaktija/android/PrayersPagerAdapter;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-direct {v5, v9, v6, v4}, Lba/vaktija/android/PrayersPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 105
    .local v5, "pp":Lba/vaktija/android/PrayersPagerAdapter;
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    const v9, 0x7f0e004e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/astuetz/PagerSlidingTabStrip;

    .line 109
    .local v7, "tabs":Lcom/astuetz/PagerSlidingTabStrip;
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v9}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 110
    invoke-virtual {v7, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 111
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 112
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080050

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/astuetz/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 113
    sget-object v9, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 126
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 127
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 129
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 130
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0053

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 134
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    move v3, v8

    .line 136
    .local v3, "isFriday":Z
    :cond_0
    if-eqz v3, :cond_1

    .line 137
    iget-object v9, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0e0068

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 46
    sget-object v5, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lba/vaktija/android/PrayerActivity;->setTheme(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v5, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    const-string v8, "[onCreate]"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v5, 0x7f030020

    invoke-virtual {p0, v5}, Lba/vaktija/android/PrayerActivity;->setContentView(I)V

    .line 51
    const v5, 0x7f0e0069

    invoke-virtual {p0, v5}, Lba/vaktija/android/PrayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 52
    iget-object v5, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "EXTRA_PRAYER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lba/vaktija/android/models/Prayer;

    iput-object v5, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 56
    iget-object v5, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    move v3, v6

    .line 57
    .local v3, "listNav":Z
    :goto_0
    iget-object v5, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_1
    or-int/2addr v3, v5

    .line 59
    sget-object v5, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "separateJumaSettings"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v3, v5

    .line 61
    if-eqz v3, :cond_2

    .line 62
    invoke-direct {p0}, Lba/vaktija/android/PrayerActivity;->setupActionBarLisNav()V

    .line 88
    :goto_2
    return-void

    .end local v3    # "listNav":Z
    :cond_0
    move v3, v7

    .line 56
    goto :goto_0

    .restart local v3    # "listNav":Z
    :cond_1
    move v5, v7

    .line 57
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f03001b

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "customAb":Landroid/view/View;
    const v5, 0x7f0e0022

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    .local v4, "title":Landroid/widget/TextView;
    iget-object v5, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget-object v5, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 75
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0053

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 80
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_3

    .line 81
    iget-object v5, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-static {v5, v7}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v2

    .line 83
    :cond_3
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 85
    invoke-virtual {v5, v10, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 6
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0e0068

    .line 172
    sget-object v1, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNavigationItemSelected itemPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 176
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    :cond_0
    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 186
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 194
    :goto_0
    return v5

    .line 189
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 191
    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-static {v2, v5}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->finish()V

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
