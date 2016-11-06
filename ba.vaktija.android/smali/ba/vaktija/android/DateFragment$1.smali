.class Lba/vaktija/android/DateFragment$1;
.super Ljava/lang/Object;
.source "DateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/DateFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/DateFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/DateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/DateFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lba/vaktija/android/DateFragment$1;->this$0:Lba/vaktija/android/DateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    return-void
.end method
