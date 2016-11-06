.class Lba/vaktija/android/prefs/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->showFileExistsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 487
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$4;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 490
    new-instance v0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$4;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$4;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    return-void
.end method
