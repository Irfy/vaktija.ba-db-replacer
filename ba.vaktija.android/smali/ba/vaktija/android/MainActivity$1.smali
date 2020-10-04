.class Lba/vaktija/android/MainActivity$1;
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

    .line 342
    iput-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 346
    iget-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    .line 349
    invoke-static {v0}, Lba/vaktija/android/service/SilentModeManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/SilentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/SilentModeManager;->isSunriseSilentModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    .line 353
    :cond_0
    invoke-virtual {p1, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 354
    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->save()V

    .line 356
    iget-object v0, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {v0}, Lba/vaktija/android/MainActivity;->access$000(Lba/vaktija/android/MainActivity;)Lba/vaktija/android/App;

    move-result-object v0

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Turning sounds on"

    invoke-virtual {v0, p1, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const-string v1, "ACTION_SILENT_CHANGED"

    const-string v2, "Actual event action"

    if-lt p1, v0, :cond_2

    .line 363
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    iget-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {p1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 365
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {v0, p1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    const-class v2, Lba/vaktija/android/SystemSettingsHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lba/vaktija/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {p1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 373
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {v0, p1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
