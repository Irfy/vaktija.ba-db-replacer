.class Lba/vaktija/android/FragmentPrayer$3;
.super Landroid/os/CountDownTimer;
.source "FragmentPrayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/FragmentPrayer;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/FragmentPrayer;


# direct methods
.method constructor <init>(Lba/vaktija/android/FragmentPrayer;JJ)V
    .locals 0

    .line 315
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$3;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 324
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer$3;->this$0:Lba/vaktija/android/FragmentPrayer;

    iget-object v0, v0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 319
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer$3;->this$0:Lba/vaktija/android/FragmentPrayer;

    iget-object v0, v0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
