.class Lba/vaktija/android/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/MainActivity;->showSilentDisabledByUser()V
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
    .line 530
    iput-object p1, p0, Lba/vaktija/android/MainActivity$3;->this$0:Lba/vaktija/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 534
    iget-object v0, p0, Lba/vaktija/android/MainActivity$3;->this$0:Lba/vaktija/android/MainActivity;

    # getter for: Lba/vaktija/android/MainActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lba/vaktija/android/MainActivity;->access$000(Lba/vaktija/android/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silentDisabledByUser"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    iget-object v0, p0, Lba/vaktija/android/MainActivity$3;->this$0:Lba/vaktija/android/MainActivity;

    # invokes: Lba/vaktija/android/MainActivity;->showActualEventMessage()V
    invoke-static {v0}, Lba/vaktija/android/MainActivity;->access$200(Lba/vaktija/android/MainActivity;)V

    .line 537
    return-void
.end method
