.class public Lba/vaktija/android/models/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lba/vaktija/android/models/Location;->id:I

    return-void
.end method
