.class public Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.super Landroid/app/Activity;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
    }
.end annotation


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEnforceWithoutCancel:Z

.field private mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

.field private mIsPasswordChangeEnforced:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldEnterprisePassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRequestedQuality:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEnforceWithoutCancel:Z

    .line 77
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 78
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 79
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 80
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 81
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 82
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 83
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 84
    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 85
    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    .line 88
    const/high16 v0, 0x60000

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    .line 65
    return-void
.end method

.method private handleAuthFail(I)V
    .locals 13
    .param p1, "error"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 432
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleAuthFail:error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v6, 0x0

    .line 435
    .local v6, "result":I
    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 436
    const-string/jumbo v9, "isChangeRequested"

    .line 434
    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 438
    .local v4, "pwdChangeEnforceStatus":I
    const/4 v5, 0x0

    .line 441
    .local v5, "pwdChangeTimeout":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 442
    .local v2, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    if-eqz v2, :cond_5

    .line 444
    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 445
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 443
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 446
    .local v0, "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 457
    .end local v0    # "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_0
    :goto_0
    if-lt v4, v12, :cond_1

    .line 458
    if-gtz v5, :cond_6

    if-ne v4, v12, :cond_6

    const/4 v3, 0x1

    .line 461
    .local v3, "enforceWithoutCancel":Z
    :goto_1
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pwdChangeEnforceStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pwdChangeTimeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enforceWithoutCancel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-nez v3, :cond_1

    .line 467
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->scheduleNextPwdChange(II)V

    .line 470
    .end local v3    # "enforceWithoutCancel":Z
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v7, :cond_4

    .line 472
    const/16 v7, -0xf

    if-eq p1, v7, :cond_2

    .line 473
    const/16 v7, -0x10

    if-ne p1, v7, :cond_3

    .line 474
    :cond_2
    const/16 v6, 0x6b

    .line 480
    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    .line 484
    :cond_4
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    .line 430
    return-void

    .line 451
    .restart local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_5
    :try_start_1
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v8, "ekm is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 454
    .end local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SecurityException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 459
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_6
    const/4 v7, 0x2

    if-lt v4, v7, :cond_7

    const/4 v3, 0x1

    .restart local v3    # "enforceWithoutCancel":Z
    goto/16 :goto_1

    .end local v3    # "enforceWithoutCancel":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "enforceWithoutCancel":Z
    goto/16 :goto_1
.end method

.method private handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 386
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 387
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 386
    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    .line 389
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 390
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 389
    const/4 v5, 0x0

    .line 390
    const/high16 v6, 0x60000

    .line 389
    invoke-virtual {v3, p2, v5, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 392
    const-string/jumbo v4, "db_lockscreen_is_smart_lock"

    .line 391
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    iget-boolean v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v3, :cond_0

    .line 396
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v2, "warningClearIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    .line 397
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 406
    new-instance v4, Landroid/os/UserHandle;

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 406
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v5, 0x10000000

    .line 404
    invoke-static {v3, v7, v0, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 408
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 410
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 411
    const-string/jumbo v4, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 412
    const-string/jumbo v5, "setPwdChangeRequested"

    .line 409
    invoke-static {v3, v4, v5, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    .line 422
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    .end local v2    # "warningClearIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    .line 378
    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p2

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    .line 492
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 494
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 493
    const/4 v6, 0x0

    .line 494
    const/high16 v7, 0x10000000

    .line 493
    invoke-static {v4, v6, v0, v7, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 496
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 499
    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 500
    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 501
    const-string/jumbo v6, "setPwdChangeRequested"

    .line 502
    const/4 v7, -0x1

    .line 498
    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v4, "ChooseLockEnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleNextPwdChange: for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 370
    const-string/jumbo v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 369
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-boolean v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    if-eqz v8, :cond_6

    .line 516
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 517
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 519
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 518
    const v9, 0x7f0b0887

    .line 517
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 522
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 523
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 525
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 524
    const v9, 0x7f0b0886

    .line 523
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 528
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 529
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 531
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 530
    const v9, 0x7f0b0889

    .line 529
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 534
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 535
    const v8, 0x7f0b0888

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 538
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 539
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 541
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 540
    const v9, 0x7f0b088a

    .line 539
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 544
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 545
    const v8, 0x7f0b088b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 548
    :cond_5
    const/4 v8, 0x0

    return-object v8

    .line 553
    :cond_6
    if-eqz p1, :cond_8

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v8, v9, :cond_7

    .line 555
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 556
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 555
    const v9, 0x7f0b11c4

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 558
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v8, v9, :cond_8

    .line 559
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 560
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 559
    const v9, 0x7f0b11c7

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 563
    :cond_8
    const/4 v2, 0x0

    .line 564
    .local v2, "letters":I
    const/4 v5, 0x0

    .line 565
    .local v5, "numbers":I
    const/4 v3, 0x0

    .line 566
    .local v3, "lowercase":I
    const/4 v6, 0x0

    .line 567
    .local v6, "symbols":I
    const/4 v7, 0x0

    .line 568
    .local v7, "uppercase":I
    const/4 v4, 0x0

    .line 569
    .local v4, "nonletter":I
    if-eqz p1, :cond_e

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_e

    .line 571
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 573
    .local v0, "c":C
    const/16 v8, 0x20

    if-lt v0, v8, :cond_9

    const/16 v8, 0x7f

    if-le v0, v8, :cond_a

    .line 574
    :cond_9
    const v8, 0x7f0b11cb

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 576
    :cond_a
    const/16 v8, 0x30

    if-lt v0, v8, :cond_b

    const/16 v8, 0x39

    if-gt v0, v8, :cond_b

    .line 577
    add-int/lit8 v5, v5, 0x1

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 570
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_b
    const/16 v8, 0x41

    if-lt v0, v8, :cond_c

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_c

    .line 580
    add-int/lit8 v2, v2, 0x1

    .line 581
    add-int/lit8 v7, v7, 0x1

    .line 579
    goto :goto_1

    .line 582
    :cond_c
    const/16 v8, 0x61

    if-lt v0, v8, :cond_d

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_d

    .line 583
    add-int/lit8 v2, v2, 0x1

    .line 584
    add-int/lit8 v3, v3, 0x1

    .line 582
    goto :goto_1

    .line 586
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 587
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 592
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_e
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    if-ge v2, v8, :cond_f

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 596
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 595
    const v10, 0x7f130007

    .line 594
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 593
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 596
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 593
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 597
    :cond_f
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    if-ge v5, v8, :cond_10

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 601
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 600
    const v10, 0x7f13000a

    .line 599
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 598
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 601
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 598
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 602
    :cond_10
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    if-ge v3, v8, :cond_11

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 606
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 605
    const v10, 0x7f130008

    .line 604
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 603
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 606
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 603
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 607
    :cond_11
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    if-ge v7, v8, :cond_12

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 611
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 610
    const v10, 0x7f130009

    .line 609
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 608
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 611
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 608
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 612
    :cond_12
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    if-ge v6, v8, :cond_13

    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 616
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 615
    const v10, 0x7f13000b

    .line 614
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 613
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 616
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 613
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 617
    :cond_13
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    if-ge v4, v8, :cond_14

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 621
    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 620
    const v10, 0x7f13000c

    .line 619
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 618
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 621
    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 618
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 631
    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    .line 632
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 636
    :cond_15
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 637
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 639
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 638
    const v9, 0x7f0b0887

    .line 637
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 633
    :cond_16
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v8

    if-nez v8, :cond_15

    .line 634
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    .line 635
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v8

    if-nez v8, :cond_15

    .line 670
    :cond_17
    const/4 v8, 0x0

    return-object v8

    .line 642
    :cond_18
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 643
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 645
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 644
    const v9, 0x7f0b0886

    .line 643
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 648
    :cond_19
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 649
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 651
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 650
    const v9, 0x7f0b0889

    .line 649
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 654
    :cond_1a
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 655
    const v8, 0x7f0b0888

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 658
    :cond_1b
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 659
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 661
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 660
    const v9, 0x7f0b088a

    .line 659
    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 664
    :cond_1c
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 665
    const v8, 0x7f0b088b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iput-object p0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 99
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    .line 101
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v6, "alarm"

    .line 101
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 105
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 108
    .local v4, "userId":I
    const-string/jumbo v5, "enterprise.password_old"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    .line 109
    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v5, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 109
    if-eqz v5, :cond_0

    .line 111
    iput-boolean v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    .line 115
    :cond_0
    const-string/jumbo v5, "lockscreen.password_type"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    .line 114
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 116
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v6

    .line 114
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    .line 118
    const-string/jumbo v5, "lockscreen.password_min"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 119
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v6

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 120
    const-string/jumbo v5, "lockscreen.password_max"

    .line 121
    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 120
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 123
    const-string/jumbo v5, "lockscreen.password_min_letters"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 122
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 124
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v6

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 126
    const-string/jumbo v5, "lockscreen.password_min_uppercase"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 125
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 127
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v6

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 129
    const-string/jumbo v5, "lockscreen.password_min_lowercase"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 128
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 130
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v6

    .line 128
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 132
    const-string/jumbo v5, "lockscreen.password_min_numeric"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 131
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 133
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v6

    .line 131
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 135
    const-string/jumbo v5, "lockscreen.password_min_symbols"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 134
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 136
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v6

    .line 134
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 138
    const-string/jumbo v5, "lockscreen.password_min_nonletter"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 137
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 139
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v6

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 142
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 144
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 145
    const-string/jumbo v6, "device_policy"

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 147
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const/high16 v6, 0x20000

    if-ne v5, v6, :cond_7

    .line 149
    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 158
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :goto_0
    const-string/jumbo v5, "lockscreen.password_old"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    .line 159
    const/4 v0, 0x4

    .line 161
    .local v0, "MIN_PWD_LENGTH":I
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-lt v5, v8, :cond_8

    .line 162
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-ge v5, v6, :cond_8

    .line 170
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 171
    const-string/jumbo v6, "enterprise_policy_new"

    .line 170
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 173
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 177
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v5, :cond_4

    .line 178
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v5, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 179
    iput-boolean v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    .line 196
    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v5, v8, :cond_5

    .line 197
    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 200
    :cond_5
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v5, v11, :cond_6

    .line 201
    iput v11, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 204
    :cond_6
    new-instance v5, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void

    .line 151
    .end local v0    # "MIN_PWD_LENGTH":I
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7
    const/4 v5, 0x6

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_0

    .line 164
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v5, v8, :cond_9

    .line 165
    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1

    .line 166
    :cond_9
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v5, v6, :cond_2

    .line 167
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1
.end method
