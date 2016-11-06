.class Lba/vaktija/android/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/MainActivity;->showActualEvent()V
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
    .param p1, "this$0"    # Lba/vaktija/android/MainActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 461
    iget-object v1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    # getter for: Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lba/vaktija/android/MainActivity;->access$000(Lba/vaktija/android/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "silentByApp"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    iget-object v1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    const-string v2, "Actual event action"

    invoke-static {v1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 464
    .local v0, "silentOffIntent":Landroid/content/Intent;
    const-string v1, "ACTION_SKIP_SILENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lba/vaktija/android/MainActivity$1;->this$0:Lba/vaktija/android/MainActivity;

    invoke-virtual {v1, v0}, Lba/vaktija/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 477
    return-void
.end method
