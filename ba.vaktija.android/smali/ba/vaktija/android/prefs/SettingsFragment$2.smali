.class Lba/vaktija/android/prefs/SettingsFragment$2;
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

    .line 169
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 173
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    const v1, 0x7f0f005f

    invoke-virtual {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "1.2.7"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0060

    invoke-virtual {v0, v3, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :try_start_0
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$2;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p1}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f004e

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method
