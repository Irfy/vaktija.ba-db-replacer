.class Lba/vaktija/android/PrayerActivityFragment$1;
.super Ljava/lang/Object;
.source "PrayerActivityFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/PrayerActivityFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/PrayerActivityFragment;

.field final synthetic val$eventAction:Ljava/lang/String;

.field final synthetic val$gaEventCategory:Ljava/lang/String;

.field final synthetic val$serviceAction:Ljava/lang/String;

.field final synthetic val$serviceStartedFrom:Ljava/lang/String;


# direct methods
.method constructor <init>(Lba/vaktija/android/PrayerActivityFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/PrayerActivityFragment;

    .prologue
    .line 467
    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$serviceStartedFrom:Ljava/lang/String;

    iput-object p3, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$serviceAction:Ljava/lang/String;

    iput-object p4, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$gaEventCategory:Ljava/lang/String;

    iput-object p5, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$eventAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 470
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v1}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$serviceStartedFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 471
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$serviceAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v1}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 474
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v1}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 476
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v1, v1, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$gaEventCategory:Ljava/lang/String;

    iget-object v3, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$eventAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method
