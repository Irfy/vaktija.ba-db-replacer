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
    .locals 5

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

    move-result-object v0

    const v1, 0x7f0b0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080115

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v1, 0x7f080116

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    invoke-direct {p2, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 39
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 p3, 0x40e00000    # 7.0f

    .line 40
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance p2, Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    const/16 p1, 0x30

    const/16 p3, 0xc8

    .line 45
    invoke-virtual {p2, p1, v3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    iget-object p1, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 47
    iget-object p1, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 55
    iget-object v0, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 51
    iget-object v0, p0, Lba/vaktija/android/widgets/ColorToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
