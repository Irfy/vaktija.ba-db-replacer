.class public Lba/vaktija/android/AlarmActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AlarmActivity.java"

# interfaces
.implements Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;


# static fields
.field public static final ACTION_CANCEL_ALARM:Ljava/lang/String; = "ACTION_CANCEL_ALARM"

.field private static final ALARM_NOTIF:I = 0x539

.field private static final ALARM_NOTIF_MISSED:I = 0x921

.field private static final ALARM_SLEEP:I = 0x493e0

.field private static final ALARM_TIMEOUT:I = 0x1d4c0

.field public static final EXTRA_PLAY_ALARM_SOUND:Ljava/lang/String; = "EXTRA_PLAY_ALARM_SOUND"

.field public static final EXTRA_PRAYER_ID:Ljava/lang/String; = "EXTRA_PRAYER_ID"

.field public static final LAUNCH_ALARM:Ljava/lang/String; = "LAUNCH_ALARM"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

.field private app:Lba/vaktija/android/App;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private notificationManager:Landroid/app/NotificationManager;

.field private prayer:Lba/vaktija/android/models/Prayer;

.field private preferences:Landroid/content/SharedPreferences;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lba/vaktija/android/AlarmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/AlarmActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarm()V

    return-void
.end method

.method private cancelAlarm()V
    .locals 3

    .line 236
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[cancelAlarm]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 239
    invoke-static {p0}, Lba/vaktija/android/service/OngoingAlarmService;->getStopAlarmIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lba/vaktija/android/AlarmActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-virtual {v0}, Lba/vaktija/android/service/AlarmSoundPlayer;->cancel()V

    .line 244
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 248
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x539

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alarmActive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static cancelAlarm(Landroid/app/Activity;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_CANCEL_ALARM"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 163
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 313
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alarmActive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarm()V

    .line 315
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "power"

    .line 79
    invoke-virtual {p0, v0}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 80
    sget-object v1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const v2, 0x10000001

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/AlarmActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 83
    new-instance v0, Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-direct {v0, p0}, Lba/vaktija/android/service/AlarmSoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lba/vaktija/android/AlarmActivity;->alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

    .line 85
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 87
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x680080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget-object p1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v0, "[*** onCreate ***]"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/AlarmActivity;->app:Lba/vaktija/android/App;

    const p1, 0x7f0b0021

    .line 100
    invoke-virtual {p0, p1}, Lba/vaktija/android/AlarmActivity;->setContentView(I)V

    const p1, 0x7f080041

    .line 102
    invoke-virtual {p0, p1}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f080042

    .line 103
    invoke-virtual {p0, v0}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f08003e

    .line 104
    invoke-virtual {p0, v2}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080040

    .line 105
    invoke-virtual {p0, v3}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lba/vaktija/android/widgets/SlidingLayout;

    const v4, 0x7f08003f

    .line 106
    invoke-virtual {p0, v4}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 108
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    .line 110
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "alarmActive"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v5, "notification"

    .line 112
    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 114
    invoke-virtual {v3, p0}, Lba/vaktija/android/widgets/SlidingLayout;->setSlidingListener(Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;)V

    const v3, 0x7f010024

    .line 116
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_PRAYER_ID"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 120
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "EXTRA_PLAY_ALARM_SOUND"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 122
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v8

    invoke-virtual {v8, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v8

    iput-object v8, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    if-ne v3, v5, :cond_0

    .line 125
    sget-object p1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v0, "Prayer is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    return-void

    .line 131
    :cond_0
    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v3

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x5

    .line 135
    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    .line 136
    div-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x18

    .line 138
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p1, v7, [Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "%s JE ZA"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_1

    .line 144
    :try_start_0
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    invoke-virtual {p1}, Lba/vaktija/android/App;->getAlarmSoundUri()Landroid/net/Uri;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->alarmSoundPlayer:Lba/vaktija/android/service/AlarmSoundPlayer;

    invoke-virtual {v0, p1, v7}, Lba/vaktija/android/service/AlarmSoundPlayer;->play(Landroid/net/Uri;Z)V

    .line 146
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->showNotification()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->startCountDownTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot play alarm sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Can\'t play alarm sound"

    .line 154
    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 158
    :goto_0
    iget-object p1, p0, Lba/vaktija/android/AlarmActivity;->app:Lba/vaktija/android/App;

    const-string v0, "Alarm"

    invoke-virtual {p1, v0}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 330
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 168
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 172
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "ACTION_CANCEL_ALARM"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarm()V

    .line 176
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onSlidingCompleted()V
    .locals 2

    .line 229
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onSlidingCompleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarm()V

    .line 232
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 321
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarm()V

    .line 323
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 324
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    return-void
.end method

.method rescheduleAlarm()V
    .locals 8

    .line 206
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->app:Lba/vaktija/android/App;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rescheduled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alarm rescheduled"

    invoke-virtual {v0, v2, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM_RESCHEDULED_ONCE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 215
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "alarm"

    .line 216
    invoke-virtual {p0, v1}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 218
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    .line 220
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-static {p0, v0}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 221
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm resheduled at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method showAlarmMissedNotification()V
    .locals 9

    .line 279
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showAlarmMissedNotification]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, 0x8000000

    .line 281
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 287
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "ALARMS_CHANNEL_3"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f070091

    .line 289
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 290
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 291
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 292
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 294
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 299
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    const/4 v8, 0x4

    .line 298
    invoke-static {v7, v8}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const v5, 0x7f0f0021

    .line 296
    invoke-virtual {p0, v5, v2}, Lba/vaktija/android/AlarmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f0f0020

    .line 302
    invoke-virtual {p0, v2}, Lba/vaktija/android/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 305
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    .line 304
    invoke-static {v5, v8}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0f001f

    .line 303
    invoke-virtual {p0, v3, v2}, Lba/vaktija/android/AlarmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 308
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x921

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method showNotification()V
    .locals 6

    .line 256
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[showNotification]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, 0x8000000

    .line 258
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 264
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "ALARMS_CHANNEL_3"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f07008d

    .line 266
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 267
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 271
    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " je za "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v4

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f0f001d

    .line 272
    invoke-virtual {p0, v2}, Lba/vaktija/android/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    .line 273
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->prayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v3

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 275
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x539

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method startCountDownTimer()V
    .locals 8

    .line 181
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[startCountDownTimer]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lba/vaktija/android/AlarmActivity$1;

    const-wide/32 v4, 0x1d4c0

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lba/vaktija/android/AlarmActivity$1;-><init>(Lba/vaktija/android/AlarmActivity;JJ)V

    iput-object v0, p0, Lba/vaktija/android/AlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 201
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
