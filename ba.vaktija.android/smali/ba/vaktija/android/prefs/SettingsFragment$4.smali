.class Lba/vaktija/android/prefs/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
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

    .line 290
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$4;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 293
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$4;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/service/NotifManagerFactory;->getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;

    move-result-object v0

    invoke-interface {v0}, Lba/vaktija/android/service/NotifManager;->updateNotification()V

    return-void
.end method
