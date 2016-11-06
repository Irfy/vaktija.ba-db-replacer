.class Lba/vaktija/android/prefs/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/SettingsFragment;->onResume()V
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
    .line 241
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$1;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 244
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$1;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    .local v1, "scrollPosition":I
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$1;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_ITEM_TOP"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "itemTop":I
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$1;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 247
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$1;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    neg-int v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 248
    return-void
.end method
