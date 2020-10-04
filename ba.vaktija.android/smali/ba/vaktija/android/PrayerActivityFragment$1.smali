.class Lba/vaktija/android/PrayerActivityFragment$1;
.super Ljava/lang/Object;
.source "PrayerActivityFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/PrayerActivityFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/PrayerActivityFragment;

.field final synthetic val$action:Ljava/lang/StringBuilder;

.field final synthetic val$gaEventAction:Ljava/lang/StringBuilder;

.field final synthetic val$isChecked:Z

.field final synthetic val$startedFrom:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lba/vaktija/android/PrayerActivityFragment;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iput-boolean p2, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    iput-object p3, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$startedFrom:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$action:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$gaEventAction:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 455
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->vibroOff:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget v1, v1, Lba/vaktija/android/PrayerActivityFragment;->colorEnabled:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget v1, v1, Lba/vaktija/android/PrayerActivityFragment;->colorDisabled:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 456
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->silent:Landroidx/cardview/widget/CardView;

    iget-boolean v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget v1, v1, Lba/vaktija/android/PrayerActivityFragment;->cardElevEnabled:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget v1, v1, Lba/vaktija/android/PrayerActivityFragment;->cardElev:F

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 458
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->soundOptionsWrapper:Landroid/view/View;

    iget-boolean v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 461
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->this$0:Lba/vaktija/android/PrayerActivityFragment;

    iget-object v0, v0, Lba/vaktija/android/PrayerActivityFragment;->mPrayer:Lba/vaktija/android/models/Prayer;

    iget-boolean v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/Prayer;->setSilentOn(Z)V

    .line 463
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$startedFrom:Ljava/lang/StringBuilder;

    const-string v1, "onCheckedChanged-activity_vakat_silentSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$action:Ljava/lang/StringBuilder;

    const-string v1, "ACTION_SILENT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v0, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$gaEventAction:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lba/vaktija/android/PrayerActivityFragment$1;->val$isChecked:Z

    if-eqz v1, :cond_2

    const-string v1, "Enabled silent mode"

    goto :goto_2

    :cond_2
    const-string v1, "Disabled silent mode"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
