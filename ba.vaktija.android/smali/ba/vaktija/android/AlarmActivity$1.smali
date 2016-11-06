.class Lba/vaktija/android/AlarmActivity$1;
.super Landroid/os/CountDownTimer;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/AlarmActivity;->increaseVolume()V
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
    .line 236
    iput-object p1, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    # getter for: Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lba/vaktija/android/AlarmActivity;->access$100(Lba/vaktija/android/AlarmActivity;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    # getter for: Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I
    invoke-static {v2}, Lba/vaktija/android/AlarmActivity;->access$000(Lba/vaktija/android/AlarmActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 252
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 240
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 242
    .local v0, "sec":I
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    # getter for: Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I
    invoke-static {v2}, Lba/vaktija/android/AlarmActivity;->access$000(Lba/vaktija/android/AlarmActivity;)I

    move-result v2

    sub-int v1, v2, v0

    .line 244
    .local v1, "volume":I
    sget-object v2, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity$1;->this$0:Lba/vaktija/android/AlarmActivity;

    # getter for: Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lba/vaktija/android/AlarmActivity;->access$100(Lba/vaktija/android/AlarmActivity;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 247
    return-void
.end method
