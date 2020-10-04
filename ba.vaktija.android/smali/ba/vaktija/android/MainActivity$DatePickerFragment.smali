.class public Lba/vaktija/android/MainActivity$DatePickerFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatePickerFragment"
.end annotation


# instance fields
.field calledOnce:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 533
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 541
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 543
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 544
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 547
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity$DatePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 552
    iget-boolean p1, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DatePickerFragment"

    const-string v0, "[onDateSet]"

    .line 554
    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    add-int/2addr p3, p4

    .line 558
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "EXTRA_VALUES"

    .line 562
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 564
    new-instance p1, Lba/vaktija/android/DateFragment;

    invoke-direct {p1}, Lba/vaktija/android/DateFragment;-><init>()V

    .line 565
    invoke-virtual {p1, p2}, Lba/vaktija/android/DateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 567
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity$DatePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget-object p3, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lba/vaktija/android/DateFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    iput-boolean p4, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    return-void
.end method
