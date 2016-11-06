.class public Lba/vaktija/android/MainActivity$DatePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
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

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 339
    .local v6, "c":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 340
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 341
    .local v4, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 344
    .local v5, "day":I
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lba/vaktija/android/MainActivity$DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 349
    iget-boolean v3, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    if-eqz v3, :cond_0

    .line 367
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v3, "DatePickerFragment"

    const-string v4, "[onDateSet]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "EXTRA_VALUES"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    new-instance v1, Lba/vaktija/android/DateFragment;

    invoke-direct {v1}, Lba/vaktija/android/DateFragment;-><init>()V

    .line 362
    .local v1, "dateFragment":Lba/vaktija/android/DateFragment;
    invoke-virtual {v1, v0}, Lba/vaktija/android/DateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 364
    invoke-virtual {p0}, Lba/vaktija/android/MainActivity$DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lba/vaktija/android/DateFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lba/vaktija/android/DateFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x1

    iput-boolean v3, p0, Lba/vaktija/android/MainActivity$DatePickerFragment;->calledOnce:Z

    goto :goto_0
.end method
