.class Lba/vaktija/android/service/OngoingAlarmService$1;
.super Landroid/os/CountDownTimer;
.source "OngoingAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/service/OngoingAlarmService;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/service/OngoingAlarmService;


# direct methods
.method constructor <init>(Lba/vaktija/android/service/OngoingAlarmService;JJ)V
    .locals 0

    .line 108
    iput-object p1, p0, Lba/vaktija/android/service/OngoingAlarmService$1;->this$0:Lba/vaktija/android/service/OngoingAlarmService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 118
    iget-object v0, p0, Lba/vaktija/android/service/OngoingAlarmService$1;->this$0:Lba/vaktija/android/service/OngoingAlarmService;

    invoke-static {v0}, Lba/vaktija/android/service/OngoingAlarmService;->access$000(Lba/vaktija/android/service/OngoingAlarmService;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    long-to-int p2, p1

    .line 112
    div-int/lit16 p2, p2, 0x3e8

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on tick "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OngoingAlarmService"

    invoke-static {p2, p1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
