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
        "Landroid/os/AsyncTask",
        "<",
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
.method public constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 593
    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    .line 594
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x2

    .line 607
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 608
    const-string v5, "External storage not mounted"

    iput-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 609
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 651
    :goto_0
    return-object v5

    .line 612
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/vaktija_settings.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, "data":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 615
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1400

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 619
    const-string v5, "Fajl ne sadr\u017ei postavke Vaktije ili su postavke neispravne"

    iput-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 620
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 623
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .local v4, "text":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 629
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 630
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 633
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 636
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 632
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    :try_start_2
    iget-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lba/vaktija/android/util/SettingsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lba/vaktija/android/util/SettingsManager;->restoreSettings(Ljava/lang/String;)V
    :try_end_2
    .catch Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 651
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 641
    :catch_1
    move-exception v2

    .line 642
    .local v2, "e":Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;
    invoke-virtual {v2}, Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;->printStackTrace()V

    .line 643
    const-string v5, "Datoteka ne sadr\u017ei postavke Vaktije ili su postavke neispravne"

    iput-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 644
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 645
    .end local v2    # "e":Lba/vaktija/android/util/SettingsManager$SettingsCorruptedException;
    :catch_2
    move-exception v2

    .line 646
    .local v2, "e":Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;
    const-string v5, "Datoteka sadr\u017ei nepodr\u017eane postavke"

    iput-object v5, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    .line 647
    invoke-virtual {v2}, Lba/vaktija/android/util/SettingsManager$UnsupportedFormatException;->printStackTrace()V

    .line 648
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 657
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 681
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v1, v1, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    const-string v2, "Postavke importovane"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 664
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 666
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setingsImported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 667
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "ACTION_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 670
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 671
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v1}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v2}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 675
    .end local v0    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->showFileMissingDialog()V
    invoke-static {v1}, Lba/vaktija/android/prefs/SettingsFragment;->access$600(Lba/vaktija/android/prefs/SettingsFragment;)V

    goto :goto_0

    .line 678
    :pswitch_2
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mErrorMessage:Ljava/lang/String;

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->showErrorProcessingSettingsDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lba/vaktija/android/prefs/SettingsFragment;->access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 583
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 598
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    .line 599
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Importujem postavke..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 601
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 602
    return-void
.end method
