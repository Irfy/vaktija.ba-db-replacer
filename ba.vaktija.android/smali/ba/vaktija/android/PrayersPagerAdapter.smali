.class public Lba/vaktija/android/PrayersPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PrayersPagerAdapter.java"


# instance fields
.field fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lba/vaktija/android/PrayerActivityFragment;",
            ">;"
        }
    .end annotation
.end field

.field pageTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lba/vaktija/android/PrayerActivityFragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "fragmentList":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/PrayerActivityFragment;>;"
    .local p3, "pageTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 18
    iput-object p3, p0, Lba/vaktija/android/PrayersPagerAdapter;->pageTitles:Ljava/util/List;

    .line 19
    iput-object p2, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayersPagerAdapter;->getItem(I)Lba/vaktija/android/PrayerActivityFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lba/vaktija/android/PrayerActivityFragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/PrayerActivityFragment;

    return-object v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lba/vaktija/android/PrayersPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lba/vaktija/android/PrayersPagerAdapter;->pageTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
