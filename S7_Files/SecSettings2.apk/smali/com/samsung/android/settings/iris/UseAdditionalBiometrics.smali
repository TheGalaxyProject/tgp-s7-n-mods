.class public Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.super Landroid/app/Activity;
.source "UseAdditionalBiometrics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private fingerprintLayout:Landroid/widget/LinearLayout;

.field private fingerprintSwitch:Landroid/widget/Switch;

.field private irisLayout:Landroid/widget/LinearLayout;

.field private irisSwitch:Landroid/widget/Switch;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mToken:[B

.field private mtoken_2nd:[B

.field private okBtn:Landroid/widget/Button;

.field screenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "UseAdditionalBiometrics"

    sput-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    .line 75
    new-instance v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;-><init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method private initBiometricsSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_2nd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    :goto_2
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private isFingerprintEnrolled()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIrisesEnrolled()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendBioMetricsLogging()V
    .locals 5

    .prologue
    .line 355
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 356
    .local v1, "passwordQuality":I
    const-string/jumbo v0, ""

    .line 357
    .local v0, "extraValue":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 360
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 359
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const-string/jumbo v0, "Fingerprint_"

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 364
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 363
    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 382
    const-string/jumbo v0, ""

    .line 384
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    return-void

    .line 371
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private setBiometricsDescription()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0b06d3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 310
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 312
    .local v0, "passwordQuality":I
    const-string/jumbo v1, ""

    .line 314
    .local v1, "textDesc":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 337
    :goto_0
    return-object v1

    .line 317
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 318
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 317
    const v4, 0x7f0b076f

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 323
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 324
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 323
    const v4, 0x7f0b0770

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 327
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 328
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 327
    const v4, 0x7f0b076e

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private startFingerprintLockSettings()V
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->isFingerprintEnrolled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 301
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 305
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    return-void
.end method

.method private startIrisRegister()V
    .locals 4

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->isIrisesEnrolled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 273
    return-void

    .line 276
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request_from_chooselock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 279
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    sget-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 232
    :pswitch_0
    if-eqz p2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 242
    :pswitch_1
    if-eqz p2, :cond_2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    :cond_1
    :goto_1
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 170
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 189
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 192
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x7f11039a -> :sswitch_0
        0x7f11039b -> :sswitch_1
        0x7f1106c7 -> :sswitch_2
        0x7f1106ca -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 100
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 104
    const v1, 0x7f0b076d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setTitle(I)V

    .line 106
    const v1, 0x7f0402ff

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setContentView(I)V

    .line 108
    const v1, 0x7f11039a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    .line 109
    const v1, 0x7f11039b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    .line 111
    const v1, 0x7f1106c6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f1106c7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f1106c9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    .line 116
    const v1, 0x7f1106ca

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    .line 117
    const v1, 0x7f1106cc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setBiometricsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->initBiometricsSettings()V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->sendBioMetricsLogging()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0
.end method
