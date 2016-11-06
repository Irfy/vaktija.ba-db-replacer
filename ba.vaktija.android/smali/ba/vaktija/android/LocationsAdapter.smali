.class public Lba/vaktija/android/LocationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocationsAdapter.java"


# static fields
.field private static TYPE_NORMAL:I

.field private static TYPE_SECTION_HEADER:I


# instance fields
.field locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lba/vaktija/android/models/Location;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lba/vaktija/android/models/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lba/vaktija/android/LocationsAdapter;->TYPE_SECTION_HEADER:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lba/vaktija/android/LocationsAdapter;->TYPE_NORMAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lba/vaktija/android/models/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "locations":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Location;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    .line 26
    iput-object p1, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lba/vaktija/android/models/Location;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Location;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lba/vaktija/android/LocationsAdapter;->getItem(I)Lba/vaktija/android/models/Location;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lba/vaktija/android/LocationsAdapter;->TYPE_SECTION_HEADER:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lba/vaktija/android/LocationsAdapter;->TYPE_NORMAL:I

    goto :goto_0
.end method

.method public getPositionForLocationId(I)I
    .locals 2
    .param p1, "locationId"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Location;

    iget v1, v1, Lba/vaktija/android/models/Location;->id:I

    if-ne v1, p1, :cond_0

    .line 91
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 86
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lba/vaktija/android/LocationsAdapter;->getItemViewType(I)I

    move-result v0

    sget v1, Lba/vaktija/android/LocationsAdapter;->TYPE_NORMAL:I

    if-ne v0, v1, :cond_1

    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 73
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Location;

    iget-object v1, v1, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return-object p2

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 76
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    move-object v0, p2

    .line 79
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/vaktija/android/models/Location;

    iget-object v1, v1, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSections(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lba/vaktija/android/models/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "sections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lba/vaktija/android/models/Location;>;"
    iput-object p1, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    .line 47
    return-void
.end method
