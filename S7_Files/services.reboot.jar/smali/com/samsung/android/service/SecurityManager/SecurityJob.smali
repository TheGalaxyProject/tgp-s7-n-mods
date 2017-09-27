.class public Lcom/samsung/android/service/SecurityManager/SecurityJob;
.super Ljava/lang/Object;
.source "SecurityJob.java"


# static fields
.field public static final CMD_DISABLE:Ljava/lang/String; = "DISABLE"

.field public static final CMD_ENABLE:Ljava/lang/String; = "ENABLE"

.field public static final CMD_START_SERVICE:Ljava/lang/String; = "START_SERVICE"

.field private static final ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final MDPP_DISABLED:I = 0x8

.field private static final MDPP_EMPTY:I = 0x10

.field private static final MDPP_ENABLED:I = 0x1

.field private static final MDPP_ENFORCING:I = 0x2

.field private static final MDPP_READY:I = 0x4

.field private static final PROPERTY_MDPP:Ljava/lang/String; = "security.mdpp"

.field private static final PROPERTY_MDPP_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDPP_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDPP_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDPP_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDPP_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDPP_RELEASE:Ljava/lang/String; = "ro.security.mdpp.release"

.field public static final PROPERTY_MDPP_RESULT:Ljava/lang/String; = "security.mdpp.result"

.field private static final PROPERTY_MDPP_UX:Ljava/lang/String; = "ro.security.mdpp.ux"

.field private static final PROPERTY_MDPP_VER:Ljava/lang/String; = "ro.security.mdpp.ver"

.field private static final SEC_MANAGER_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field private static final SEC_MANAGER_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field private static final SEC_MANAGER_ERR_CCMODE_ALREADY_READY:I = -0xf

.field private static final SEC_MANAGER_ERR_CCMODE_DISABLED:I = -0xb

.field private static final SEC_MANAGER_ERR_CCMODE_ELSE:I = -0xd

.field private static final SEC_MANAGER_ERR_CCMODE_EMPTY:I = -0xc

.field private static final SEC_MANAGER_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field private static final SEC_MANAGER_ERR_DIRECTION_LOCK_ON:I = 0x1

.field private static final SEC_MANAGER_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field private static final SEC_MANAGER_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field private static final SEC_MANAGER_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field private static final SEC_MANAGER_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field private static final SEC_MANAGER_ERR_ICD_RESULT_INVALID:I = -0x17

.field private static final SEC_MANAGER_ERR_INTEGRITY_CHECK_FAIL:I = -0x15

.field private static final SEC_MANAGER_ERR_INVALID_INPUT:I = -0x1

.field private static final SEC_MANAGER_ERR_LOCK_FINGER_PRINT_SET:I = -0x27

.field public static final SEC_MANAGER_ERR_NULL_POINTER:I = -0x2

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_DEFAULT:I = 0x100

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_EXTERNAL_FAST:I = 0x40

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_FAST:I = 0x200

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_INTERNAL:I = 0x80

.field private static final SEC_MANAGER_ERR_ODE_GETTING_STATUS_FAIL:I = 0x400

.field private static final SEC_MANAGER_ERR_ODE_NOT_SET:I = 0x800

.field private static final SEC_MANAGER_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field private static final SEC_MANAGER_ERR_PASSWORD_HISTORY_LENGTH_SET:I = 0x10

.field private static final SEC_MANAGER_ERR_RECOVERY_PASSWORD_POLICY_SET:I = 0x8

.field private static final SEC_MANAGER_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field private static final SEC_MANAGER_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field private static final SEC_MANAGER_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field private static final SEC_MANAGER_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field public static final SEC_MANAGER_OK:I


# instance fields
.field private mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLPU:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-direct {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    .line 99
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 100
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 96
    return-void
.end method

.method private checkCCModeOnDevice()I
    .locals 3

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getCCModeFlag()I

    move-result v0

    .line 484
    .local v0, "CCModeFlag":I
    const-string/jumbo v2, "check the current status #1 ..."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 485
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 498
    :goto_0
    return v1

    .line 487
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 488
    const/4 v1, 0x2

    goto :goto_0

    .line 489
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 490
    const/4 v1, 0x4

    goto :goto_0

    .line 491
    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 492
    const/16 v1, 0x8

    goto :goto_0

    .line 495
    :cond_3
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private checkDevicePolicy()I
    .locals 10

    .prologue
    .line 502
    const/4 v7, 0x0

    .line 528
    .local v7, "res":I
    const/4 v2, 0x0

    .line 529
    .local v2, "isLockUniversal":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 530
    .local v2, "isLockUniversal":Z
    if-eqz v2, :cond_0

    .line 531
    iget-object v8, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 532
    const-string/jumbo v8, "DIRECTION LOCK ON"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    .line 533
    const/4 v7, 0x1

    .line 541
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getMaximumFailedPasswordsForWipe()I

    move-result v5

    .line 543
    .local v5, "maximumFailedPasswordsForWipe":I
    if-lez v5, :cond_1

    .line 544
    const/16 v8, 0xa

    if-le v5, v8, :cond_3

    .line 545
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. maximumFailedPasswordsForWipe = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 546
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 545
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 547
    or-int/lit8 v7, v7, 0x2

    .line 553
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isPasswordEnabled()I

    move-result v8

    if-eqz v8, :cond_4

    .line 554
    const-string/jumbo v8, "Failed. the screen is not locked by password"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 555
    or-int/lit8 v7, v7, 0x4

    .line 561
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getPasswordRecoverable()I

    move-result v3

    .line 562
    .local v3, "isPasswordRecoverable":I
    const/4 v8, 0x1

    if-eq v3, v8, :cond_5

    .line 563
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. Recovery password policy has been set. isPasswordRecoverable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 564
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 563
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 565
    or-int/lit8 v7, v7, 0x8

    .line 571
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getPasswordHistoryLength()I

    move-result v6

    .line 572
    .local v6, "passwordHistoryLength":I
    if-eqz v6, :cond_6

    .line 573
    const-string/jumbo v8, "Failed. PasswordHistoryLength has been set."

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 574
    or-int/lit8 v7, v7, 0x10

    .line 580
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isRevocationCheckEnabled()I

    move-result v4

    .line 581
    .local v4, "isRevocationCheckEnabled":I
    if-eqz v4, :cond_7

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. RevocationCheckPolicy has not been set yet. isRevocationCheckEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 583
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 582
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 584
    or-int/lit8 v7, v7, 0x20

    .line 590
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getSamsungEncryptionStatusForCC()I

    move-result v0

    .line 591
    .local v0, "isEncrypted":I
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isExternalSDRemovable()Z

    move-result v1

    .line 592
    .local v1, "isExternalSDRemovable":Z
    packed-switch v0, :pswitch_data_0

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 628
    or-int/lit16 v7, v7, 0x800

    .line 632
    :goto_6
    return v7

    .line 535
    .end local v0    # "isEncrypted":I
    .end local v1    # "isExternalSDRemovable":Z
    .end local v3    # "isPasswordRecoverable":I
    .end local v4    # "isRevocationCheckEnabled":I
    .end local v5    # "maximumFailedPasswordsForWipe":I
    .end local v6    # "passwordHistoryLength":I
    :cond_2
    const-string/jumbo v8, "DIRECTION LOCK OFF"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 550
    .restart local v5    # "maximumFailedPasswordsForWipe":I
    :cond_3
    const-string/jumbo v8, "MaxPassword check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :cond_4
    const-string/jumbo v8, "ScreenLock check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 568
    .restart local v3    # "isPasswordRecoverable":I
    :cond_5
    const-string/jumbo v8, "RecoveryPassword check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_3

    .line 577
    .restart local v6    # "passwordHistoryLength":I
    :cond_6
    const-string/jumbo v8, "PasswordHistoryLength check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_4

    .line 587
    .restart local v4    # "isRevocationCheckEnabled":I
    :cond_7
    const-string/jumbo v8, "RevocationCheckPolicy check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_5

    .line 594
    .restart local v0    # "isEncrypted":I
    .restart local v1    # "isExternalSDRemovable":Z
    :pswitch_0
    const-string/jumbo v8, "ENCRYPTED BOTH"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isPasswordEnabled()I

    move-result v8

    if-eqz v8, :cond_8

    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 597
    or-int/lit8 v7, v7, 0x40

    goto :goto_6

    .line 599
    :cond_8
    const-string/jumbo v8, "ODE check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_6

    .line 602
    :pswitch_1
    const-string/jumbo v8, "ENCRYPTED INTERNAL"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 603
    if-eqz v1, :cond_a

    .line 604
    iget-object v8, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 605
    const-string/jumbo v8, "SDcard Policy check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_6

    .line 607
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 608
    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_6

    .line 611
    :cond_a
    const-string/jumbo v8, "ODE check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 615
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 616
    or-int/lit16 v7, v7, 0x100

    .line 617
    goto/16 :goto_6

    .line 619
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 620
    or-int/lit16 v7, v7, 0x200

    .line 621
    goto/16 :goto_6

    .line 623
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 624
    or-int/lit16 v7, v7, 0x400

    .line 625
    goto/16 :goto_6

    .line 592
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkICD()I
    .locals 2

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getTamperFlag()I

    move-result v0

    .line 688
    if-gez v0, :cond_0

    .line 689
    const-string/jumbo v1, "Failed to get icd tamper"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 690
    const/16 v1, -0x16

    return v1

    .line 691
    :cond_0
    if-lez v0, :cond_1

    .line 692
    const-string/jumbo v1, "Failed. icd tamper is set"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 693
    const/16 v1, -0x17

    return v1

    .line 696
    :cond_1
    return v0
.end method

.method private enforceSB(Z)I
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v4, -0x18

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "res":I
    const/4 v1, -0x1

    .line 703
    .local v1, "secureBootFlag":I
    if-eqz p1, :cond_1

    .line 704
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setSBFlagOn()I

    move-result v0

    .line 705
    if-eqz v0, :cond_0

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setSBFlagOn() res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 707
    return v4

    .line 709
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getSBFlag()I

    move-result v1

    .line 710
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 712
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 713
    return v4

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setSBFlagOff()I

    move-result v0

    .line 717
    if-eqz v0, :cond_2

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setSBFlagOff() res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 719
    return v4

    .line 721
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getSBFlag()I

    move-result v1

    .line 722
    if-eqz v1, :cond_3

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 725
    return v4

    .line 729
    :cond_3
    return v0
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    .line 847
    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 848
    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordHistoryLength()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    .line 877
    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 878
    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordRecoverable()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 862
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x0

    return v0

    .line 866
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 868
    :cond_1
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 869
    const/4 v0, -0x2

    return v0
.end method

.method private getSamsungEncryptionStatusForCC()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 853
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    .line 856
    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 857
    const/4 v0, -0x2

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 14
    .param p1, "res"    # I

    .prologue
    .line 141
    const-string/jumbo v10, ""

    .line 143
    .local v10, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 144
    .local v6, "en_pw_retry":Z
    const/4 v7, 0x0

    .line 145
    .local v7, "en_pw_screenlock":Z
    const/4 v8, 0x0

    .line 146
    .local v8, "en_revocation":Z
    const/4 v5, 0x0

    .line 147
    .local v5, "en_enc_sd":Z
    const/4 v4, 0x0

    .line 149
    .local v4, "en_enc_device":Z
    const/4 v2, 0x0

    .line 150
    .local v2, "dis_pw_recovery":Z
    const/4 v1, 0x0

    .line 151
    .local v1, "dis_pw_history":Z
    const/4 v0, 0x0

    .line 153
    .local v0, "dis_direction_lock":Z
    and-int/lit8 v11, p1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :cond_0
    and-int/lit8 v11, p1, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 157
    const/4 v6, 0x1

    .line 159
    :cond_1
    and-int/lit8 v11, p1, 0x4

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 160
    const/4 v7, 0x1

    .line 162
    :cond_2
    and-int/lit8 v11, p1, 0x8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    .line 163
    const/4 v2, 0x1

    .line 165
    :cond_3
    and-int/lit8 v11, p1, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_4

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_4
    and-int/lit8 v11, p1, 0x20

    const/16 v12, 0x20

    if-ne v11, v12, :cond_5

    .line 169
    const/4 v8, 0x1

    .line 171
    :cond_5
    and-int/lit8 v11, p1, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_6

    .line 172
    const/4 v5, 0x1

    .line 174
    :cond_6
    and-int/lit16 v11, p1, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_7

    .line 175
    const/4 v5, 0x1

    .line 177
    :cond_7
    and-int/lit16 v11, p1, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_8

    .line 178
    const/4 v4, 0x1

    .line 180
    :cond_8
    and-int/lit16 v11, p1, 0x200

    const/16 v12, 0x200

    if-ne v11, v12, :cond_9

    .line 181
    const/4 v4, 0x1

    .line 183
    :cond_9
    and-int/lit16 v11, p1, 0x400

    const/16 v12, 0x400

    if-ne v11, v12, :cond_a

    .line 184
    const/4 v5, 0x1

    .line 185
    const/4 v4, 0x1

    .line 188
    :cond_a
    and-int/lit16 v11, p1, 0x800

    const/16 v12, 0x800

    if-ne v11, v12, :cond_b

    .line 189
    const/4 v5, 0x1

    .line 190
    const/4 v4, 0x1

    .line 193
    :cond_b
    iget-object v11, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 194
    const/4 v5, 0x1

    .line 196
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 197
    const-string/jumbo v9, ""

    .line 198
    .local v9, "en_text":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 200
    .local v3, "dis_text":Ljava/lang/String;
    if-nez v6, :cond_d

    if-nez v7, :cond_d

    if-nez v8, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_16

    .line 201
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a30

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    if-eqz v6, :cond_f

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a32

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 205
    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v4, :cond_e

    if-eqz v5, :cond_f

    .line 206
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 209
    :cond_f
    if-eqz v7, :cond_11

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a33

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 211
    if-nez v8, :cond_10

    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    .line 212
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    :cond_11
    if-eqz v8, :cond_13

    .line 216
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a36

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 217
    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    .line 218
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    :cond_13
    if-eqz v4, :cond_14

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a38

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    if-eqz v5, :cond_14

    .line 224
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 227
    :cond_14
    if-eqz v5, :cond_15

    .line 228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a37

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 230
    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 233
    :cond_16
    if-nez v2, :cond_17

    if-nez v1, :cond_17

    if-eqz v0, :cond_1d

    .line 234
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a31

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    if-eqz v2, :cond_19

    .line 237
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a34

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    if-nez v1, :cond_18

    if-eqz v0, :cond_19

    .line 239
    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    :cond_19
    if-eqz v1, :cond_1a

    .line 243
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a35

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    if-eqz v0, :cond_1a

    .line 245
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    :cond_1a
    if-eqz v0, :cond_1b

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a39

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_1b
    const-string/jumbo v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 254
    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 258
    :cond_1d
    return-object v10
.end method

.method private isExternalSDRemovable()Z
    .locals 1

    .prologue
    .line 908
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const-string/jumbo v0, "SDCARD SLOT Support"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x1

    return v0

    .line 912
    :cond_0
    const-string/jumbo v0, "SDCARD SLOT None"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordEnabled()I
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 885
    const/4 v0, 0x0

    return v0

    .line 887
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 889
    :cond_1
    const-string/jumbo v0, "LPU is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 890
    const/4 v0, -0x2

    return v0
.end method

.method private isRevocationCheckEnabled()I
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const/4 v0, 0x0

    return v0

    .line 900
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_1
    const-string/jumbo v0, "certPolicy is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 903
    const/4 v0, -0x2

    return v0
.end method

.method private logForAudit(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 268
    const-string/jumbo v4, "SecurityManagerService"

    .line 264
    const/4 v0, 0x1

    .line 265
    const/4 v1, 0x5

    .line 266
    const/4 v2, 0x0

    move-object v5, p1

    .line 263
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private performCCModePreProcess()I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 636
    const/4 v6, 0x0

    .line 639
    .local v6, "res":I
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkICD()I

    move-result v6

    .line 640
    if-eqz v6, :cond_0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. checkICD = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 646
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 647
    const-string/jumbo v4, "SecurityManagerService"

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Integrity verification failed. checkICD = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    .line 642
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 649
    const/16 v0, -0x15

    return v0

    .line 653
    :cond_0
    invoke-static {}, Lcom/samsung/android/service/SecurityManager/FipsStatus;->getFipsStatus()I

    move-result v6

    .line 654
    if-eqz v6, :cond_1

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. FipsStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 660
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 661
    const-string/jumbo v4, "SecurityManagerService"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Getting fips status failed. res = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    .line 656
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 663
    const/16 v0, -0x23

    return v0

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->FIPS_Openssl_SelfTest()I

    move-result v6

    .line 668
    if-eqz v6, :cond_2

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. Boringssl self test = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 674
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 675
    const-string/jumbo v4, "SecurityManagerService"

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Boringssl self-test failed. res = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    .line 670
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 677
    const/16 v0, -0x14

    return v0

    .line 680
    :cond_2
    const-string/jumbo v0, "Pre Process OK."

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 681
    return v6
.end method

.method private setCCMode(I)I
    .locals 9
    .param p1, "status"    # I

    .prologue
    const/4 v8, -0x3

    .line 773
    const/4 v4, 0x0

    .line 774
    .local v4, "res":I
    const/4 v5, 0x0

    .line 775
    .local v5, "sb":Z
    const/4 v0, 0x0

    .line 776
    .local v0, "ccmode":I
    const-string/jumbo v1, "None"

    .line 778
    .local v1, "ccmodeProperty":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 810
    const/4 v5, 0x0

    .line 811
    const/4 v0, 0x0

    .line 812
    const-string/jumbo v1, "None"

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode default... status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 816
    :goto_0
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setFlags(ZI)I

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    return v4

    .line 780
    :sswitch_0
    const/4 v5, 0x1

    .line 781
    const/4 v0, 0x1

    .line 782
    const-string/jumbo v1, "Enabled"

    goto :goto_0

    .line 786
    :sswitch_1
    const/4 v5, 0x1

    .line 787
    const/4 v0, 0x2

    .line 788
    const-string/jumbo v1, "Enforcing"

    goto :goto_0

    .line 792
    :sswitch_2
    const/4 v5, 0x0

    .line 793
    const/4 v0, 0x4

    .line 794
    const-string/jumbo v1, "Ready"

    goto :goto_0

    .line 798
    :sswitch_3
    const/4 v5, 0x1

    .line 799
    const/16 v0, 0x8

    .line 800
    const-string/jumbo v1, "Disabled"

    goto :goto_0

    .line 804
    :sswitch_4
    const/4 v5, 0x0

    .line 805
    const/16 v0, 0x10

    .line 806
    const-string/jumbo v1, "None"

    goto :goto_0

    .line 819
    :cond_0
    :try_start_0
    const-string/jumbo v6, "security.mdpp"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 820
    const-string/jumbo v6, "security.mdpp"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CC Mode status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->logForAudit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "security.mdpp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "security.mdpp"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 832
    return v4

    .line 825
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemProperties Exception Occurs"

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 827
    return v8

    .line 822
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 823
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "SystemProperties RuntimeException Occurs"

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 824
    return v8

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private setCCModeFlag(I)I
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/16 v5, -0x1b

    .line 733
    const/4 v2, 0x0

    .line 734
    .local v2, "res":I
    move v0, p1

    .line 736
    .local v0, "_status":I
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v3, p1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setCCModeFlag(I)I

    move-result v2

    .line 737
    if-eqz v2, :cond_0

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCModeFlag() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 739
    return v5

    .line 741
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getCCModeFlag()I

    move-result v1

    .line 742
    .local v1, "ccFlag":I
    if-eq v1, p1, :cond_1

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 744
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 745
    return v5

    .line 748
    :cond_1
    return v2
.end method

.method private setFlags(ZI)I
    .locals 3
    .param p1, "SBenabled"    # Z
    .param p2, "CCModeStatus"    # I

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 755
    .local v0, "res":I
    invoke-direct {p0, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->enforceSB(Z)I

    move-result v0

    .line 756
    if-eqz v0, :cond_0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed. enforceSB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 758
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 759
    return v0

    .line 762
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCModeFlag(I)I

    move-result v0

    .line 763
    if-eqz v0, :cond_1

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed. setCCModeFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    const-string/jumbo v2, ", result = "

    .line 764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 766
    return v0

    .line 769
    :cond_1
    return v0
.end method

.method private setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const v9, 0x1080027

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 116
    const-string/jumbo v5, "SecurityManager : Notice for applying security policy"

    invoke-static {v5}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 118
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "noti":Landroid/app/Notification$Builder;
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 120
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 121
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 122
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 123
    new-array v2, v6, [J

    .local v2, "pattern":[J
    fill-array-data v2, :array_0

    .line 124
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 125
    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 126
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 127
    const-string/jumbo v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    .line 129
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.service.SecurityManager.UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x8000000

    .line 128
    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 130
    .local v3, "refreshIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Action;

    const-string/jumbo v6, "Refresh"

    invoke-direct {v5, v9, v6, v3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 131
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 132
    .local v4, "style":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {v4, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 133
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 136
    .end local v3    # "refreshIntent":Landroid/app/PendingIntent;
    .end local v4    # "style":Landroid/app/Notification$BigTextStyle;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 137
    .local v0, "mNotiMgr":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    return-void

    .line 123
    nop

    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/16 v4, 0x10

    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, "res":I
    const-string/jumbo v2, "security.mdpp.result"

    const-string/jumbo v3, "None"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v2, "Enabled"

    const-string/jumbo v3, "ro.security.mdpp.ux"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const-string/jumbo v2, "This model does not support CC mode."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 353
    const/16 v1, -0x10

    .line 354
    const-string/jumbo v2, "security.mdpp.result"

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return v1

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    .line 361
    .local v0, "ccModeOnDevice":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 363
    if-eqz p1, :cond_d

    .line 364
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 365
    const-string/jumbo v2, "Failed. CCMode is already enabled."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 366
    const/16 v1, -0xe

    .line 367
    const-string/jumbo v2, "security.mdpp.result"

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_1
    :goto_0
    return v1

    .line 370
    :cond_2
    if-eq v0, v7, :cond_3

    .line 371
    if-ne v0, v6, :cond_7

    .line 372
    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 373
    if-eqz v1, :cond_4

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 376
    return v1

    .line 378
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v1

    .line 379
    const-string/jumbo v2, "security.mdpp.result"

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz v1, :cond_5

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a2e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->performCCModePreProcess()I

    move-result v1

    .line 388
    const-string/jumbo v2, "security.mdpp.result"

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz v1, :cond_6

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. CCMode Pre-Process. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a3a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 393
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 396
    if-eqz v1, :cond_1

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 401
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a2d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 401
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_7
    if-ne v0, v4, :cond_9

    .line 407
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 408
    if-eqz v1, :cond_8

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 411
    :cond_8
    const/16 v1, -0xc

    .line 412
    const-string/jumbo v2, "security.mdpp.result"

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_9
    if-ne v0, v5, :cond_b

    .line 415
    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 416
    if-eqz v1, :cond_a

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 419
    :cond_a
    const/16 v1, -0xb

    .line 420
    const-string/jumbo v2, "security.mdpp.result"

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_b
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 424
    if-eqz v1, :cond_c

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 427
    :cond_c
    const/16 v1, -0xd

    .line 428
    const-string/jumbo v2, "security.mdpp.result"

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_d
    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    .line 434
    if-ne v0, v6, :cond_10

    .line 435
    :cond_e
    invoke-direct {p0, v7}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 436
    if-eqz v1, :cond_f

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 439
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a2c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 439
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v2, "security.mdpp.result"

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_10
    if-ne v0, v7, :cond_11

    .line 444
    const-string/jumbo v2, "Failed. CCMode is already ready."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 445
    const/16 v1, -0xf

    .line 446
    const-string/jumbo v2, "security.mdpp.result"

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_11
    if-ne v0, v5, :cond_13

    .line 449
    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a3a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 450
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz v1, :cond_12

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 455
    :cond_12
    const/16 v1, -0xb

    .line 456
    const-string/jumbo v2, "security.mdpp.result"

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_13
    if-ne v0, v4, :cond_15

    .line 459
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 460
    if-eqz v1, :cond_14

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 463
    :cond_14
    const/16 v1, -0xc

    .line 464
    const-string/jumbo v2, "security.mdpp.result"

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_15
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 468
    if-eqz v1, :cond_16

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 471
    :cond_16
    const/16 v1, -0xd

    .line 472
    const-string/jumbo v2, "security.mdpp.result"

    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initCCMode()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v4, 0x10

    const/16 v5, 0x8

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "res":I
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    .line 284
    .local v0, "ccModeOnDevice":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    .line 286
    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_4

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->performCCModePreProcess()I

    move-result v1

    .line 288
    if-eqz v1, :cond_2

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. CCMode Pre-Process. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a3a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 291
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 294
    if-eqz v1, :cond_1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 342
    :cond_1
    :goto_0
    return v1

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v1

    .line 300
    if-eqz v1, :cond_3

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a2e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v7}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 306
    if-eqz v1, :cond_1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 311
    if-eqz v1, :cond_1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 318
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 319
    if-eqz v1, :cond_1

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :cond_5
    if-ne v0, v5, :cond_7

    .line 323
    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 324
    if-eqz v1, :cond_6

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 327
    :cond_6
    const/16 v1, -0xb

    goto/16 :goto_0

    .line 328
    :cond_7
    if-ne v0, v4, :cond_9

    .line 329
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 330
    if-eqz v1, :cond_8

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 333
    :cond_8
    const/16 v1, -0xc

    goto/16 :goto_0

    .line 335
    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    .line 336
    if-eqz v1, :cond_a

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    .line 339
    :cond_a
    const/16 v1, -0xd

    goto/16 :goto_0
.end method

.method public isCCModeSupport()Z
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v1, "ro.security.mdpp.ux"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "propertyMdfppUx":Ljava/lang/String;
    const-string/jumbo v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x1

    return v1

    .line 278
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateNotification()V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v0

    .line 106
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 107
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a2b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyVPN()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->verifyVPN()I

    move-result v0

    return v0
.end method

.method public verifyWPA()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->verifyWPA()I

    move-result v0

    return v0
.end method
