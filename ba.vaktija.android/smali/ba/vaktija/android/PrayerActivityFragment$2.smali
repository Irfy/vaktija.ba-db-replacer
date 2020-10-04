.class Lba/vaktija/android/PrayerActivityFragment$2;
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

.field final synthetic val$action:Ljava/lang/StringBuilder;

.field final synthetic val$gaEventCategory:Ljava/lang/String;

.field final synthetic val$startedFrom:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lba/vaktija/android/PrayerActivityFragment;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment$2;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iput-object p2, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$startedFrom:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$action:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$gaEventCategory:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 488
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$2;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lba/vaktija/android/PrayerActivityFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$startedFrom:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$action:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$2;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v1}, Lba/vaktija/android/PrayerActivityFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 492
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$2;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    invoke-virtual {v0}, Lba/vaktija/android/PrayerActivityFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 494
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$2;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->app:Lba/vaktija/android/App;

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$gaEventCategory:Ljava/lang/String;

    iget-object v2, p0, Lba/vaktija/android/PrayerActivityFragment$2;->val$action:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
