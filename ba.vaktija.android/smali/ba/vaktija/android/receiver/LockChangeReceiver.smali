.class public Lba/vaktija/android/receiver/LockChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockChangeReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lba/vaktija/android/receiver/LockChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/receiver/LockChangeReceiver;->TAG:Ljava/lang/String;

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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    sget-object v3, Lba/vaktija/android/receiver/LockChangeReceiver;->TAG:Ljava/lang/String;

    const-string v4, "onReceive (phone unlocked)"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "USER_CLOSED"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 24
    .local v2, "userClosed":Z
    sget-object v3, Lba/vaktija/android/receiver/LockChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userClosed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 28
    if-nez v2, :cond_0

    .line 29
    sget-object v3, Lba/vaktija/android/receiver/LockChangeReceiver;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, "service":Landroid/content/Intent;
    const-string v3, "ACTION_LOCK_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method
