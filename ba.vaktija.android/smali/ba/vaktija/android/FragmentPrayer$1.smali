.class Lba/vaktija/android/FragmentPrayer$1;
.super Ljava/lang/Object;
.source "FragmentPrayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/FragmentPrayer;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/FragmentPrayer;


# direct methods
.method constructor <init>(Lba/vaktija/android/FragmentPrayer;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 125
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 129
    .local v0, "popup":Landroid/support/v7/widget/PopupMenu;
    const v4, 0x7f0f0003

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 131
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f0e00ef

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 132
    .local v1, "skipAlarm":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f0e00f0

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 133
    .local v2, "skipNotif":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f0e00f1

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 135
    .local v3, "skipSilent":Landroid/view/MenuItem;
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f07005c

    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 139
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f07005e

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 143
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x7f07005f

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 147
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 148
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 151
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 154
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    new-instance v4, Lba/vaktija/android/FragmentPrayer$1$1;

    invoke-direct {v4, p0}, Lba/vaktija/android/FragmentPrayer$1$1;-><init>(Lba/vaktija/android/FragmentPrayer$1;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 200
    return-void

    .line 135
    :cond_0
    const v4, 0x7f070068

    goto/16 :goto_0

    .line 139
    :cond_1
    const v4, 0x7f070069

    goto :goto_1

    .line 143
    :cond_2
    const v4, 0x7f07006c

    goto :goto_2
.end method
