.class public Lba/vaktija/android/models/Events$SkipSilentEvent;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/models/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipSilentEvent"
.end annotation


# instance fields
.field prayerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "prayerId"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lba/vaktija/android/models/Events$SkipSilentEvent;->prayerId:I

    .line 13
    return-void
.end method


# virtual methods
.method public getPrayerId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lba/vaktija/android/models/Events$SkipSilentEvent;->prayerId:I

    return v0
.end method

.method public setPrayerId(I)V
    .locals 0
    .param p1, "prayerId"    # I

    .prologue
    .line 18
    iput p1, p0, Lba/vaktija/android/models/Events$SkipSilentEvent;->prayerId:I

    .line 19
    return-void
.end method
