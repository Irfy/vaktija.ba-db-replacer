.class public Lba/vaktija/android/PrayersPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PrayersPagerAdapter.java"


# instance fields
.field fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lba/vaktija/android/PrayerActivityFragment;",
            ">;"
        }
    .end annotation
.end field

.field pageTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lba/vaktija/android/PrayerActivityFragment;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    iput-object p3, p0, Lba/vaktija/android/PrayersPagerAdapter;->pageTitles:Ljava/util/List;

    .line 19
    iput-object p2, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayersPagerAdapter;->getItem(I)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lba/vaktija/android/PrayerActivityFragment;
    .locals 1

    .line 24
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/PrayerActivityFragment;

    return-object p1
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayersPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->pageTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
