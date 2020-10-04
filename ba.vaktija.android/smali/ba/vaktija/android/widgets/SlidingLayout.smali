.class public Lba/vaktija/android/widgets/SlidingLayout;
.super Landroid/widget/RelativeLayout;
.source "SlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;,
        Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

.field parent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lba/vaktija/android/widgets/SlidingLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/widgets/SlidingLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 51
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 45
    new-instance v0, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;

    invoke-direct {v0, p0}, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;-><init>(Lba/vaktija/android/widgets/SlidingLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSlidingListener(Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    return-void
.end method
