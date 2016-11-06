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
.field mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

.field parent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lba/vaktija/android/widgets/SlidingLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/widgets/SlidingLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p0, p0, Lba/vaktija/android/widgets/SlidingLayout;->parent:Landroid/view/ViewGroup;

    .line 38
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 50
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    new-instance v1, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;

    invoke-direct {v1, p0}, Lba/vaktija/android/widgets/SlidingLayout$ViewDragHelperCallbacks;-><init>(Lba/vaktija/android/widgets/SlidingLayout;)V

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 45
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iget-object v1, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    .local v0, "shouldInterceptTouchEvent":Z
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lba/vaktija/android/widgets/SlidingLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setSlidingListener(Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;)V
    .locals 0
    .param p1, "slidingListener"    # Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    .prologue
    .line 68
    iput-object p1, p0, Lba/vaktija/android/widgets/SlidingLayout;->mSlidingListener:Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;

    .line 69
    return-void
.end method
