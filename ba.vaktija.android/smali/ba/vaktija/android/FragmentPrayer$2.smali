.class Lba/vaktija/android/FragmentPrayer$2;
.super Ljava/lang/Object;
.source "FragmentPrayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/FragmentPrayer;->showPrayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/FragmentPrayer;


# direct methods
.method constructor <init>(Lba/vaktija/android/FragmentPrayer;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 252
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$2;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer$2;->this$0:Lba/vaktija/android/FragmentPrayer;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$2;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$2;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/PrayerActivity;->getLaunchIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/FragmentPrayer;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method
