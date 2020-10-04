.class Lba/vaktija/android/prefs/SettingsFragment$6;
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

    .line 503
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$6;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 506
    new-instance p1, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;

    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment$6;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p2}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
