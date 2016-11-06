.class Lba/vaktija/android/prefs/SettingsFragment$3;
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
    .param p1, "this$0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iput-boolean p2, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->val$alarmTone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    # getter for: Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lba/vaktija/android/prefs/SettingsFragment;->access$000(Lba/vaktija/android/prefs/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 395
    packed-switch p3, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-boolean v1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->val$alarmTone:Z

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->setDefaultTone(Z)V
    invoke-static {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->access$100(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-boolean v1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->val$alarmTone:Z

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->launchToneChooser(Z)V
    invoke-static {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->access$200(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
