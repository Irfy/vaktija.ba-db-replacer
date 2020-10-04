.class public Lba/vaktija/android/FragmentPrayer;
.super Landroidx/fragment/app/Fragment;
.source "FragmentPrayer.java"


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "EXTRA_ID"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field mAlarmDetailsWrapper:Landroid/view/View;

.field mAlarmIcon:Landroid/widget/ImageView;

.field mAlarmOnText:Landroid/widget/TextView;

.field private mApp:Lba/vaktija/android/App;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mEventBus:Lde/greenrobot/event/EventBus;

.field mLandscapeMode:Z

.field mMoreIcon:Landroid/widget/ImageView;

.field mNotifIcon:Landroid/widget/ImageView;

.field mNotificationOnText:Landroid/widget/TextView;

.field mNotifsDetailsWrapper:Landroid/view/View;

.field private mPrayer:Lba/vaktija/android/models/Prayer;

.field mPrayerTimer:Landroid/widget/TextView;

.field mPrayerTitle:Landroid/widget/TextView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRespectJuma:Z

.field mSoundDetailsWrapper:Landroid/view/View;

.field mSoundOffIcon:Landroid/widget/ImageView;

.field mSoundOnText:Landroid/widget/TextView;

.field mTimeText:Landroid/widget/TextView;

.field mVakatId:I

.field root:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lba/vaktija/android/FragmentPrayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lba/vaktija/android/FragmentPrayer;->mLandscapeMode:Z

    .line 54
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/FragmentPrayer;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 36
    iget-object p0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    return-object p0
.end method

.method static synthetic access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;
    .locals 0

    .line 36
    iget-object p0, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    return-object p0
.end method

.method static synthetic access$300(Lba/vaktija/android/FragmentPrayer;)Landroid/content/SharedPreferences;
    .locals 0

    .line 36
    iget-object p0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$400(Lba/vaktija/android/FragmentPrayer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lba/vaktija/android/FragmentPrayer;->updateIndicators()V

    return-void
.end method

.method private updateIndicators()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 333
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->anyEventsOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v2

    const v3, -0x777778

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const v2, -0x777778

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    const v2, -0x777778

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const v0, -0x777778

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    const v2, 0x7f0700aa

    const v3, 0x7f0700a9

    if-eqz v1, :cond_4

    const v1, 0x7f0700aa

    goto :goto_4

    :cond_4
    const v1, 0x7f0700a9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 340
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0700aa

    goto :goto_5

    :cond_5
    const v1, 0x7f0700a9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const v2, 0x7f0700a9

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    const/16 v2, 0x50

    const/16 v3, 0xff

    if-eqz v1, :cond_7

    const/16 v1, 0x50

    goto :goto_7

    :cond_7
    const/16 v1, 0xff

    :goto_7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mNotifIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x50

    goto :goto_8

    :cond_8
    const/16 v1, 0xff

    :goto_8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const/16 v2, 0xff

    :goto_9
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lba/vaktija/android/App;

    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    .line 116
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    .line 118
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/FragmentPrayer;->mLandscapeMode:Z

    .line 125
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    const-string v1, "separateJumaSettings"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    .line 127
    iget-object p1, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    new-instance v0, Lba/vaktija/android/FragmentPrayer$1;

    invoke-direct {v0, p0}, Lba/vaktija/android/FragmentPrayer$1;-><init>(Lba/vaktija/android/FragmentPrayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lba/vaktija/android/FragmentPrayer;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    .line 85
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getTag()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 86
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    :cond_0
    const p3, 0x7f0b0031

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080120

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    const p2, 0x7f080096

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    const p2, 0x7f080097

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTitle:Landroid/widget/TextView;

    const p2, 0x7f080129

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    const p2, 0x7f080125

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    const p2, 0x7f08011f

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    const p2, 0x7f080128

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    const p2, 0x7f08011d

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmDetailsWrapper:Landroid/view/View;

    const p2, 0x7f080126

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundDetailsWrapper:Landroid/view/View;

    const p2, 0x7f080123

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mNotifsDetailsWrapper:Landroid/view/View;

    const p2, 0x7f080127

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    const p2, 0x7f08011e

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    const p2, 0x7f080124

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mNotifIcon:Landroid/widget/ImageView;

    const p2, 0x7f080122

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$PrayerChangedEvent;)V
    .locals 1

    .line 356
    sget-object p1, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v0, "onEvent VakatChangedEvent"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    return-void
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$PrayerUpdatedEvent;)V
    .locals 2

    .line 362
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onEventMainThread PrayerUpdatedEvent"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;->getPrayerId()I

    move-result v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 364
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;->getPrayerId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$SkipSilentEvent;)V
    .locals 2

    .line 349
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent SilentDisabledEvent"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lba/vaktija/android/models/Events$SkipSilentEvent;->getPrayerId()I

    move-result p1

    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 282
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 283
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    if-eq v0, v3, :cond_0

    .line 288
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 289
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 274
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 275
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 277
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 296
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 301
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method showPrayer()V
    .locals 6

    .line 207
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "[showPrayer]"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 211
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 215
    :cond_0
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayer(I)Z

    move-result v0

    .line 218
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v2}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v2

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 222
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 223
    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 220
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundDetailsWrapper:Landroid/view/View;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mNotifsDetailsWrapper:Landroid/view/View;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmDetailsWrapper:Landroid/view/View;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    const/16 v3, 0x8

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_8

    .line 239
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    sget-object v2, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    instance-of v1, v1, Landroidx/cardview/widget/CardView;

    goto :goto_7

    .line 246
    :cond_8
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    sget-object v2, Lba/vaktija/android/App;->robotoCondensedLight:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    instance-of v1, v1, Landroidx/cardview/widget/CardView;

    .line 254
    :goto_7
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    new-instance v2, Lba/vaktija/android/FragmentPrayer$2;

    invoke-direct {v2, p0}, Lba/vaktija/android/FragmentPrayer$2;-><init>(Lba/vaktija/android/FragmentPrayer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-direct {p0}, Lba/vaktija/android/FragmentPrayer;->updateIndicators()V

    if-eqz v0, :cond_9

    .line 268
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->startTimer()V

    :cond_9
    return-void
.end method

.method startTimer()V
    .locals 9

    .line 307
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v0

    int-to-long v0, v0

    .line 311
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 315
    :cond_0
    new-instance v2, Lba/vaktija/android/FragmentPrayer$3;

    const-wide/16 v3, 0x3e8

    mul-long v5, v0, v3

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lba/vaktija/android/FragmentPrayer$3;-><init>(Lba/vaktija/android/FragmentPrayer;JJ)V

    iput-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 327
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
