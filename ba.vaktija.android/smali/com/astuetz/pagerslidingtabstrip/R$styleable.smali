.class public final Lcom/astuetz/pagerslidingtabstrip/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/pagerslidingtabstrip/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PagerSlidingTabStrip:[I

.field public static final PagerSlidingTabStrip_pstsDividerColor:I = 0x2

.field public static final PagerSlidingTabStrip_pstsDividerPadding:I = 0x5

.field public static final PagerSlidingTabStrip_pstsIndicatorColor:I = 0x0

.field public static final PagerSlidingTabStrip_pstsIndicatorHeight:I = 0x3

.field public static final PagerSlidingTabStrip_pstsScrollOffset:I = 0x7

.field public static final PagerSlidingTabStrip_pstsShouldExpand:I = 0x9

.field public static final PagerSlidingTabStrip_pstsTabBackground:I = 0x8

.field public static final PagerSlidingTabStrip_pstsTabPaddingLeftRight:I = 0x6

.field public static final PagerSlidingTabStrip_pstsTextAllCaps:I = 0xa

.field public static final PagerSlidingTabStrip_pstsUnderlineColor:I = 0x1

.field public static final PagerSlidingTabStrip_pstsUnderlineHeight:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    return-void

    :array_0
    .array-data 4
        0x7f010043
        0x7f010044
        0x7f010045
        0x7f010046
        0x7f010047
        0x7f010048
        0x7f010049
        0x7f01004a
        0x7f01004b
        0x7f01004c
        0x7f01004d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
