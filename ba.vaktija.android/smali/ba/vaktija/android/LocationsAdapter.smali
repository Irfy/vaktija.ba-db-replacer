.class public Lba/vaktija/android/LocationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocationsAdapter.java"


# static fields
.field private static TYPE_NORMAL:I = 0x1

.field private static TYPE_SECTION_HEADER:I


# instance fields
.field locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lba/vaktija/android/models/Location;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lba/vaktija/android/models/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lba/vaktija/android/models/Location;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    .line 26
    iput-object p1, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lba/vaktija/android/models/Location;
    .locals 1

    .line 56
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Location;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lba/vaktija/android/LocationsAdapter;->getItem(I)Lba/vaktija/android/models/Location;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 37
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lba/vaktija/android/LocationsAdapter;->TYPE_SECTION_HEADER:I

    goto :goto_0

    :cond_0
    sget p1, Lba/vaktija/android/LocationsAdapter;->TYPE_NORMAL:I

    :goto_0
    return p1
.end method

.method public getPositionForLocationId(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/vaktija/android/models/Location;

    iget v2, v2, Lba/vaktija/android/models/Location;->id:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 67
    invoke-virtual {p0, p1}, Lba/vaktija/android/LocationsAdapter;->getItemViewType(I)I

    move-result p3

    sget v0, Lba/vaktija/android/LocationsAdapter;->TYPE_NORMAL:I

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0034

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Location;

    iget-object p1, p1, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 76
    iget-object p2, p0, Lba/vaktija/android/LocationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0035

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_2
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Location;

    iget-object p1, p1, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setSections(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lba/vaktija/android/models/Location;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lba/vaktija/android/LocationsAdapter;->sections:Ljava/util/HashMap;

    return-void
.end method
