.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
.super Ljava/lang/Object;
.source "DirectionLockSettingsHelper.java"


# instance fields
.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    const v1, 0x7f0a026c

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    .line 137
    :goto_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 139
    const-string/jumbo v0, "accessibility"

    .line 138
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 142
    const-string/jumbo v1, "fingerprint"

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 128
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    const v1, 0x7f0a026b

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_0
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 631
    .local v1, "orientation":I
    const-string/jumbo v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 632
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    .line 631
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 635
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 636
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 629
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 640
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 641
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 642
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private confirmFingerprintPassword()V
    .locals 4

    .prologue
    .line 430
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 432
    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 435
    const/16 v3, 0x65

    .line 434
    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmIrisPassword()V
    .locals 4

    .prologue
    .line 411
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 413
    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    .line 412
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 416
    const/16 v3, 0x65

    .line 415
    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBiometricsSummary(IZZ)Ljava/lang/String;
    .locals 8
    .param p1, "ResId"    # I
    .param p2, "isFinger"    # Z
    .param p3, "isIrises"    # Z

    .prologue
    .line 204
    const-string/jumbo v3, ", "

    .line 205
    .local v3, "comma":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ar"

    .line 208
    .local v1, "ISO639_ARABIC":Ljava/lang/String;
    const-string/jumbo v2, "ja"

    .line 209
    .local v2, "JAPANESE":Ljava/lang/String;
    const-string/jumbo v0, "zh"

    .line 210
    .local v0, "CHINESE":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    const-string/jumbo v3, "\u060c "

    .line 220
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0675

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    if-eqz p3, :cond_2

    .line 227
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0754

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 214
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    const-string/jumbo v3, "\u3001"

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    const-string/jumbo v3, "\uff0c"

    goto :goto_0
.end method

.method public static getMinimumSupportedPassLength()I
    .locals 2

    .prologue
    .line 898
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "getMinimumSupportedPassLength"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string/jumbo v0, "4"

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFingerprint(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 884
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectionLockSupportIris()Z
    .locals 2

    .prologue
    .line 893
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    return v0
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 821
    const/4 v3, 0x0

    .line 822
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 823
    .local v2, "isDisabledByDPM":Z
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 824
    const-string/jumbo v7, "device_policy"

    .line 823
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 826
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 827
    const-string/jumbo v5, "DirectionLockSettingsHelper"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v8

    .line 831
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 834
    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    .line 835
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 837
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 838
    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 839
    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    .line 837
    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 840
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    .line 841
    if-nez v1, :cond_1

    .line 842
    const-string/jumbo v6, "DirectionLockSettingsHelper"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v3, 0x1

    .line 848
    :cond_1
    if-nez v3, :cond_3

    .end local v2    # "isDisabledByDPM":Z
    :goto_1
    return v2

    .line 831
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "isDisabledByDPM":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "isBiometricAuthenticationEnabled":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 848
    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    return v0
.end method

.method private setMountVariables()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 479
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    const-string/jumbo v4, "universal_lock_visible"

    .line 479
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 480
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 479
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    .line 481
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    const-string/jumbo v4, "universal_lock_vibration"

    .line 481
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 482
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 481
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    .line 483
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    const-string/jumbo v4, "universal_lock_beep"

    .line 483
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 484
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 483
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 486
    const-string/jumbo v4, "universal_lock_voice"

    .line 485
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 486
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 485
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    .line 478
    return-void

    :cond_0
    move v0, v2

    .line 479
    goto :goto_0

    :cond_1
    move v0, v2

    .line 481
    goto :goto_1

    :cond_2
    move v0, v2

    .line 483
    goto :goto_2

    :cond_3
    move v1, v2

    .line 485
    goto :goto_3
.end method

.method private startIrisRegister([B)V
    .locals 5
    .param p1, "mToken"    # [B

    .prologue
    .line 751
    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startIrisRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :try_start_0
    const-string/jumbo v3, "com.android.settings.iris.IrisLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 754
    .local v0, "chooseLockIris":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 755
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 754
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 756
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "register_iris_request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 758
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0    # "chooseLockIris":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startFingerprintLockSettings() exception occured"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 589
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 590
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 591
    .local v4, "width":I
    const/4 v3, 0x1

    .line 593
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 595
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 596
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 601
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    .line 602
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 606
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v5, 0x1

    .line 534
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 535
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 539
    invoke-virtual {p0, v2, p3, p4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 542
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 544
    const/4 v4, 0x0

    .line 547
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 550
    check-cast v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 559
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    .line 560
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 562
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, p3, p4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 566
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    .line 567
    return-object v3

    .line 552
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 568
    .restart local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 569
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v4, 0x0

    .line 574
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object v3

    .line 563
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    .line 567
    return-object v3

    .line 568
    :cond_3
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 569
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 565
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 566
    instance-of v6, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_4

    .line 567
    return-object v3

    .line 568
    :cond_4
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 569
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    const/4 v4, 0x0

    .line 565
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_5
    throw v5
.end method

.method public getChallengeForFingerPrint()J
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "FingerPrint Manager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForIris()J
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 399
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemIrisManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    .line 403
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentLockScreen()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    return v2

    .line 251
    :cond_0
    return v2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getLockTypeSummary()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b11a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .end local v2    # "summary":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 160
    .restart local v2    # "summary":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b11a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 163
    .local v2, "summary":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 163
    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v0, 0x1

    .line 165
    .local v0, "isFingerLockEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x10

    .line 165
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_3

    const/4 v1, 0x1

    .line 167
    .local v1, "isIrisesLockEnabled":Z
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 169
    :sswitch_0
    const v3, 0x7f0b0274

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "isFingerLockEnabled":Z
    .end local v1    # "isIrisesLockEnabled":Z
    .local v2, "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFingerLockEnabled":Z
    goto :goto_1

    .line 165
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isIrisesLockEnabled":Z
    goto :goto_2

    .line 174
    :sswitch_1
    const v3, 0x7f0b0839

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 178
    .local v2, "summary":Ljava/lang/String;
    :sswitch_2
    const v3, 0x7f0b1194

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 183
    .local v2, "summary":Ljava/lang/String;
    :sswitch_3
    const v3, 0x7f0b1196

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 189
    .local v2, "summary":Ljava/lang/String;
    :sswitch_4
    const v3, 0x7f0b1198

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 193
    .local v2, "summary":Ljava/lang/String;
    :sswitch_5
    const v3, 0x7f0b082c

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method public hasEnrolledFingerPrints()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerPrintSwitchOn()Z
    .locals 2

    .prologue
    .line 857
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isFingerPrintSwitchOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public isIrisSwitchOn()Z
    .locals 3

    .prologue
    .line 793
    const-string/jumbo v1, "DirectionLockSettingsHelper"

    const-string/jumbo v2, "isIrisSwitchOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v0, 0x0

    .line 803
    .local v0, "isIrisLockDisabled":Z
    if-eqz v0, :cond_0

    .line 804
    const/4 v1, 0x0

    return v1

    .line 805
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(ZZZ)Z
    .locals 12
    .param p1, "switchState"    # Z
    .param p2, "isFingerPrintSwitch"    # Z
    .param p3, "isIrisSwitch"    # Z

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getCurrentLockScreen()I

    move-result v10

    .line 276
    .local v10, "quality":I
    const/4 v8, 0x0

    .line 278
    .local v8, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 280
    .local v0, "activityLaunched":Z
    const-string/jumbo v1, "DirectionLockSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchState :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isFingerPrintSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string/jumbo v4, " isIrisSwitch: "

    .line 280
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p2, :cond_1

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v6

    .line 286
    const/16 v2, 0x69

    move-object v4, v3

    move-object v5, v3

    .line 285
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    .line 288
    .local v11, "returnVal":Z
    move v0, v11

    .line 298
    .end local v0    # "activityLaunched":Z
    .end local v11    # "returnVal":Z
    :goto_0
    return v0

    .line 277
    .restart local v0    # "activityLaunched":Z
    :cond_0
    const/4 v0, 0x0

    .line 296
    goto :goto_0

    .line 301
    :cond_1
    if-eqz p3, :cond_3

    .line 302
    if-eqz p1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v6

    .line 304
    const/16 v2, 0x6b

    move-object v4, v3

    move-object v5, v3

    .line 303
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    .line 306
    .restart local v11    # "returnVal":Z
    move v0, v11

    .line 316
    .end local v0    # "activityLaunched":Z
    .end local v11    # "returnVal":Z
    :goto_1
    return v0

    .line 277
    .restart local v0    # "activityLaunched":Z
    :cond_2
    const/4 v0, 0x0

    .line 314
    goto :goto_1

    .line 323
    :cond_3
    if-nez p1, :cond_5

    if-ne v10, v6, :cond_5

    .line 324
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 325
    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 326
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 327
    const/16 v2, 0x66

    .line 326
    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 328
    const/4 v0, 0x1

    .line 379
    .end local v0    # "activityLaunched":Z
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    return v0

    .line 335
    .restart local v0    # "activityLaunched":Z
    .local v8, "intent":Landroid/content/Intent;
    :cond_5
    if-nez p1, :cond_6

    if-eq v10, v6, :cond_6

    .line 336
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    const-string/jumbo v2, "universal_lock_switch_state"

    .line 336
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    const/4 v0, 0x0

    .line 335
    goto :goto_2

    .line 345
    :cond_6
    if-eqz p1, :cond_4

    .line 347
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 348
    const/16 v2, 0x65

    .line 347
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v11

    .line 350
    .restart local v11    # "returnVal":Z
    move v0, v11

    .line 352
    .local v0, "activityLaunched":Z
    if-nez v11, :cond_4

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 355
    const/4 v0, 0x1

    .line 356
    .local v0, "activityLaunched":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmFingerprintPassword()V

    goto :goto_2

    .line 357
    .local v0, "activityLaunched":Z
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "activityLaunched":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmIrisPassword()V

    goto :goto_2

    .line 365
    .local v0, "activityLaunched":Z
    :cond_8
    if-nez v11, :cond_4

    .line 366
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 367
    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 366
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 368
    .local v9, "intent1":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 369
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 370
    const/16 v2, 0x68

    .line 369
    invoke-virtual {v1, v9, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 374
    :goto_3
    const/4 v0, 0x1

    .local v0, "activityLaunched":Z
    goto :goto_2

    .line 372
    .local v0, "activityLaunched":Z
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public saveLockDirection(Ljava/lang/String;I)V
    .locals 1
    .param p1, "patternToBeSaved"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    return-void
.end method

.method public saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "patternToBeSaved"    # Ljava/lang/String;
    .param p2, "pinToBeSaved"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 447
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 448
    const-string/jumbo v2, "universal_lock_switch_state"

    const/4 v3, 0x1

    .line 447
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "mChosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-eqz p2, :cond_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 468
    invoke-virtual {v1, v4, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 470
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    .line 473
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockDirection(Ljava/util/List;Ljava/lang/String;I)V

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setMountVariables()V

    .line 446
    return-void
.end method

.method public setFingerPrintLockOff()V
    .locals 2

    .prologue
    .line 873
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setFingerPrintLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void
.end method

.method public setIrisLockOff()V
    .locals 2

    .prologue
    .line 812
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setIrisLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public shouldDirectionLockBeDisabled()Z
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFingerprintLockSettings([B)V
    .locals 2
    .param p1, "mToken"    # [B

    .prologue
    .line 677
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startFingerprintLockSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettingsImpl([B)V

    .line 676
    return-void
.end method

.method public startFingerprintLockSettingsImpl([B)V
    .locals 6
    .param p1, "mToken"    # [B

    .prologue
    .line 683
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettingsImpl()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerprintDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isFingerprintDisabled() = TURE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 689
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 690
    const-string/jumbo v5, "fingerprint"

    .line 689
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 691
    .local v2, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v2, :cond_1

    .line 692
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 693
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 700
    :cond_1
    :try_start_0
    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    .line 699
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 701
    .local v0, "chooseLockFingerprint":Ljava/lang/Class;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 703
    .local v3, "mIntent":Landroid/content/Intent;
    const-string/jumbo v4, "previousStage"

    const-string/jumbo v5, "lock_screen_pin_pattern_password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 705
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "chooseLockFingerprint":Ljava/lang/Class;
    .end local v3    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettings() exception occured"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public startUseAdditionalBiometricsSettings([B)V
    .locals 2
    .param p1, "mToken"    # [B

    .prologue
    .line 739
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startUseAdditionalBiometricsSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisRegister([B)V

    goto :goto_0
.end method

.method public startUseFingerprintIrisSettings([B[B)V
    .locals 5
    .param p1, "mToken"    # [B
    .param p2, "mtoken_2nd"    # [B

    .prologue
    .line 721
    :try_start_0
    const-string/jumbo v3, "com.android.settings.iris.UseAdditionalBiometrics"

    .line 720
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 722
    .local v2, "useBiometrics":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 723
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 722
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 725
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 726
    const-string/jumbo v3, "hw_auth_token_2nd"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 728
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v2    # "useBiometrics":Ljava/lang/Class;
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchToSwipe()V
    .locals 3

    .prologue
    .line 498
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "switchToSwipe()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    const-string/jumbo v1, "universal_lock_switch_state"

    const/4 v2, 0x0

    .line 500
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    return-void
.end method
