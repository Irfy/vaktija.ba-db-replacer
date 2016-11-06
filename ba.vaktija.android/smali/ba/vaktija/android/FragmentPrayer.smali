.class public Lba/vaktija/android/FragmentPrayer;
.super Landroid/support/v4/app/Fragment;
.source "FragmentPrayer.java"


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "EXTRA_ID"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/support/v7/app/AppCompatActivity;

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

    .prologue
    .line 35
    const-class v0, Lba/vaktija/android/FragmentPrayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/vaktija/android/FragmentPrayer;->mLandscapeMode:Z

    .line 52
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/FragmentPrayer;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 34
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/models/Prayer;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 34
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    return-object v0
.end method

.method static synthetic access$200(Lba/vaktija/android/FragmentPrayer;)Lba/vaktija/android/App;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 34
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    return-object v0
.end method

.method static synthetic access$300(Lba/vaktija/android/FragmentPrayer;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 34
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lba/vaktija/android/FragmentPrayer;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/FragmentPrayer;

    .prologue
    .line 34
    invoke-direct {p0}, Lba/vaktija/android/FragmentPrayer;->updateIndicators()V

    return-void
.end method

.method private updateIndicators()V
    .locals 8

    .prologue
    const v3, 0x7f02007a

    const v4, 0x7f020079

    const/16 v6, 0xff

    const/16 v5, 0x50

    const v2, -0x777778

    .line 329
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0d0020

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 331
    .local v0, "colorLight":I
    iget-object v7, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->anyEventsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v7, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_1
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v7, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    iget-object v7, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v7}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v7

    if-eqz v7, :cond_3

    .end local v0    # "colorLight":I
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 338
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 339
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 341
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextAlarm()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    :goto_7
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 342
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotifIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->skipNextNotif()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    :goto_8
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v2}, Lba/vaktija/android/models/Prayer;->skipNextSilent()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    return-void

    .line 331
    .restart local v0    # "colorLight":I
    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 333
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 334
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 335
    goto :goto_3

    .end local v0    # "colorLight":I
    :cond_4
    move v1, v4

    .line 337
    goto :goto_4

    :cond_5
    move v1, v4

    .line 338
    goto :goto_5

    :cond_6
    move v3, v4

    .line 339
    goto :goto_6

    :cond_7
    move v1, v6

    .line 341
    goto :goto_7

    :cond_8
    move v1, v6

    .line 342
    goto :goto_8

    :cond_9
    move v5, v6

    .line 343
    goto :goto_9
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 112
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    .line 114
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    .line 116
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    .line 121
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/FragmentPrayer;->mLandscapeMode:Z

    .line 123
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "separateJumaSettings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    .line 125
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    new-instance v1, Lba/vaktija/android/FragmentPrayer$1;

    invoke-direct {v1, p0}, Lba/vaktija/android/FragmentPrayer$1;-><init>(Lba/vaktija/android/FragmentPrayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lba/vaktija/android/FragmentPrayer;->setRetainInstance(Z)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    .line 83
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    .line 87
    :cond_0
    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    .line 90
    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTitle:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0e009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f0e0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmDetailsWrapper:Landroid/view/View;

    .line 97
    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundDetailsWrapper:Landroid/view/View;

    .line 98
    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotifsDetailsWrapper:Landroid/view/View;

    .line 99
    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mNotifIcon:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mMoreIcon:Landroid/widget/ImageView;

    .line 104
    return-object v0
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$PrayerChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lba/vaktija/android/models/Events$PrayerChangedEvent;

    .prologue
    .line 354
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent VakatChangedEvent"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 357
    return-void
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$PrayerUpdatedEvent;)V
    .locals 2
    .param p1, "event"    # Lba/vaktija/android/models/Events$PrayerUpdatedEvent;

    .prologue
    .line 360
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onEventMainThread PrayerUpdatedEvent"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;->getPrayerId()I

    move-result v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 362
    invoke-virtual {v0}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lba/vaktija/android/models/Events$PrayerUpdatedEvent;->getPrayerId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 366
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lba/vaktija/android/models/Events$SkipSilentEvent;)V
    .locals 2
    .param p1, "event"    # Lba/vaktija/android/models/Events$SkipSilentEvent;

    .prologue
    .line 347
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent SilentDisabledEvent"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lba/vaktija/android/models/Events$SkipSilentEvent;->getPrayerId()I

    move-result v0

    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 351
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 281
    sget-object v1, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "separateJumaSettings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    .local v0, "respectJuma":Z
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v1}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    if-eq v0, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 287
    iget-object v1, p0, Lba/vaktija/android/FragmentPrayer;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "separateJumaSettings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lba/vaktija/android/FragmentPrayer;->mRespectJuma:Z

    .line 289
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 273
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->showPrayer()V

    .line 275
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 294
    sget-object v0, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 299
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method showPrayer()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 205
    sget-object v3, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    const-string v5, "[showPrayer]"

    invoke-static {v3, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    iget v5, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    invoke-virtual {v3, v5}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 209
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    invoke-virtual {v3}, Lba/vaktija/android/models/PrayersSchedule;->isJumaDay()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lba/vaktija/android/FragmentPrayer;->mVakatId:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 210
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lba/vaktija/android/models/PrayersSchedule;->getPrayer(I)Lba/vaktija/android/models/Prayer;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 213
    :cond_0
    sget-object v3, Lba/vaktija/android/FragmentPrayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v3}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v3

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lba/vaktija/android/models/PrayersSchedule;->isNextPrayer(I)Z

    move-result v1

    .line 216
    .local v1, "isNext":Z
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v3

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mApp:Lba/vaktija/android/App;

    invoke-static {v5}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/PrayersSchedule;->getCurrentPrayer()Lba/vaktija/android/models/Prayer;

    move-result-object v5

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->getId()I

    move-result v5

    if-ne v3, v5, :cond_3

    const/4 v0, 0x1

    .line 218
    .local v0, "current":Z
    :goto_0
    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 220
    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getShortTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 218
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v6}, Lba/vaktija/android/models/Prayer;->getHrsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v6}, Lba/vaktija/android/models/Prayer;->getMinsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOffIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mSoundDetailsWrapper:Landroid/view/View;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isSilentOn()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mNotifsDetailsWrapper:Landroid/view/View;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isNotifOn()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    :goto_5
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmDetailsWrapper:Landroid/view/View;

    iget-object v5, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v5}, Lba/vaktija/android/models/Prayer;->isAlarmOn()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    if-eqz v0, :cond_a

    .line 237
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    sget-object v3, Lba/vaktija/android/App;->robotoCondensedRegular:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    instance-of v2, v2, Landroid/support/v7/widget/CardView;

    if-eqz v2, :cond_1

    .line 252
    :cond_1
    :goto_7
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    new-instance v3, Lba/vaktija/android/FragmentPrayer$2;

    invoke-direct {v3, p0}, Lba/vaktija/android/FragmentPrayer$2;-><init>(Lba/vaktija/android/FragmentPrayer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mNotificationOnText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getNotifMins()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mAlarmOnText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getAlarmMins()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mSoundOnText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    invoke-virtual {v4}, Lba/vaktija/android/models/Prayer;->getSoundOnMins()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0}, Lba/vaktija/android/FragmentPrayer;->updateIndicators()V

    .line 265
    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->startTimer()V

    .line 268
    :cond_2
    return-void

    .end local v0    # "current":Z
    :cond_3
    move v0, v2

    .line 216
    goto/16 :goto_0

    .line 220
    .restart local v0    # "current":Z
    :cond_4
    iget-object v3, p0, Lba/vaktija/android/FragmentPrayer;->mPrayer:Lba/vaktija/android/models/Prayer;

    .line 221
    invoke-virtual {v3}, Lba/vaktija/android/models/Prayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 226
    goto/16 :goto_2

    :cond_6
    move v3, v4

    .line 227
    goto/16 :goto_3

    :cond_7
    move v3, v4

    .line 229
    goto/16 :goto_4

    :cond_8
    move v3, v4

    .line 231
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 232
    goto/16 :goto_6

    .line 244
    :cond_a
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    sget-object v3, Lba/vaktija/android/App;->robotoCondensedLight:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba/vaktija/android/FragmentPrayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v2, p0, Lba/vaktija/android/FragmentPrayer;->root:Landroid/view/View;

    instance-of v2, v2, Landroid/support/v7/widget/CardView;

    if-eqz v2, :cond_1

    goto/16 :goto_7
.end method

.method startTimer()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x3e8

    .line 305
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mPrayerTimer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->getTimeTillNextPrayer()I

    move-result v0

    int-to-long v6, v0

    .line 309
    .local v6, "secondsInFuture":J
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 313
    :cond_0
    new-instance v0, Lba/vaktija/android/FragmentPrayer$3;

    mul-long v2, v6, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lba/vaktija/android/FragmentPrayer$3;-><init>(Lba/vaktija/android/FragmentPrayer;JJ)V

    iput-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 325
    iget-object v0, p0, Lba/vaktija/android/FragmentPrayer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 326
    return-void
.end method
