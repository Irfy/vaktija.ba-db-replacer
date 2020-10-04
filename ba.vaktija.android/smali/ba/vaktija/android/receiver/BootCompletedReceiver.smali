.class public Lba/vaktija/android/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lba/vaktija/android/receiver/BootCompletedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    sget-object p2, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    const-string v0, "onReceive (boot completed)"

    invoke-static {p2, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 23
    invoke-static {p1}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    const-string v0, "USER_CLOSED"

    const/4 v1, 0x0

    .line 25
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 28
    sget-object p2, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "ACTION_BOOT_COMPLETED"

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {p1, p2}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Lba/vaktija/android/receiver/BootCompletedReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Vaktija closed by user, not starting"

    invoke-static {p1, p2}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
