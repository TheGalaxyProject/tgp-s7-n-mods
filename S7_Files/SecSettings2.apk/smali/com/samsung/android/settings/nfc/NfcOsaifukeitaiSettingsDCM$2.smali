.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;
.super Ljava/lang/Object;
.source "NfcOsaifukeitaiSettingsDCM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 483
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 484
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_1

    .line 485
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;I)I

    .line 487
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get4(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    return-void

    .line 497
    :cond_1
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string/jumbo v3, "get UIMLock status T.O. timer end "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 504
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 505
    .local v1, "uimLock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;->-wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;II)V

    .line 507
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsDCM]"

    const-string/jumbo v3, "[E]uimDetectAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method
