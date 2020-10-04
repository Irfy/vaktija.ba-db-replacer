.class Lba/vaktija/android/service/LegacyNotifManager$1;
.super Landroid/os/CountDownTimer;
.source "LegacyNotifManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/service/LegacyNotifManager;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/service/LegacyNotifManager;


# direct methods
.method constructor <init>(Lba/vaktija/android/service/LegacyNotifManager;JJ)V
    .locals 0

    .line 257
    iput-object p1, p0, Lba/vaktija/android/service/LegacyNotifManager$1;->this$0:Lba/vaktija/android/service/LegacyNotifManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 270
    sget-object v0, Lba/vaktija/android/service/LegacyNotifManager;->TAG:Ljava/lang/String;

    const-string v1, "count down timer has finished"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 261
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager$1;->this$0:Lba/vaktija/android/service/LegacyNotifManager;

    invoke-static {v0}, Lba/vaktija/android/service/LegacyNotifManager;->access$000(Lba/vaktija/android/service/LegacyNotifManager;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager$1;->this$0:Lba/vaktija/android/service/LegacyNotifManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lba/vaktija/android/service/LegacyNotifManager;->buildCountDownNotif(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager$1;->this$0:Lba/vaktija/android/service/LegacyNotifManager;

    invoke-static {v0}, Lba/vaktija/android/service/LegacyNotifManager;->access$100(Lba/vaktija/android/service/LegacyNotifManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lba/vaktija/android/service/LegacyNotifManager$1;->this$0:Lba/vaktija/android/service/LegacyNotifManager;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    invoke-static {v0, p2}, Lba/vaktija/android/service/LegacyNotifManager;->access$200(Lba/vaktija/android/service/LegacyNotifManager;I)V

    :cond_1
    return-void
.end method
