.class public Lba/vaktija/android/service/NotifManagerFactory;
.super Ljava/lang/Object;
.source "NotifManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotifManager(Landroid/content/Context;)Lba/vaktija/android/service/NotifManager;
    .locals 3

    const-string v0, "NotifManagerFactory"

    const-string v1, "getNotifManager"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const-string v1, "NotifManagerV24"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {p0}, Lba/vaktija/android/service/LegacyNotifManager;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/LegacyNotifManager;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "NotifManagerV26"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0}, Lba/vaktija/android/service/NotifManagerV26;->getInstance(Landroid/content/Context;)Lba/vaktija/android/service/NotifManagerV26;

    move-result-object p0

    return-object p0
.end method
