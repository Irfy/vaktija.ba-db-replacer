.class Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/widgets/SlidingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewDragHelperCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/widgets/SlidingLayout;


# direct methods
.method constructor <init>(Lba/vaktija/android/widgets/SlidingLayout;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 96
    iget-object p3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p3, p3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 97
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    return p1

    .line 99
    :cond_0
    iget-object p3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p3, p3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v0, v0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 89
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .line 110
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v0, v0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-double v0, p3

    iget-object p3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p3, p3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    int-to-double v2, p3

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double p3, v0, v2

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object p2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p2, p2, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p3, p3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2

    .line 120
    :cond_2
    :goto_1
    iget-object p2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p2, p2, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p2, p1

    .line 122
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object p3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p3, p3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 124
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object p1, p1, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    invoke-interface {p1}, Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;->onSlidingCompleted()V

    .line 131
    :cond_3
    :goto_2
    iget-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    invoke-virtual {p1}, Lba/vaktija/android/widgets/SlidingLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handle"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
