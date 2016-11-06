.class Lba/vaktija/android/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/MainActivity;->showSilentActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/MainActivity;


# direct methods
.method constructor <init>(Lba/vaktija/android/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/MainActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 499
    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 501
    .local v0, "currentP":Lba/vaktija/android/models/Prayer;
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    .line 502
    invoke-static {v2}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    .line 506
    :cond_0
    invoke-virtual {v0, v3}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 507
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->save()V

    .line 509
    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    # getter for: Lba/vaktija/android/MainActivity;->mApp:Lba/vaktija/android/App;
    invoke-static {v2}, Lba/vaktija/android/MainActivity;->access$100(Lba/vaktija/android/MainActivity;)Lba/vaktija/android/App;

    move-result-object v2

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Turning sounds on"

    invoke-virtual {v2, v3, v4}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lba/vaktija/android/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Turning sounds on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 512
    .local v1, "service":Landroid/content/Intent;
    const-string v2, "ACTION_SILENT_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v2, p0, Lba/vaktija/android/MainActivity$2;->this$0:Lba/vaktija/android/MainActivity;

    invoke-virtual {v2, v1}, Lba/vaktija/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 518
    return-void
.end method
