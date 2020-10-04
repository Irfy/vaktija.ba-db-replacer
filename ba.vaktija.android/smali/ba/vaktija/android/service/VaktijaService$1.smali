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

    .line 322
    iput-object p1, p0, Lba/vaktija/android/service/VaktijaService$1;->this$0:Lba/vaktija/android/service/VaktijaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 326
    sget-object p1, Lba/vaktija/android/service/VaktijaService;->TAG:Ljava/lang/String;

    const-string p2, "mScreenOnReceiver onReceive"

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lba/vaktija/android/service/VaktijaService$1;->this$0:Lba/vaktija/android/service/VaktijaService;

    invoke-static {p1}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object p1

    invoke-interface {p1}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    return-void
.end method
