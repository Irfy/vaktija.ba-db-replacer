.class Lba/vaktija/android/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/MainActivity;->showSilentBlockedByDndRevoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/MainActivity;


# direct methods
.method constructor <init>(Lba/vaktija/android/MainActivity;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lba/vaktija/android/MainActivity$4;->this$0:Lba/vaktija/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 455
    iget-object p1, p0, Lba/vaktija/android/MainActivity$4;->this$0:Lba/vaktija/android/MainActivity;

    invoke-static {p1}, Lba/vaktija/android/MainActivity;->access$100(Lba/vaktija/android/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SILENT_BLOCKED_BY_DND_REVOKE"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    iget-object p1, p0, Lba/vaktija/android/MainActivity$4;->this$0:Lba/vaktija/android/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lba/vaktija/android/MainActivity$4;->this$0:Lba/vaktija/android/MainActivity;

    const-class v2, Lba/vaktija/android/SystemSettingsHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lba/vaktija/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
