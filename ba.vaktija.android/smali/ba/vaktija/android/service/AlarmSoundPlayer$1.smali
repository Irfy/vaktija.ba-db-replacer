.class Lba/vaktija/android/service/AlarmSoundPlayer$1;
.super Landroid/os/CountDownTimer;
.source "AlarmSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/service/AlarmSoundPlayer;->increaseVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/service/AlarmSoundPlayer;


# direct methods
.method constructor <init>(Lba/vaktija/android/service/AlarmSoundPlayer;JJ)V
    .locals 0

    .line 62
    iput-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer$1;->this$0:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 66
    iget-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer$1;->this$0:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-static {p1}, Lba/vaktija/android/service/AlarmSoundPlayer;->access$008(Lba/vaktija/android/service/AlarmSoundPlayer;)I

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "volume: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer$1;->this$0:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-static {p2}, Lba/vaktija/android/service/AlarmSoundPlayer;->access$000(Lba/vaktija/android/service/AlarmSoundPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmSoundPlayer"

    invoke-static {p2, p1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lba/vaktija/android/service/AlarmSoundPlayer$1;->this$0:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-static {p1}, Lba/vaktija/android/service/AlarmSoundPlayer;->access$100(Lba/vaktija/android/service/AlarmSoundPlayer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lba/vaktija/android/service/AlarmSoundPlayer$1;->this$0:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-static {p2}, Lba/vaktija/android/service/AlarmSoundPlayer;->access$000(Lba/vaktija/android/service/AlarmSoundPlayer;)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
