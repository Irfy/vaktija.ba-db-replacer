.class Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/vaktija/android/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsExporter"
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

.field private static final RESULT_FILE_EXISTS:I = 0x1

.field private static final RESULT_OK:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorMessage:Ljava/lang/String;

.field private mOverwriteExisting:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lba/vaktija/android/prefs/SettingsFragment;


# direct methods
.method public constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "overwriteExisting"    # Z

    .prologue
    .line 523
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 524
    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    .line 525
    iput-boolean p3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mOverwriteExisting:Z

    .line 526
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 539
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    const-string v3, "External storage not mounted"

    iput-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    .line 541
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 560
    :goto_0
    return-object v3

    .line 544
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vaktija_settings.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, "data":Ljava/io/File;
    iget-boolean v3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mOverwriteExisting:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 551
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 552
    .local v0, "buf":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lba/vaktija/android/util/SettingsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/util/SettingsManager;->getSettings()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 554
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    .line 557
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 566
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 580
    :goto_0
    return-void

    .line 571
    :pswitch_0
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->showSettingsExportedDialog()V
    invoke-static {v0}, Lba/vaktija/android/prefs/SettingsFragment;->access$300(Lba/vaktija/android/prefs/SettingsFragment;)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->showFileExistsDialog()V
    invoke-static {v0}, Lba/vaktija/android/prefs/SettingsFragment;->access$400(Lba/vaktija/android/prefs/SettingsFragment;)V

    goto :goto_0

    .line 577
    :pswitch_2
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    # invokes: Lba/vaktija/android/prefs/SettingsFragment;->showErrorProcessingSettingsDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    nop

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
    .line 513
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    .line 531
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Eksportujem postavke..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 533
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 534
    return-void
.end method
