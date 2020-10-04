.class final Lba/vaktija/android/models/Prayer$1;
.super Ljava/lang/Object;
.source "Prayer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/models/Prayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lba/vaktija/android/models/Prayer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lba/vaktija/android/models/Prayer;
    .locals 1

    .line 48
    new-instance v0, Lba/vaktija/android/models/Prayer;

    invoke-direct {v0, p1}, Lba/vaktija/android/models/Prayer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lba/vaktija/android/models/Prayer$1;->createFromParcel(Landroid/os/Parcel;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lba/vaktija/android/models/Prayer;
    .locals 0

    .line 52
    new-array p1, p1, [Lba/vaktija/android/models/Prayer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lba/vaktija/android/models/Prayer$1;->newArray(I)[Lba/vaktija/android/models/Prayer;

    move-result-object p1

    return-object p1
.end method
