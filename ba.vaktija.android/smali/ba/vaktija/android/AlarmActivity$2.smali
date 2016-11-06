.class Lba/vaktija/android/AlarmActivity$2;
.super Landroid/os/CountDownTimer;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/AlarmActivity;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/AlarmActivity;


# direct methods
.method constructor <init>(Lba/vaktija/android/AlarmActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/AlarmActivity;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 261
    iput-object p1, p0, Lba/vaktija/android/AlarmActivity$2;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$2;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-virtual {v0}, Lba/vaktija/android/AlarmActivity;->showAlarmMissedNotification()V

    .line 274
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$2;->this$0:Lba/vaktija/android/AlarmActivity;

    # invokes: Lba/vaktija/android/AlarmActivity;->cancelAlarmAndFinish()V
    invoke-static {v0}, Lba/vaktija/android/AlarmActivity;->access$200(Lba/vaktija/android/AlarmActivity;)V

    .line 275
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 266
    long-to-int v1, p1

    div-int/lit16 v0, v1, 0x3e8

    .line 268
    .local v0, "remaining":I
    sget-object v1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on tick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method
