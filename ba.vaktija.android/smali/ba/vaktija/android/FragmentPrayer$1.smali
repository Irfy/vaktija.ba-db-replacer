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

    .line 127
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 130
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0c0003

    .line 131
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    .line 133
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0800d4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 134
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0800d5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0800d6

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v3}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0f007b

    goto :goto_0

    :cond_0
    const v3, 0x7f0f0089

    :goto_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 141
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v3}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0f007c

    goto :goto_1

    :cond_1
    const v3, 0x7f0f008a

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 145
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v3}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f0f007d

    goto :goto_2

    :cond_2
    const v3, 0x7f0f008d

    :goto_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 149
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v3}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 150
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v3}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 153
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result p1

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 156
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result p1

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    new-instance p1, Lba/vaktija/android/FragmentPrayer$1$1;

    invoke-direct {p1, p0}, Lba/vaktija/android/FragmentPrayer$1$1;-><init>(Lba/vaktija/android/FragmentPrayer$1;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 201
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method
