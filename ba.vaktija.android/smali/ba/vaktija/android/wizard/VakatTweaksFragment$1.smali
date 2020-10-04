.class Lba/vaktija/android/wizard/VakatTweaksFragment$1;
.super Ljava/lang/Object;
.source "VakatTweaksFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/vaktija/android/wizard/VakatTweaksFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lba/vaktija/android/wizard/VakatTweaksFragment;


# direct methods
.method constructor <init>(Lba/vaktija/android/wizard/VakatTweaksFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment$1;->this$0:Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 86
    sget-object p1, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "separateJumaSettings"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    iget-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment$1;->this$0:Lba/vaktija/android/wizard/VakatTweaksFragment;

    iget-object p1, p1, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJumaExpl:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p2, 0x7f0f006a

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0069

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
