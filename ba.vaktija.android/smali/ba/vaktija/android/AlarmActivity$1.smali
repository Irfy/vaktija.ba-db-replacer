.class Lba/vaktija/android/AlarmActivity$1;
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

    .line 183
    iput-object p1, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 195
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-virtual {v0}, Lba/vaktija/android/AlarmActivity;->showAlarmMissedNotification()V

    .line 196
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-static {v0}, Lba/vaktija/android/AlarmActivity;->access$000(Lba/vaktija/android/AlarmActivity;)V

    .line 197
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-virtual {v0}, Lba/vaktija/android/AlarmActivity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    long-to-int p2, p1

    .line 188
    div-int/lit16 p2, p2, 0x3e8

    .line 190
    sget-object p1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on tick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
