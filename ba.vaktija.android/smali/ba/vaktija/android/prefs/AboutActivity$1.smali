.class Lba/vaktija/android/prefs/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/prefs/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/prefs/AboutActivity;


# direct methods
.method constructor <init>(Lba/vaktija/android/prefs/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/prefs/AboutActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lba/vaktija/android/prefs/AboutActivity$1;->this$0:Lba/vaktija/android/prefs/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.vaktija.ba"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v1, "myIntent":Landroid/content/Intent;
    iget-object v2, p0, Lba/vaktija/android/prefs/AboutActivity$1;->this$0:Lba/vaktija/android/prefs/AboutActivity;

    invoke-virtual {v2, v1}, Lba/vaktija/android/prefs/AboutActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
