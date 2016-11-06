.class Lba/vaktija/android/service/NotificationsManager$1;
.super Landroid/os/CountDownTimer;
.source "NotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/service/NotificationsManager;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/service/NotificationsManager;


# direct methods
.method constructor <init>(Lba/vaktija/android/service/NotificationsManager;JJ)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/service/NotificationsManager;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 240
    iput-object p1, p0, Lba/vaktija/android/service/NotificationsManager$1;->this$0:Lba/vaktija/android/service/NotificationsManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lba/vaktija/android/service/NotificationsManager;->TAG:Ljava/lang/String;

    const-string v1, "count down timer has finished"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 244
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager$1;->this$0:Lba/vaktija/android/service/NotificationsManager;

    # getter for: Lba/vaktija/android/service/NotificationsManager;->mCountdownNotifBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {v0}, Lba/vaktija/android/service/NotificationsManager;->access$000(Lba/vaktija/android/service/NotificationsManager;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager$1;->this$0:Lba/vaktija/android/service/NotificationsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lba/vaktija/android/service/NotificationsManager;->buildCountDownNotif(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager$1;->this$0:Lba/vaktija/android/service/NotificationsManager;

    # getter for: Lba/vaktija/android/service/NotificationsManager;->mSilentModeOn:Z
    invoke-static {v0}, Lba/vaktija/android/service/NotificationsManager;->access$100(Lba/vaktija/android/service/NotificationsManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lba/vaktija/android/service/NotificationsManager$1;->this$0:Lba/vaktija/android/service/NotificationsManager;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    # invokes: Lba/vaktija/android/service/NotificationsManager;->updateCountDownNotif(I)V
    invoke-static {v0, v1}, Lba/vaktija/android/service/NotificationsManager;->access$200(Lba/vaktija/android/service/NotificationsManager;I)V

    .line 249
    :cond_1
    return-void
.end method
