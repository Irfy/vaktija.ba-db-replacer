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

    .line 145
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 148
    sget-object p1, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemClick position="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget-object p1, p1, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/models/Location;

    .line 152
    iget-object p2, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget p3, p1, Lba/vaktija/android/models/Location;->id:I

    invoke-static {p2, p3}, Lba/vaktija/android/wizard/LocationFragment;->access$002(Lba/vaktija/android/wizard/LocationFragment;I)I

    .line 153
    iget-object p2, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    iget-object p1, p1, Lba/vaktija/android/models/Location;->name:Ljava/lang/String;

    invoke-static {p2, p1}, Lba/vaktija/android/wizard/LocationFragment;->access$102(Lba/vaktija/android/wizard/LocationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment$1;->this$0:Lba/vaktija/android/wizard/LocationFragment;

    invoke-static {p1}, Lba/vaktija/android/wizard/LocationFragment;->access$200(Lba/vaktija/android/wizard/LocationFragment;)V

    return-void
.end method
