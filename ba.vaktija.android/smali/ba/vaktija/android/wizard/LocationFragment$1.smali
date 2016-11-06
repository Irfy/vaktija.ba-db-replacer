.class Lba/vaktija/android/wizard/LocationFragment$1;
.super Ljava/lang/Object;
.source "LocationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/wizard/LocationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/wizard/LocationFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lba/vaktija/android/wizard/LocationFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v1, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget-object v1, v1, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/models/Location;

    .line 151
    .local v0, "loc":Lba/vaktija/android/models/Location;
    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget v2, v0, Lba/vaktija/android/models/Location;->id:I

    # setter for: Lba/vaktija/android/wizard/LocationFragment;->locationId:I
    invoke-static {v1, v2}, Lba/vaktija/android/wizard/LocationFragment;->access$002(Lba/vaktija/android/wizard/LocationFragment;I)I

    .line 152
    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget-object v2, v0, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    # setter for: Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;
    invoke-static {v1, v2}, Lba/vaktija/android/wizard/LocationFragment;->access$102(Lba/vaktija/android/wizard/LocationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    # invokes: Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V
    invoke-static {v1}, Lba/vaktija/android/wizard/LocationFragment;->access$200(Lba/vaktija/android/wizard/LocationFragment;)V

    .line 155
    return-void
.end method
