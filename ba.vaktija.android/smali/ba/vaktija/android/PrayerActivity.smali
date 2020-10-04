.class public Lba/vaktija/android/PrayerActivity;
.super Lba/vaktija/android/BaseActivity;
.source "PrayerActivity.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBar$OnNavigationListener;


# static fields
.field private static final EXTRA_PRAYER:Ljava/lang/String; = "EXTRA_PRAYER"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private prayer:Lba/vaktija/android/models/Prayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lba/vaktija/android/PrayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lba/vaktija/android/BaseActivity;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/content/Intent;
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/PrayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_PRAYER"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private setupActionBarLisNav()V
    .locals 7

    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v3, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-static {v3, v2}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Podne"

    .line 101
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "D\u017euma"

    .line 102
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v5, Lba/vaktija/android/PrayersPagerAdapter;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6, v1, v3}, Lba/vaktija/android/PrayersPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 106
    iget-object v1, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f08002e

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip;

    .line 110
    iget-object v3, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 111
    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 112
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06005d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 113
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060050

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 114
    sget-object v3, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 129
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 130
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 131
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 138
    iget-object v0, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 47
    sget-object v0, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lba/vaktija/android/PrayerActivity;->setTheme(Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    const-string v0, "[onCreate]"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0024

    .line 51
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayerActivity;->setContentView(I)V

    const p1, 0x7f080045

    .line 52
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lba/vaktija/android/PrayerActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    const/16 v0, 0x8

    .line 53
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_PRAYER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Prayer;

    iput-object p1, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 57
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr p1, v2

    .line 60
    sget-object v2, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "separateJumaSettings"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    .line 63
    invoke-direct {p0}, Lba/vaktija/android/PrayerActivity;->setupActionBarLisNav()V

    goto :goto_2

    .line 66
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b001f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f08002f

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    iget-object v3, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget-object v3, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 74
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 75
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 76
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3

    .line 82
    iget-object p1, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result p1

    invoke-static {p1, v1}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object p1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_2
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2

    .line 173
    sget-object p2, Lba/vaktija/android/PrayerActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNavigationItemSelected itemPosition="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const p3, 0x7f08006c

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 185
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 187
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lba/vaktija/android/PrayerActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 192
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    invoke-static {v0, p2}, Lba/vaktija/android/PrayerActivityFragment;->newInstance(IZ)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lba/vaktija/android/PrayerActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lba/vaktija/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
