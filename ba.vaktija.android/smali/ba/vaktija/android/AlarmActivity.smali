.class public Lba/vaktija/android/AlarmActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AlarmActivity.java"

# interfaces
.implements Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ACTION_CANCEL_ALARM:Ljava/lang/String; = "ACTION_CANCEL_ALARM"

.field private static final ALARM_NOTIF:I = 0x539

.field private static final ALARM_NOTIF_MISSED:I = 0x921

.field private static final ALARM_SLEEP:I = 0x493e0

.field private static final ALARM_TIMEOUT:I = 0x1d4c0

.field public static final EXTRA_PRAYER_ID:Ljava/lang/String; = "EXTRA_PRAYER_ID"

.field public static final LAUNCH_ALARM:Ljava/lang/String; = "LAUNCH_ALARM"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmTimeHrs:Landroid/widget/TextView;

.field private mAlarmTimeMins:Landroid/widget/TextView;

.field private mAlarmTimer:Landroid/os/CountDownTimer;

.field private mAlarmTitle:Landroid/widget/TextView;

.field private mApp:Lba/vaktija/android/App;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClockIcon:Landroid/widget/ImageView;

.field private mInitialStreamVolume:I

.field private mMaxStreamVolume:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrayer:Lba/vaktija/android/models/Prayer;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSlidingLayout:Lba/vaktija/android/widgets/SlidingLayout;

.field private mVolumeTimer:Landroid/os/CountDownTimer;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lba/vaktija/android/AlarmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/AlarmActivity;)I
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/AlarmActivity;

    .prologue
    .line 51
    iget v0, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    return v0
.end method

.method static synthetic access$100(Lba/vaktija/android/AlarmActivity;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/AlarmActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lba/vaktija/android/AlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/AlarmActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarmAndFinish()V

    return-void
.end method

.method public static cancelAlarm(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_CANCEL_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method private cancelAlarmAndFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 320
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[cancelAlarmAndFinish]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 325
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored STREAM_ALARM volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 331
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 334
    :cond_2
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mVolumeTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mVolumeTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 337
    :cond_3
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x539

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 338
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 340
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alarmActive"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 344
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 345
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method increaseVolume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 226
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[increaseVolume]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    .line 229
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/AlarmActivity;->mMaxStreamVolume:I

    .line 231
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitialStreamVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxStreamVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lba/vaktija/android/AlarmActivity;->mMaxStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v4, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 236
    new-instance v0, Lba/vaktija/android/AlarmActivity$1;

    iget v1, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lba/vaktija/android/AlarmActivity$1;-><init>(Lba/vaktija/android/AlarmActivity;JJ)V

    iput-object v0, p0, Lba/vaktija/android/AlarmActivity;->mVolumeTimer:Landroid/os/CountDownTimer;

    .line 255
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mVolumeTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 256
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alarmActive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 407
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 92
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPowerManager:Landroid/os/PowerManager;

    const v6, 0x10000001

    sget-object v7, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 96
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x680080

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v6, "[*** onCreate ***]"

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v5, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v5}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    const-string v6, "fonts/RobotoCondensed-Regular.ttf"

    .line 110
    invoke-virtual {v5, v6}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v5

    const v6, 0x7f010001

    .line 111
    invoke-virtual {v5, v6}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v5

    .line 112
    invoke-virtual {v5}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v5

    .line 109
    invoke-static {v5}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 115
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lba/vaktija/android/App;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mApp:Lba/vaktija/android/App;

    .line 117
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    const v5, 0x7f03001d

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->setContentView(I)V

    .line 121
    const v5, 0x7f0e0058

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimeHrs:Landroid/widget/TextView;

    .line 122
    const v5, 0x7f0e0059

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimeMins:Landroid/widget/TextView;

    .line 123
    const v5, 0x7f0e0057

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTitle:Landroid/widget/TextView;

    .line 124
    const v5, 0x7f0e005a

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lba/vaktija/android/widgets/SlidingLayout;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mSlidingLayout:Lba/vaktija/android/widgets/SlidingLayout;

    .line 125
    const v5, 0x7f0e005b

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mClockIcon:Landroid/widget/ImageView;

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 129
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "alarmActive"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 133
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mSlidingLayout:Lba/vaktija/android/widgets/SlidingLayout;

    invoke-virtual {v5, p0}, Lba/vaktija/android/widgets/SlidingLayout;->setSlidingListener(Lba/vaktija/android/widgets/SlidingLayout$SlidingLayoutListener;)V

    .line 135
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mClockIcon:Landroid/widget/ImageView;

    const v6, 0x7f04000f

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_PRAYER_ID"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    .local v3, "prayerId":I
    invoke-static {p0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    invoke-virtual {v5, v3}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v5

    iput-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 141
    if-ne v3, v8, :cond_0

    .line 142
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v6, "Prayer is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "alarmActive"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v6

    sub-int v4, v5, v6

    .line 150
    .local v4, "time":I
    add-int/lit8 v4, v4, 0x5

    .line 152
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v2, v5, 0x3c

    .line 153
    .local v2, "minutes":I
    div-int/lit16 v5, v4, 0xe10

    rem-int/lit8 v1, v5, 0x18

    .line 155
    .local v1, "hours":I
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimeHrs:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimeMins:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTitle:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " JE ZA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->playAlarmSound()V

    .line 161
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->increaseVolume()V

    .line 162
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->startCountDownTimer()V

    .line 163
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->showNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initial stream volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lba/vaktija/android/AlarmActivity;->mInitialStreamVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mApp:Lba/vaktija/android/App;

    const-string v6, "Alarm"

    invoke-virtual {v5, v6}, Lba/vaktija/android/App;->sendScreenView(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot play alarm sound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v5, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lba/vaktija/android/util/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v5, "Can\'t play alarm sound"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 284
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarmAndFinish()V

    .line 287
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 424
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    sget-object v1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent]"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v0, :cond_0

    const-string v1, "ACTION_CANCEL_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarmAndFinish()V

    .line 193
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 411
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 413
    return-void
.end method

.method public onSlidingCompleted()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onSlidingCompleted]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lba/vaktija/android/AlarmActivity;->cancelAlarmAndFinish()V

    .line 317
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lba/vaktija/android/AlarmActivity;->finish()V

    .line 419
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserLeaveHint()V

    .line 420
    return-void
.end method

.method playAlarmSound()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 201
    sget-object v2, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v3, "[playAlarmSound]"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "alarmToneUri"

    .line 205
    invoke-static {p0, v5}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "selectedAlarmTonePath":Ljava/lang/String;
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "useVaktijaAlarmTone"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {p0, v5}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    sget-object v2, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected alarm tone path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, "soundUri":Landroid/net/Uri;
    sget-object v2, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sound uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 218
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 219
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 220
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 221
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 222
    iget-object v2, p0, Lba/vaktija/android/AlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 223
    return-void
.end method

.method rescheduleAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 291
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mApp:Lba/vaktija/android/App;

    const-string v6, "Alarm rescheduled"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rescheduled for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v8}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALARM_RESCHEDULED_ONCE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 295
    .local v0, "alreadyResheduled":Z
    if-eqz v0, :cond_0

    .line 296
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALARM_RESCHEDULED_ONCE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 301
    .local v2, "cal":Ljava/util/Calendar;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lba/vaktija/android/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 303
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long v4, v6, v8

    .line 305
    .local v4, "triggerAtMillis":J
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-static {p0, v3}, Lba/vaktija/android/models/Prayer;->getAlarmPendingIntent(Landroid/content/Context;Lba/vaktija/android/models/Prayer;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v10, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 306
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALARM_RESCHEDULED_ONCE_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    sget-object v3, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm resheduled at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method showAlarmMissedNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 371
    sget-object v3, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v4, "[showAlarmMissedNotification]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lba/vaktija/android/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    const/high16 v4, 0x8000000

    .line 373
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 379
    .local v2, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v3, 0x7f02006e

    .line 381
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 382
    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 383
    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 384
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 385
    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, -0x1

    .line 386
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f070018

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 391
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    .line 390
    invoke-static {v7, v10}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 388
    invoke-virtual {p0, v4, v5}, Lba/vaktija/android/AlarmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f070017

    .line 394
    invoke-virtual {p0, v4}, Lba/vaktija/android/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f070016

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 397
    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v7

    .line 396
    invoke-static {v7, v10}, Lba/vaktija/android/util/FormattingUtils;->getCaseTitle(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 395
    invoke-virtual {p0, v4, v5}, Lba/vaktija/android/AlarmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 400
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x921

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 401
    return-void
.end method

.method showNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 348
    sget-object v3, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v4, "[showNotification]"

    invoke-static {v3, v4}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lba/vaktija/android/AlarmActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    const/high16 v4, 0x8000000

    .line 350
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 356
    .local v2, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .local v1, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v3, 0x7f02006a

    .line 358
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 361
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 362
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 363
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " je za "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v7}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f070014

    .line 364
    invoke-virtual {p0, v4}, Lba/vaktija/android/AlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 365
    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " je za "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lba/vaktija/android/AlarmActivity;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getPrayerTime()I

    move-result v5

    invoke-static {}, Lba/vaktija/android/util/Utils;->getCurrentTimeSec()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v7}, Lba/vaktija/android/util/FormattingUtils;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 367
    iget-object v3, p0, Lba/vaktija/android/AlarmActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x539

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 368
    return-void
.end method

.method startCountDownTimer()V
    .locals 6

    .prologue
    .line 259
    sget-object v0, Lba/vaktija/android/AlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "[startCountDownTimer]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lba/vaktija/android/AlarmActivity$2;

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lba/vaktija/android/AlarmActivity$2;-><init>(Lba/vaktija/android/AlarmActivity;JJ)V

    iput-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimer:Landroid/os/CountDownTimer;

    .line 278
    iget-object v0, p0, Lba/vaktija/android/AlarmActivity;->mAlarmTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 279
    return-void
.end method
