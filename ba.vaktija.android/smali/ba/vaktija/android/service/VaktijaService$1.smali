.class Lba/vaktija/android/service/VaktijaService$1;
.super Landroid/content/BroadcastReceiver;
.source "VaktijaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/service/VaktijaService;->registerScreenOnReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/service/VaktijaService;


# direct methods
.method constructor <init>(Lba/vaktija/android/service/VaktijaService;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/service/VaktijaService;

    .prologue
    .line 298
    iput-object p1, p0, Lba/vaktija/android/service/VaktijaService$1;->this$0:Lba/vaktija/android/service/VaktijaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    sget-object v0, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string v1, "mScreenOnReceiver onReceive"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lba/vaktija/android/service/VaktijaService$1;->this$0:Lba/vaktija/android/service/VaktijaService;

    invoke-static {v0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 305
    return-void
.end method
