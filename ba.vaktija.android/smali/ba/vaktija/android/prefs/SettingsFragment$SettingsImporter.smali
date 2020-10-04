.class Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsImporter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_ERROR:I = 0x2

.field private static final RESULT_MISSING_FILE:I = 0x1

.field private static final RESULT_OK:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorMessage:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lba/vaktija/android/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 617
    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .line 631
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    .line 633
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "External storage not mounted"

    .line 632
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    return-object v0

    .line 636
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/vaktija_settings.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 642
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1400

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string p1, "Fajl ne sadr\u017ei postavke Vaktije ili su postavke neispravne"

    .line 643
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    return-object v0

    .line 647
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 653
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 654
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 656
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 664
    :try_start_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/util/SettingsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lba/vaktija/android/util/SettingsManager;->restoreSettings(Ljava/lang/String;)V
    :try_end_1
    .catch Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Datoteka sadr\u017ei nepodr\u017eane postavke"

    .line 670
    iput-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 666
    invoke-virtual {p1}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;->printStackTrace()V

    const-string p1, "Datoteka ne sadr\u017ei postavke Vaktije ili su postavke neispravne"

    .line 667
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    return-object v0

    :catch_2
    move-exception p1

    .line 658
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 606
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 684
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lba/vaktija/android/prefs/SettingsFragment;->access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-static {p1}, Lba/vaktija/android/prefs/SettingsFragment;->access$600(Lba/vaktija/android/prefs/SettingsFragment;)V

    goto :goto_0

    .line 686
    :cond_3
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p1}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Postavke importovane"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 688
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 690
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "SettingsFragment:setingsImported"

    invoke-static {p1, v0}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ACTION_UPDATE"

    .line 691
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 694
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {p1}, Lba/vaktija/android/prefs/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 606
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 622
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Importujem postavke..."

    .line 623
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 625
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
