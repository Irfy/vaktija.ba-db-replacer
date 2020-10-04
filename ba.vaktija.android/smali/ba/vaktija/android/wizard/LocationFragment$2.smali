.class Lba/vaktija/android/wizard/LocationFragment$2;
.super Ljava/lang/Object;
.source "LocationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/wizard/LocationFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment$2;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 195
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment$2;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    invoke-static {v0}, Lba/vaktija/android/wizard/LocationFragment;->access$300(Lba/vaktija/android/wizard/LocationFragment;)V

    return-void
.end method
