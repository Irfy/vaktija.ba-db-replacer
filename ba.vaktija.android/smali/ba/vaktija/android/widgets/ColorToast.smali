.class public Lba/vaktija/android/widgets/ColorToast;
.super Ljava/lang/Object;
.source "ColorToast.java"


# instance fields
.field color:I

.field context:Landroid/content/Context;

.field message:Ljava/lang/String;

.field toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    const/4 v7, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p3, p0, Lba/vaktija/android/widgets/ColorToast;->color:I

    .line 26
    iput-object p2, p0, Lba/vaktija/android/widgets/ColorToast;->message:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lba/vaktija/android/widgets/ColorToast;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0e006c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 32
    .local v2, "root":Landroid/widget/LinearLayout;
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 35
    const v4, 0x7f0e006d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 36
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p3, v5, v7

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 39
    .local v0, "colorDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 40
    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    .line 45
    iget-object v4, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    const/16 v5, 0x30

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    iget-object v4, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 47
    iget-object v4, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 56
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void
.end method
