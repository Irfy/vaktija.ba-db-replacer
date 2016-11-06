.class public Lba/vaktija/android/models/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lba/vaktija/android/models/Location;->id:I

    .line 13
    return-void
.end method
