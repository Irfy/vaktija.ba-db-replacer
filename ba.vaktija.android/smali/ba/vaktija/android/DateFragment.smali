.class public Lba/vaktija/android/DateFragment;
.super Landroid/support/v4/app/DialogFragment;
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

    .prologue
    .line 27
    const-class v0, Lba/vaktija/android/DateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

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
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    sget-object v5, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    const-string v6, "onActivityCreated"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lba/vaktija/android/DateFragment;->uiHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lba/vaktija/android/App;

    iput-object v5, p0, Lba/vaktija/android/DateFragment;->app:Lba/vaktija/android/App;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x5

    if-gt v0, v5, :cond_1

    .line 97
    iget-object v5, p0, Lba/vaktija/android/DateFragment;->app:Lba/vaktija/android/App;

    invoke-static {v5}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    iget v6, p0, Lba/vaktija/android/DateFragment;->year:I

    iget v7, p0, Lba/vaktija/android/DateFragment;->month:I

    iget v8, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v5, v0, v6, v7, v8}, Lba/vaktija/android/models/PrayersSchedule;->getPrayerForDate(IIII)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    .line 98
    .local v1, "p":Lba/vaktija/android/models/Prayer;
    iget-object v5, p0, Lba/vaktija/android/DateFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030028

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 99
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f0e008c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, "time":Landroid/widget/TextView;
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getRawPrayerTime()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    const/4 v5, 0x0

    invoke-static {v6, v7, v5}, Lba/vaktija/android/util/FormattingUtils;->getFormattedTime(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 106
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_0
    iget-object v5, p0, Lba/vaktija/android/DateFragment;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "p":Lba/vaktija/android/models/Prayer;
    .end local v2    # "time":Landroid/widget/TextView;
    .end local v3    # "title":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget-object v0, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lba/vaktija/android/DateFragment;->setHasOptionsMenu(Z)V

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 47
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/DateFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    iget-object v3, p0, Lba/vaktija/android/DateFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lba/vaktija/android/DateFragment;->rootLayout:Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_VALUES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lba/vaktija/android/DateFragment;->month:I

    .line 55
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lba/vaktija/android/DateFragment;->day:I

    .line 56
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lba/vaktija/android/DateFragment;->year:I

    .line 58
    sget-object v3, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "month="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lba/vaktija/android/DateFragment;->month:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " year="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/DateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07003b

    new-instance v5, Lba/vaktija/android/DateFragment$1;

    invoke-direct {v5, p0}, Lba/vaktija/android/DateFragment$1;-><init>(Lba/vaktija/android/DateFragment;)V

    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "calendar":Ljava/util/Calendar;
    iget v3, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 71
    iget v3, p0, Lba/vaktija/android/DateFragment;->month:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 72
    const/4 v3, 0x5

    iget v4, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 74
    iget-object v3, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lba/vaktija/android/DateFragment;->day:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lba/vaktija/android/DateFragment;->month:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lba/vaktija/android/DateFragment;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lba/vaktija/android/util/HijriCalendar;->getSimpleDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    iget-object v3, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 77
    iget-object v3, p0, Lba/vaktija/android/DateFragment;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
