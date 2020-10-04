.class Lba/vaktija/android/FragmentPrayer$1$1;
.super Ljava/lang/Object;
.source "FragmentPrayer.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/FragmentPrayer$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lba/vaktija/android/FragmentPrayer$1;


# direct methods
.method constructor <init>(Lba/vaktija/android/FragmentPrayer$1;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p1, "N/A"

    goto/16 :goto_3

    .line 178
    :pswitch_0
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 179
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Skipping next silent"

    goto :goto_0

    :cond_0
    const-string v2, "Restoring next silent"

    :goto_0
    invoke-virtual {p1, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    invoke-virtual {p1}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$300(Lba/vaktija/android/FragmentPrayer;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "silentDisabledByUser"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string p1, "ACTION_SILENT_CHANGED"

    goto/16 :goto_3

    .line 172
    :pswitch_1
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextNotif(Z)V

    .line 173
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Skipping next notification"

    goto :goto_1

    :cond_2
    const-string v2, "Restoring next notification"

    :goto_1
    invoke-virtual {p1, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ACTION_NOTIF_CHANGED"

    goto :goto_3

    .line 166
    :pswitch_2
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lba/vaktija/android/models/Prayer;->setSkipNextAlarm(Z)V

    .line 167
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object p1

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Skipping next alarm"

    goto :goto_2

    :cond_3
    const-string v2, "Restoring next alarm"

    :goto_2
    invoke-virtual {p1, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ACTION_ALARM_CHANGED"

    .line 189
    :goto_3
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$400(Lba/vaktija/android/FragmentPrayer;)V

    .line 191
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->save()V

    .line 193
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object v1

    invoke-static {v1}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 194
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v1, v1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {v1}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onClick()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 195
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object p1, p1, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    invoke-static {p1}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0800d4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
