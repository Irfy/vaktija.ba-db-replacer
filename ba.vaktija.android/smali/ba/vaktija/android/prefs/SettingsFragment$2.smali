.class Lba/vaktija/android/prefs/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 264
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v0, v0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/service/NotificationsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/service/NotificationsManager;->updateNotification()V

    .line 268
    return-void
.end method
