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
    .param p1, "this$0"    # Lba/vaktija/android/wizard/VakatTweaksFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lba/vaktija/android/wizard/VakatTweaksFragment$1;->this$0:Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 85
    sget-object v0, Lba/vaktija/android/App;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "separateJumaSettings"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-object v0, p0, Lba/vaktija/android/wizard/VakatTweaksFragment$1;->this$0:Lba/vaktija/android/wizard/VakatTweaksFragment;

    iget-object v1, v0, Lba/vaktija/android/wizard/VakatTweaksFragment;->mSeparateSettingsJumaExpl:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f07004e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 91
    return-void

    .line 87
    :cond_0
    const v0, 0x7f07004d

    goto :goto_0
.end method
