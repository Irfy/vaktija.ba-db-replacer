.class public Lba/vaktija/android/DateFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DateFragment.java"


# static fields
.field public static final EXTRA_VALUES:Ljava/lang/String; = "EXTRA_VALUES"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field app:Lba/vaktija/android/App;

.field day:I

.field mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field month:I

.field rootLayout:Landroid/widget/LinearLayout;

.field uiHandler:Landroid/os/Handler;

.field year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lba/vaktija/android/DateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lba/vaktija/android/DateFragment;->month:I

    .line 41
    iput v0, p0, Lba/vaktija/android/DateFragment;->day:I

    .line 42
    iput v0, p0, Lba/vaktija/android/DateFragment;->year:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    sget-object p1, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lba/vaktija/android/DateFragment;->uiHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/DateFragment;->app:Lba/vaktija/android/App;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lba/vaktija/android/DateFragment;->app:Lba/vaktija/android/App;

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    iget v2, p0, Lba/vaktija/android/DateFragment;->year:I

    iget v3, p0, Lba/vaktija/android/DateFragment;->month:I

    iget v4, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lba/vaktija/android/models/PrayersSchedule;->getPrayerForDate(IIII)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lba/vaktija/android/DateFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080095

    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080094

    .line 101
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getRawPrayerTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    invoke-static {v5, v6, p1}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v1, v5, :cond_0

    const/4 v1, -0x1

    .line 107
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :cond_0
    iget-object v1, p0, Lba/vaktija/android/DateFragment;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget-object p1, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lba/vaktija/android/DateFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 48
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/DateFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b002e

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080093

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lba/vaktija/android/DateFragment;->rootLayout:Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_VALUES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/DateFragment;->month:I

    const/4 v2, 0x0

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lba/vaktija/android/DateFragment;->day:I

    const/4 v2, 0x2

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/DateFragment;->year:I

    .line 59
    sget-object v0, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "month="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lba/vaktija/android/DateFragment;->month:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " day="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " year="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lba/vaktija/android/DateFragment$1;

    invoke-direct {v3, p0}, Lba/vaktija/android/DateFragment$1;-><init>(Lba/vaktija/android/DateFragment;)V

    const v4, 0x7f0f0056

    .line 63
    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    iget v3, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 72
    iget v3, p0, Lba/vaktija/android/DateFragment;->month:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 73
    iget v1, p0, Lba/vaktija/android/DateFragment;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v1, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lba/vaktija/android/DateFragment;->month:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    iget-object v0, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object p1, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
