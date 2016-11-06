.class Lba/vaktija/android/FragmentPrayer$1$1;
.super Ljava/lang/Object;
.source "FragmentPrayer.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


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
    .param p1, "this$1"    # Lba/vaktija/android/FragmentPrayer$1;

    .prologue
    .line 156
    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    const-string v0, "N/A"

    .line 162
    .local v0, "action":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 187
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # invokes: Lba/vaktija/android/FragmentPrayer;->updateIndicators()V
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$400(Lba/vaktija/android/FragmentPrayer;)V

    .line 189
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->save()V

    .line 191
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object v2

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 192
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onClick()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$000(Lba/vaktija/android/FragmentPrayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AppCompatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    return v3

    .line 164
    .end local v1    # "service":Landroid/content/Intent;
    :pswitch_0
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v5, v5, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v5}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextAlarm(Z)V

    .line 165
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object v4

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Skipping next alarm"

    :goto_1
    invoke-virtual {v4, v5, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "ACTION_ALARM_CHANGED"

    .line 168
    goto/16 :goto_0

    .line 165
    :cond_1
    const-string v2, "Restoring next alarm"

    goto :goto_1

    .line 170
    :pswitch_1
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v5, v5, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v5}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Lba/vaktija/android/models/Prayer;->setSkipNextNotif(Z)V

    .line 171
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object v4

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v2, v2, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v2}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Skipping next notification"

    :goto_2
    invoke-virtual {v4, v5, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "ACTION_NOTIF_CHANGED"

    .line 174
    goto/16 :goto_0

    .line 171
    :cond_3
    const-string v2, "Restoring next notification"

    goto :goto_2

    .line 176
    :pswitch_2
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v5

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v3

    :goto_3
    invoke-virtual {v5, v4}, Lba/vaktija/android/models/Prayer;->setSkipNextSilent(Z)V

    .line 177
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;

    move-result-object v5

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Skipping next silent"

    :goto_4
    invoke-virtual {v5, v6, v4}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;

    move-result-object v4

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v4

    if-nez v4, :cond_4

    .line 180
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer$1$1;->this$1:Lba/vaktija/android/FragmentPrayer$1;

    iget-object v4, v4, Lba/vaktija/android/FragmentPrayer$1;->this$0:Lba/vaktija/android/FragmentPrayer;

    # getter for: Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lba/vaktija/android/FragmentPrayer;->access$300(Lba/vaktija/android/FragmentPrayer;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "silentDisabledByUser"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_4
    const-string v0, "ACTION_SILENT_CHANGED"

    goto/16 :goto_0

    :cond_5
    move v4, v2

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    const-string v4, "Restoring next silent"

    goto :goto_4

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00ef
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
