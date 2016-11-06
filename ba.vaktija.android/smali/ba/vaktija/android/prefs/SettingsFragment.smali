.class public Lba/vaktija/android/prefs/SettingsFragment;
.super Landroid/support/v4/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;,
        Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;
    }
.end annotation


# static fields
.field public static final EXTRA_FIRST_VISIBLE_ITEM:Ljava/lang/String; = "EXTRA_FIRST_VISIBLE_ITEM"

.field public static final EXTRA_ITEM_TOP:Ljava/lang/String; = "EXTRA_ITEM_TOP"

.field private static final REQUEST_ALARM_TONE:I = 0x2

.field private static final REQUEST_NOTIF_TONE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field aboutText:Ljava/lang/StringBuilder;

.field private alertDialog:Landroid/app/AlertDialog;

.field dhuhrCounting:Landroid/preference/ListPreference;

.field private location:Landroid/preference/Preference;

.field mAlarmTonePreference:Landroid/preference/Preference;

.field mApp:Lba/vaktija/android/App;

.field mNotificationTonePreference:Landroid/preference/Preference;

.field private mSelectedColor:Ljava/lang/String;

.field prefs:Landroid/content/SharedPreferences;

.field private scrolled:Z

.field selectedTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lba/vaktija/android/prefs/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->mSelectedColor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/prefs/SettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lba/vaktija/android/prefs/SettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->setDefaultTone(Z)V

    return-void
.end method

.method static synthetic access$200(Lba/vaktija/android/prefs/SettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->launchToneChooser(Z)V

    return-void
.end method

.method static synthetic access$300(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showSettingsExportedDialog()V

    return-void
.end method

.method static synthetic access$400(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showFileExistsDialog()V

    return-void
.end method

.method static synthetic access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->showErrorProcessingSettingsDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/prefs/SettingsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showFileMissingDialog()V

    return-void
.end method

.method private colorPreferenceTitles()V
    .locals 9

    .prologue
    .line 175
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 177
    .local v2, "almostBlack":I
    iget-object v7, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroid/preference/Preference;

    const v8, 0x7f070035

    .line 178
    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {v8, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    const-string v7, "statusbarNotification"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 182
    .local v6, "statusBarNotif":Landroid/preference/Preference;
    const v7, 0x7f070062

    .line 183
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    const-string v7, "ALL_PRAYERS_IN_NOTIF"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 189
    .local v1, "allPrayersNotif":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 190
    const v7, 0x7f07001a

    .line 191
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    iget-object v7, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    const v8, 0x7f070039

    .line 196
    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-static {v8, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v7, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    const v8, 0x7f070019

    .line 200
    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-static {v8, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v7, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    const v8, 0x7f070029

    .line 204
    invoke-virtual {p0, v8}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-static {v8, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    const-string v7, "separateJumaSettings"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 208
    .local v4, "separateJumaSettings":Landroid/preference/Preference;
    const v7, 0x7f070056

    .line 209
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    const-string v7, "showDate"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 213
    .local v5, "showDate":Landroid/preference/Preference;
    const v7, 0x7f070025

    .line 214
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 225
    .local v3, "feedback":Landroid/preference/Preference;
    const v7, 0x7f070032

    .line 226
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    const-string v7, "about"

    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 230
    .local v0, "about":Landroid/preference/Preference;
    const v7, 0x7f070012

    .line 231
    invoke-virtual {p0, v7}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v7, v2}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method private launchToneChooser(Z)V
    .locals 8
    .param p1, "alarmTone"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 425
    iget-object v6, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const-string v3, "alarmToneUri"

    :goto_0
    const-string v7, ""

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 429
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.ringtone.TYPE"

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {p0, v0, v4}, Lba/vaktija/android/prefs/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void

    .line 425
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v3, "notificationToneUri"

    goto :goto_0

    .line 427
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    move v3, v4

    .line 430
    goto :goto_2

    :cond_3
    move v4, v5

    .line 436
    goto :goto_3
.end method

.method public static newInstance(II)Lba/vaktija/android/prefs/SettingsFragment;
    .locals 3
    .param p0, "scrollPosition"    # I
    .param p1, "itemTop"    # I

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "EXTRA_ITEM_TOP"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    new-instance v1, Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {v1}, Lba/vaktija/android/prefs/SettingsFragment;-><init>()V

    .line 83
    .local v1, "sf":Lba/vaktija/android/prefs/SettingsFragment;
    invoke-virtual {v1, v0}, Lba/vaktija/android/prefs/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method

.method private restart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 309
    iput-boolean v6, p0, Lba/vaktija/android/prefs/SettingsFragment;->scrolled:Z

    .line 310
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 311
    .local v0, "firstVisibleItem":I
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 313
    .local v1, "firstVisibleItemTop":I
    sget-object v3, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firstVisibleItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v3, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firstVisibleItemTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 317
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 318
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v3, "EXTRA_ITEM_TOP"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 322
    return-void
.end method

.method private setDefaultTone(Z)V
    .locals 3
    .param p1, "alarmTone"    # Z

    .prologue
    .line 411
    sget-object v0, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultTone alarmTone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "useVaktijaAlarmTone"

    :goto_0
    const/4 v2, 0x1

    .line 415
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    if-eqz p1, :cond_1

    .line 419
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    sget-object v1, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    :goto_1
    return-void

    .line 413
    :cond_0
    const-string v0, "useVaktijaNotifTone"

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    sget-object v1, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showErrorProcessingSettingsDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Gre\u0161ka"

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do\u0161lo je do gre\u0161ke prilikom procesiranja postavki: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Uredu"

    const/4 v2, 0x0

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 503
    return-void
.end method

.method private showFileExistsDialog()V
    .locals 3

    .prologue
    .line 484
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Prepisati postavke?"

    .line 485
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Postavke su ve\u0107 prije eksportovane u vaktija_settings.dat datoteku. Da li ih \u017eelite zamijeniti sa novim postavkama?"

    .line 486
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Zamijeni"

    new-instance v2, Lba/vaktija/android/prefs/SettingsFragment$4;

    invoke-direct {v2, p0}, Lba/vaktija/android/prefs/SettingsFragment$4;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ne"

    const/4 v2, 0x0

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 495
    return-void
.end method

.method private showFileMissingDialog()V
    .locals 3

    .prologue
    .line 506
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Datoteka ne postoji"

    .line 507
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Datoteka vaktija_settings.dat nije prona\u0111ena"

    .line 508
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Uredu"

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 511
    return-void
.end method

.method private showSettingsExportedDialog()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Postavke eksportovane"

    .line 477
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Postavke eksportovane u vaktija_settings.dat fajl"

    .line 478
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Uredu"

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 481
    return-void
.end method

.method private showToneSelectionDialog(Z)V
    .locals 8
    .param p1, "alarmTone"    # Z

    .prologue
    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 383
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 384
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090003

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    :goto_0
    aput-object v3, v6, v7

    const/4 v3, 0x1

    const-string v7, "Odaberi drugi..."

    aput-object v7, v6, v3

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 389
    .local v2, "optionsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    new-instance v3, Lba/vaktija/android/prefs/SettingsFragment$3;

    invoke-direct {v3, p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$3;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 407
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 408
    return-void

    .line 384
    .end local v2    # "optionsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f070022

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    sget-object v2, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "onActivityResult"

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    if-ne p1, v5, :cond_3

    .line 333
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 335
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_NOTIF_TONE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-nez v1, :cond_2

    .line 338
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 341
    :cond_2
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 343
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-eqz v0, :cond_5

    .line 345
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "notificationToneUri"

    .line 346
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "useVaktijaNotifTone"

    .line 347
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 348
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 357
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 359
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_4

    .line 360
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 362
    :cond_4
    sget-object v2, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_ALARM_TONE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 366
    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    if-eqz v0, :cond_6

    .line 367
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "alarmToneUri"

    .line 368
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "useVaktijaAlarmTone"

    .line 369
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 370
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    iget-object v2, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 374
    :cond_6
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    sget-object v0, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/support/v4/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v11, 0x7f050001

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 104
    const-string v11, "locationName"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroid/preference/Preference;

    .line 105
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 106
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroid/preference/Preference;

    iget-object v12, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v13, "locationName"

    const-string v14, "Beč (Džemat Bosna)"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    const-string v11, "statusbarNotification"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 109
    .local v9, "statusBarNotif":Landroid/preference/Preference;
    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v11, "ALL_PRAYERS_IN_NOTIF"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 112
    .local v1, "allPrayersNotif":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-ge v11, v12, :cond_0

    .line 115
    const-string v11, "notifications"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 116
    .local v2, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    .end local v2    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    const-string v11, "notificationToneUri"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    .line 120
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    sget-object v10, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    .line 124
    .local v10, "title":Ljava/lang/String;
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "useVaktijaNotifTone"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 125
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "notificationToneUri"

    .line 126
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v13

    .line 125
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "selectedNotifTone":Ljava/lang/String;
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    .line 129
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 131
    .local v4, "ringtone":Landroid/media/Ringtone;
    sget-object v11, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectedNotifTone: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-virtual {v4, v11}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 135
    .end local v4    # "ringtone":Landroid/media/Ringtone;
    .end local v7    # "selectedNotifTone":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mNotificationTonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    const-string v11, "alarmToneUri"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    .line 138
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    sget-object v6, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    .line 142
    .local v6, "selectedAlarmToneTitle":Ljava/lang/String;
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "useVaktijaAlarmTone"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 143
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "alarmToneUri"

    .line 145
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v13

    .line 143
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "selectedAlarmTone":Ljava/lang/String;
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    .line 148
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 150
    .local v0, "alarmRingtone":Landroid/media/Ringtone;
    sget-object v11, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectedAlarmTone: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    invoke-virtual {v0, v11}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .end local v0    # "alarmRingtone":Landroid/media/Ringtone;
    .end local v5    # "selectedAlarmTone":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->mAlarmTonePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    const-string v11, "dhuhrTime"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    .line 157
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v11, "separateJumaSettings"

    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 160
    .local v8, "separateJumaSettings":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v11, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "dhuhrTime"

    const-string v13, "1"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "dhuhrTime":Ljava/lang/String;
    iget-object v12, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    const-string v11, "1"

    .line 164
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const v11, 0x7f070061

    .line 165
    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 163
    :goto_0
    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v12, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    const-string v11, "1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 170
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->colorPreferenceTitles()V

    .line 171
    return-void

    .line 165
    :cond_3
    const v11, 0x7f070054

    .line 166
    invoke-virtual {p0, v11}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 168
    :cond_4
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 260
    sget-object v2, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ALL_PRAYERS_IN_NOTIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lba/vaktija/android/prefs/SettingsFragment$2;

    invoke-direct {v3, p0}, Lba/vaktija/android/prefs/SettingsFragment$2;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "statusbarNotification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 276
    .local v0, "enabled":Z
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    const-string v4, "Settings"

    if-eqz v0, :cond_4

    const-string v2, "Enabled status bar notificatoin"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onPreferenceChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 279
    .local v1, "service":Landroid/content/Intent;
    if-eqz v0, :cond_5

    const-string v2, "ACTION_ENABLE_NOTIFS"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    .end local v0    # "enabled":Z
    .end local v1    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dhuhrTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onPreferenceChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 286
    .restart local v1    # "service":Landroid/content/Intent;
    const-string v2, "ACTION_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lba/vaktija/android/prefs/Prefs;->DHUHR_NORMALIZED:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f070061

    .line 290
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    const-string v4, "Settings"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lba/vaktija/android/prefs/Prefs;->DHUHR_NORMALIZED:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Normalized time enabled"

    :goto_3
    invoke-virtual {v3, v4, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v1    # "service":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "separateJumaSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onPreferenceChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 299
    .restart local v1    # "service":Landroid/content/Intent;
    const-string v2, "ACTION_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 302
    iget-object v3, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    const-string v4, "Settings"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Separate settings for juma enabled"

    :goto_4
    invoke-virtual {v3, v4, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v1    # "service":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 276
    .restart local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string v2, "Disabled status bar notification"

    goto/16 :goto_0

    .line 279
    .restart local v1    # "service":Landroid/content/Intent;
    :cond_5
    const-string v2, "ACTION_DISABLE_NOTIFS"

    goto/16 :goto_1

    .line 290
    .end local v0    # "enabled":Z
    :cond_6
    const v2, 0x7f070054

    .line 291
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 293
    :cond_7
    const-string v2, "Actual time enabled"

    goto :goto_3

    .line 302
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string v2, "Separate settings for juma disabled"

    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locationName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showLocationDialog()V

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notificationToneUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->showToneSelectionDialog(Z)V

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarmToneUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-direct {p0, v3}, Lba/vaktija/android/prefs/SettingsFragment;->showToneSelectionDialog(Z)V

    .line 456
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "export"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    new-instance v0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 460
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    new-instance v0, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    :cond_4
    return v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 237
    invoke-super {p0}, Landroid/support/v4/preference/PreferenceFragment;->onResume()V

    .line 239
    iget-boolean v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->scrolled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_FIRST_VISIBLE_ITEM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->scrolled:Z

    .line 241
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lba/vaktija/android/prefs/SettingsFragment$1;

    invoke-direct {v1, p0}, Lba/vaktija/android/prefs/SettingsFragment$1;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroid/preference/Preference;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "locationName"

    const-string v3, "Beč (Džemat Bosna)"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 256
    return-void
.end method

.method showLocationDialog()V
    .locals 4

    .prologue
    .line 469
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->mApp:Lba/vaktija/android/App;

    sget-object v2, Lba/vaktija/android/prefs/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Location"

    invoke-virtual {v1, v2, v3}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lba/vaktija/android/LocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lba/vaktija/android/prefs/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method
