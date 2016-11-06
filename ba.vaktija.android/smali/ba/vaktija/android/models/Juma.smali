.class public Lba/vaktija/android/models/Juma;
.super Lba/vaktija/android/models/Prayer;
.source "Juma.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lba/vaktija/android/models/Juma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/models/Juma;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lba/vaktija/android/models/Prayer;-><init>()V

    .line 7
    const/4 v0, 0x6

    iput v0, p0, Lba/vaktija/android/models/Juma;->id:I

    return-void
.end method
