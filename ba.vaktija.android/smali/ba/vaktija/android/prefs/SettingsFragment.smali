.class public Lba/vaktija/android/prefs/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;,
        Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_FIRST_VISIBLE_ITEM:Ljava/lang/String; = "EXTRA_FIRST_VISIBLE_ITEM"

.field private static final EXTRA_ITEM_TOP:Ljava/lang/String; = "EXTRA_ITEM_TOP"

.field private static final REQUEST_ALARM_TONE:I = 0x2

.field private static final REQUEST_NOTIF_TONE:I = 0x1

.field private static final REQUEST_SYSTEM_SETTINGS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private alarmTonePreference:Landroidx/preference/Preference;

.field private alertDialog:Landroid/app/AlertDialog;

.field private dhuhrCounting:Landroidx/preference/ListPreference;

.field private location:Landroidx/preference/Preference;

.field private notificationTonePreference:Landroidx/preference/Preference;

.field private prefs:Landroid/content/SharedPreferences;

.field private systemSettingsPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lba/vaktija/android/prefs/SettingsFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lba/vaktija/android/prefs/SettingsFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->setDefaultTone(Z)V

    return-void
.end method

.method static synthetic access$200(Lba/vaktija/android/prefs/SettingsFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->launchToneChooser(Z)V

    return-void
.end method

.method static synthetic access$300(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showSettingsExportedDialog()V

    return-void
.end method

.method static synthetic access$400(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showFileExistsDialog()V

    return-void
.end method

.method static synthetic access$500(Lba/vaktija/android/prefs/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->showErrorProcessingSettingsDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lba/vaktija/android/prefs/SettingsFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showFileMissingDialog()V

    return-void
.end method

.method private colorPreferenceTitles()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 227
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroidx/preference/Preference;

    const v2, 0x7f0f004c

    .line 228
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "statusbarNotification"

    .line 231
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0f0081

    .line 233
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "ALL_PRAYERS_IN_NOTIF"

    .line 236
    invoke-virtual {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0f0023

    .line 241
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->notificationTonePreference:Landroidx/preference/Preference;

    const v2, 0x7f0f0054

    .line 246
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->alarmTonePreference:Landroidx/preference/Preference;

    const v2, 0x7f0f0022

    .line 250
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroidx/preference/ListPreference;

    const v2, 0x7f0f0033

    .line 254
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "separateJumaSettings"

    .line 257
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0f0073

    .line 259
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "showDate"

    .line 262
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0f002f

    .line 264
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "feedback"

    .line 267
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0f0041

    .line 269
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "about"

    .line 272
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0f001b

    .line 274
    invoke-virtual {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v2, v0}, Lba/vaktija/android/util/FormattingUtils;->colorText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method private launchToneChooser(Z)V
    .locals 5

    .line 441
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const-string v1, "alarmToneUri"

    goto :goto_0

    :cond_0
    const-string v1, "notificationToneUri"

    :goto_0
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 445
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    const-string v4, "android.intent.extra.ringtone.TYPE"

    .line 446
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    .line 448
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    .line 449
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 450
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    .line 452
    :goto_3
    invoke-virtual {p0, v1, v2}, Lba/vaktija/android/prefs/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static newInstance(II)Lba/vaktija/android/prefs/SettingsFragment;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_FIRST_VISIBLE_ITEM"

    .line 82
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "EXTRA_ITEM_TOP"

    .line 83
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    new-instance p0, Lba/vaktija/android/prefs/SettingsFragment;

    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;-><init>()V

    .line 86
    invoke-virtual {p0, v0}, Lba/vaktija/android/prefs/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setDefaultTone(Z)V
    .locals 3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultTone alarmTone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "useVaktijaAlarmTone"

    goto :goto_0

    :cond_0
    const-string v1, "useVaktijaNotifTone"

    :goto_0
    const/4 v2, 0x1

    .line 431
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1

    .line 435
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->alarmTonePreference:Landroidx/preference/Preference;

    sget-object v0, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 437
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->notificationTonePreference:Landroidx/preference/Preference;

    sget-object v0, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private showErrorProcessingSettingsDialog(Ljava/lang/String;)V
    .locals 3

    .line 514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Gre\u0161ka"

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do\u0161lo je do gre\u0161ke prilikom procesiranja postavki: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Uredu"

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showFileExistsDialog()V
    .locals 3

    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Prepisati postavke?"

    .line 501
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Postavke su ve\u0107 prije eksportovane u vaktija_settings.dat datoteku. Da li ih \u017eelite zamijeniti sa novim postavkama?"

    .line 502
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lba/vaktija/android/prefs/SettingsFragment$6;

    invoke-direct {v1, p0}, Lba/vaktija/android/prefs/SettingsFragment$6;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    const-string v2, "Zamijeni"

    .line 503
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ne"

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showFileMissingDialog()V
    .locals 3

    .line 522
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Datoteka ne postoji"

    .line 523
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Datoteka vaktija_settings.dat nije prona\u0111ena"

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Uredu"

    const/4 v2, 0x0

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showLocationDialog()V
    .locals 3

    .line 485
    sget-object v0, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    const-string v1, "SettingsFragment"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lba/vaktija/android/LocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    invoke-virtual {p0, v0}, Lba/vaktija/android/prefs/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSettingsExportedDialog()V
    .locals 3

    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Postavke eksportovane"

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Postavke eksportovane u vaktija_settings.dat fajl"

    .line 494
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Uredu"

    const/4 v2, 0x0

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showToneSelectionDialog(Z)V
    .locals 7

    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 400
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 401
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v5, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v5, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "Odaberi drugi..."

    aput-object v6, v4, v5

    const v5, 0x1090003

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    new-instance v2, Lba/vaktija/android/prefs/SettingsFragment$5;

    invoke-direct {v2, p0, p1}, Lba/vaktija/android/prefs/SettingsFragment$5;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 424
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSystemSettingsPreferenceSummary()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 213
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    .line 214
    sget-object v1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    iget-object v1, v1, Lba/vaktija/android/App;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const v0, 0x7f0f003d

    goto :goto_0

    :cond_0
    const v0, 0x7f0f003f

    .line 217
    :goto_0
    invoke-virtual {p0, v0}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    const v0, 0x7f0f0039

    goto :goto_1

    :cond_1
    const v0, 0x7f0f003a

    .line 218
    :goto_1
    invoke-virtual {p0, v0}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->systemSettingsPreference:Landroidx/preference/Preference;

    const-string v1, ", "

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 336
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SettingsFragment"

    const-string v1, "onActivityResult"

    .line 337
    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const v1, 0x7f0f002c

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 343
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST_NOTIF_TONE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_1

    .line 348
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 351
    :cond_1
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 355
    iget-object v6, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 356
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "notificationToneUri"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "useVaktijaNotifTone"

    .line 357
    invoke-interface {v4, v6, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 358
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    iget-object v4, p0, Lba/vaktija/android/prefs/SettingsFragment;->notificationTonePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 367
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    if-nez p3, :cond_4

    .line 370
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 372
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_ALARM_TONE: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 377
    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 378
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "alarmToneUri"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "useVaktijaAlarmTone"

    .line 379
    invoke-interface {p3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 380
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->alarmTonePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 384
    :cond_5
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 389
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_7

    .line 390
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->updateSystemSettingsPreferenceSummary()V

    :cond_7
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f120001

    .line 94
    invoke-virtual {p0, p1, p2}, Lba/vaktija/android/prefs/SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string p1, "locationName"

    .line 98
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroidx/preference/Preference;

    .line 99
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroidx/preference/Preference;

    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "Sarajevo"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "statusbarNotification"

    .line 102
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "ALL_PRAYERS_IN_NOTIF"

    .line 105
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "notificationToneUri"

    .line 108
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->notificationTonePreference:Landroidx/preference/Preference;

    .line 109
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    sget-object p2, Lba/vaktija/android/prefs/Defaults;->NOTIF_TONE_TITLE:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "useVaktijaNotifTone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SettingsFragment"

    if-nez v0, :cond_0

    .line 114
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 115
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedNotifTone: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 124
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->notificationTonePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "alarmToneUri"

    .line 126
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->alarmTonePreference:Landroidx/preference/Preference;

    .line 127
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    sget-object p2, Lba/vaktija/android/prefs/Defaults;->ALARM_TONE_TITLE:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "useVaktijaAlarmTone"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 134
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lba/vaktija/android/prefs/Defaults;->getDefaultTone(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedAlarmTone: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_1
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->alarmTonePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "dhuhrTime"

    .line 145
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/ListPreference;

    iput-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroidx/preference/ListPreference;

    .line 146
    invoke-virtual {p2, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p2, "separateJumaSettings"

    .line 148
    invoke-direct {p0, p2}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    .line 149
    invoke-virtual {p2, p0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "1"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroidx/preference/ListPreference;

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f007f

    .line 155
    invoke-virtual {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0f0070

    .line 156
    invoke-virtual {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    :goto_0
    invoke-virtual {p2, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    const-string p1, "about"

    .line 160
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    .line 161
    new-instance p2, Lba/vaktija/android/prefs/SettingsFragment$1;

    invoke-direct {p2, p0}, Lba/vaktija/android/prefs/SettingsFragment$1;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "feedback"

    .line 169
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lba/vaktija/android/prefs/SettingsFragment$2;

    invoke-direct {p2, p0}, Lba/vaktija/android/prefs/SettingsFragment$2;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "systemSettings"

    .line 188
    invoke-direct {p0, p1}, Lba/vaktija/android/prefs/SettingsFragment;->getPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->systemSettingsPreference:Landroidx/preference/Preference;

    .line 190
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 191
    iget-object p1, p0, Lba/vaktija/android/prefs/SettingsFragment;->systemSettingsPreference:Landroidx/preference/Preference;

    new-instance p2, Lba/vaktija/android/prefs/SettingsFragment$3;

    invoke-direct {p2, p0}, Lba/vaktija/android/prefs/SettingsFragment$3;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->updateSystemSettingsPreferenceSummary()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lba/vaktija/android/prefs/SettingsFragment;->systemSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 207
    :goto_1
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->colorPreferenceTitles()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL_PRAYERS_IN_NOTIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lba/vaktija/android/prefs/SettingsFragment$4;

    invoke-direct {v1, p0}, Lba/vaktija/android/prefs/SettingsFragment$4;-><init>(Lba/vaktija/android/prefs/SettingsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusbarNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SettingsFragment:onPreferenceChange"

    const-string v2, "Settings"

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 302
    sget-object v3, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    if-eqz v0, :cond_1

    const-string v4, "Enabled status bar notificatoin"

    goto :goto_0

    :cond_1
    const-string v4, "Disabled status bar notification"

    :goto_0
    invoke-virtual {v3, v2, v4}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v0, "ACTION_ENABLE_NOTIFS"

    goto :goto_1

    :cond_2
    const-string v0, "ACTION_DISABLE_NOTIFS"

    .line 305
    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 309
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dhuhrTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "ACTION_UPDATE"

    if-eqz v0, :cond_6

    .line 311
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 315
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->dhuhrCounting:Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lba/vaktija/android/prefs/Prefs;->DHUHR_NORMALIZED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0f007f

    .line 316
    invoke-virtual {p0, v4}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const v4, 0x7f0f0070

    .line 317
    invoke-virtual {p0, v4}, Lba/vaktija/android/prefs/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    :goto_2
    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    sget-object v0, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lba/vaktija/android/prefs/Prefs;->DHUHR_NORMALIZED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Normalized time enabled"

    goto :goto_3

    :cond_5
    const-string v4, "Actual time enabled"

    :goto_3
    invoke-virtual {v0, v2, v4}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "separateJumaSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 324
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lba/vaktija/android/service/VaktijaService;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 325
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lba/vaktija/android/service/VaktijaServiceHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 328
    sget-object p1, Lba/vaktija/android/App;->app:Lba/vaktija/android/App;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Separate settings for juma enabled"

    goto :goto_4

    :cond_7
    const-string p2, "Separate settings for juma disabled"

    :goto_4
    invoke-virtual {p1, v2, p2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 458
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locationName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lba/vaktija/android/prefs/SettingsFragment;->showLocationDialog()V

    .line 462
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notificationToneUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0, v1}, Lba/vaktija/android/prefs/SettingsFragment;->showToneSelectionDialog(Z)V

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "alarmToneUri"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 469
    invoke-direct {p0, v2}, Lba/vaktija/android/prefs/SettingsFragment;->showToneSelectionDialog(Z)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "export"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    new-instance v0, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;Z)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lba/vaktija/android/prefs/SettingsFragment$SettingsExporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "import"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 477
    new-instance p1, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;

    invoke-virtual {p0}, Lba/vaktija/android/prefs/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;-><init>(Lba/vaktija/android/prefs/SettingsFragment;Landroid/content/Context;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lba/vaktija/android/prefs/SettingsFragment$SettingsImporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return v2
.end method

.method public onResume()V
    .locals 4

    .line 280
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 281
    iget-object v0, p0, Lba/vaktija/android/prefs/SettingsFragment;->location:Landroidx/preference/Preference;

    iget-object v1, p0, Lba/vaktija/android/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "locationName"

    const-string v3, "Sarajevo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
