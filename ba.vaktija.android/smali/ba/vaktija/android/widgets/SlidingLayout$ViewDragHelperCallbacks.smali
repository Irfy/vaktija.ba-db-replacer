.class Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
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
    .param p1, "this$0"    # Lba/vaktija/android/widgets/SlidingLayout;

    .prologue
    .line 72
    iput-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v1, v1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 96
    iget-object v1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v1, v1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v1, v1, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 100
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-gt v1, v0, :cond_0

    move v0, p2

    .line 104
    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v0, v0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v0, v0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v4, v4, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 118
    .local v0, "nearEnd":Z
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    if-eqz v0, :cond_3

    .line 119
    :cond_0
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v3, v3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v1, v2, v3

    .line 121
    .local v1, "x":I
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v3, v3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 123
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    invoke-interface {v2}, Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;->onSlidingCompleted()V

    .line 130
    .end local v1    # "x":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    invoke-virtual {v2}, Lba/vaktija/android/widgets/SlidingLayout;->invalidate()V

    .line 131
    return-void

    .line 116
    .end local v0    # "nearEnd":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    .restart local v0    # "nearEnd":Z
    :cond_3
    iget-object v2, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v2, v2, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v3, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v3, v3, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;->this$0:Lba/vaktija/android/widgets/SlidingLayout;

    iget-object v4, v4, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
