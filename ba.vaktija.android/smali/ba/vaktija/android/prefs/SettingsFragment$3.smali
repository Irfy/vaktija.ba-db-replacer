.class Lba/vaktija/android/prefs/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
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

    .line 191
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 194
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$3;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    .line 195
    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lba/vaktija/android/SystemSettingsHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    .line 194
    invoke-virtual {p1, v0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
