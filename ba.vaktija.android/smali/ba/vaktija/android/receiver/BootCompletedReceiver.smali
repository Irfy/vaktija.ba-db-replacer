.class public Lba/vaktija/android/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lba/vaktija/android/receiver/BootCompletedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    sget-object v3, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    const-string v4, "onReceive (boot completed)"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 23
    const-string v3, "USER_CLOSED"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 25
    .local v2, "userClosed":Z
    if-nez v2, :cond_0

    .line 26
    sget-object v3, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 27
    .local v1, "service":Landroid/content/Intent;
    const-string v3, "ACTION_BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    .end local v1    # "service":Landroid/content/Intent;
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v3, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Vaktija closed by user, not starting"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
