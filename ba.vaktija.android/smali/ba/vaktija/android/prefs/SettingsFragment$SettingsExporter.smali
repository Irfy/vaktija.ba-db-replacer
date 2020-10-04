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
        "Landroid/os/AsyncTask<",
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
.method constructor <init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 546
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    .line 548
    iput-boolean p3, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mOverwriteExisting:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    .line 562
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    .line 564
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "External storage not mounted"

    .line 563
    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    return-object v0

    .line 567
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

    .line 569
    iget-boolean v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mOverwriteExisting:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 574
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 575
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lba/vaktija/android/util/SettingsManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/util/SettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/util/SettingsManager;->getSettings()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 578
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 579
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 535
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 592
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mErrorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lba/vaktija/android/prefs/SettingsFragment;->access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-static {p1}, Lba/vaktija/android/prefs/SettingsFragment;->access$400(Lba/vaktija/android/prefs/SettingsFragment;)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->this$0:Lba/vaktija/android/prefs/SettingsFragment;

    invoke-static {p1}, Lba/vaktija/android/prefs/SettingsFragment;->access$300(Lba/vaktija/android/prefs/SettingsFragment;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 535
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 553
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Eksportujem postavke..."

    .line 554
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 556
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
