.class Lba/vaktija/android/prefs/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->showToneSelectionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/prefs/SettingsFragment;

.field final synthetic val$alarmTone:Z


# direct methods
.method constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;Z)V
    .locals 0

    .line 408
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iput-boolean p2, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->val$alarmTone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 411
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-static {p1}, Lba/vaktija/android/prefs/SettingsFragment;->access$000(Lba/vaktija/android/prefs/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-boolean p2, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->val$alarmTone:Z

    invoke-static {p1, p2}, Lba/vaktija/android/prefs/SettingsFragment;->access$200(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-boolean p2, p0, Lba/vaktija/android/prefs/SettingsFragment$5;->val$alarmTone:Z

    invoke-static {p1, p2}, Lba/vaktija/android/prefs/SettingsFragment;->access$100(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    :goto_0
    return-void
.end method
