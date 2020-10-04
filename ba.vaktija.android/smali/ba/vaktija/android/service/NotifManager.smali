.class public interface abstract Lba/vaktija/android/service/NotifManager;
.super Ljava/lang/Object;
.source "NotifManager.java"


# static fields
.field public static final ALARMS_CHANNEL:Ljava/lang/String; = "ALARMS_CHANNEL_3"

.field public static final ALARM_NOTIF:I = 0x4e

.field public static final APPROACHING_CHANNEL:Ljava/lang/String; = "APPROACHING_CHANNEL"

.field public static final DEFAULT_CHANNEL:Ljava/lang/String; = "DEFAULT_CHANNEL"

.field public static final NOTIF_UPDATE_INTERVAL:I = 0x2710

.field public static final ONGOING_NOTIF:I = 0x4d


# virtual methods
.method public abstract buildCountDownNotif(Z)V
.end method

.method public abstract cancelAlarmNotif()V
.end method

.method public abstract cancelApproachingNotif()V
.end method

.method public abstract cancelNotification()V
.end method

.method public abstract getAlarmNotif(Lba/vaktija/android/models/Prayer;)Landroid/app/Notification;
.end method

.method public abstract getOngoingNotif(ZLjava/lang/String;)Landroid/app/Notification;
.end method

.method public abstract onApproachingNotifDeleted()V
.end method

.method public abstract onSilentNotifDeleted()V
.end method

.method public abstract setNotificationsEnabled(Z)V
.end method

.method public abstract showApproachingNotification()V
.end method

.method public abstract updateNotification()V
.end method
