.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$1;,
        Lcom/android/settings/encryption/CryptSDCardSettings$2;,
        Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;,
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

.field private mContentView:Landroid/view/View;

.field private mDem:Lcom/samsung/android/security/SemSdCardEncryption;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mDoEncrypt:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mIsDisabledByOtherDevice:Z

.field private mIsLaunched:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressStoarge:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mRightButton:Landroid/widget/Button;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mStorageValue:I

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

.field private serviceBusy:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/encryption/CryptSDCardSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/encryption/CryptSDCardSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/encryption/CryptSDCardSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->checkProgress()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->finishProgress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updateProgress()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 69
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 70
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 82
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 83
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 84
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    .line 86
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 87
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 88
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 90
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 91
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 93
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    .line 94
    iput v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    .line 778
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 49
    return-void
.end method

.method private checkProgress()V
    .locals 4

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v0

    .line 624
    .local v0, "error":I
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkProgress LastError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    packed-switch v0, :pswitch_data_0

    .line 621
    :goto_0
    :pswitch_0
    return-void

    .line 627
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 632
    :pswitch_2
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "FILE_OPEN_ERR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 639
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_0

    .line 640
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 643
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 650
    :pswitch_4
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Encrypt error dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 655
    :pswitch_5
    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decrypt error dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private disableButtonUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "disableButtonUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 538
    return-void
.end method

.method private doEncryptSDCard()V
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 749
    iput-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 750
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 753
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 754
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 755
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v5, :cond_2

    move v5, v4

    .line 754
    :goto_1
    invoke-virtual {v7, v2, v5, v8}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 759
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v2, v5}, Lcom/samsung/android/security/SemSdCardEncryption;->encryptStorage(Z)I

    move-result v1

    .line 760
    .local v1, "result":I
    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    .line 761
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_3

    .line 762
    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error SD card not mounted while encrypting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    .line 769
    :goto_2
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 770
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_5

    move v2, v6

    .line 769
    :goto_4
    invoke-virtual {v5, v3, v2, v8}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 774
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 748
    :cond_0
    return-void

    .end local v1    # "result":I
    :cond_1
    move v2, v4

    .line 754
    goto :goto_0

    :cond_2
    move v5, v3

    .line 757
    goto :goto_1

    .line 766
    .restart local v1    # "result":I
    :cond_3
    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error SD card not mounted while decrypting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;

    goto :goto_2

    :cond_4
    move v3, v4

    .line 769
    goto :goto_3

    .line 772
    :cond_5
    const/4 v2, 0x2

    goto :goto_4
.end method

.method private enableAllUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 530
    return-void
.end method

.method private finishProgress()V
    .locals 8

    .prologue
    const v7, 0x7f0b0623

    const v6, 0x7f0b0622

    const v5, 0x7f0b0617

    const v3, 0x7f0b0615

    const/4 v4, 0x0

    .line 588
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "finishProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 594
    :cond_0
    iget v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "totalStorage":Ljava/lang/String;
    iput v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    .line 597
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v1, :cond_2

    .line 598
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 600
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 615
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 616
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    const-string/jumbo v2, "100%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    .line 587
    return-void

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 606
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v1, :cond_3

    .line 607
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initProgress()V
    .locals 2

    .prologue
    .line 545
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "initProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    .line 551
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    .line 552
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 555
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0b0615

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v1, 0x7f0b061f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 544
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v1, 0x7f0b0617

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method private initVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "initialize Variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 522
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 523
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    .line 524
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 525
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 526
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 527
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 517
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 281
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 282
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 284
    .local v2, "isDisabledByAdmin":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const-string/jumbo v3, "CryptKeeperSDSettings"

    const-string/jumbo v4, "isAdminApplied : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    const/4 v2, 0x1

    .line 296
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 362
    .local v0, "pol":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "state":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 367
    const/4 v2, 0x1

    return v2

    .line 370
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private restorePrefs()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 301
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "restorePrefs"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 303
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_a

    .line 304
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string/jumbo v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 307
    const-string/jumbo v5, "OtherDevice"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "checkOtherDevice":Ljava/lang/String;
    const-string/jumbo v5, "exception"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "restorePrefs ==> Error Case UI"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    .line 313
    :cond_0
    const-string/jumbo v5, "adminStart"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "adminStart":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 315
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 329
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adminStart":Ljava/lang/String;
    .end local v2    # "checkOtherDevice":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 330
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    if-nez v5, :cond_2

    .line 331
    new-instance v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 334
    :cond_2
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 335
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "mAdminPolicies is ture"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iput v6, v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 341
    :cond_3
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v5, v5, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 342
    iget-boolean v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v5

    if-eq v5, v10, :cond_4

    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v5

    if-nez v5, :cond_c

    :cond_4
    move v5, v6

    :goto_2
    or-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 343
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v8

    if-eq v8, v10, :cond_5

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v7, v6

    :cond_6
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 351
    iget-object v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 352
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 353
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v6, "Disabled by Admin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-nez v5, :cond_8

    .line 356
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 299
    :cond_8
    return-void

    .line 319
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "CryptSDCardSettings started by user"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "CryptKeeperSDSettings"

    const-string/jumbo v8, "CryptSDCardSettings started by user"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_b
    move v5, v7

    .line 341
    goto :goto_1

    :cond_c
    move v5, v7

    .line 342
    goto :goto_2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x1

    .line 505
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 506
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 508
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 511
    return v4

    .line 515
    :cond_0
    const v2, 0x7f0b0635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 514
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private updatePrefUI()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v13, 0x7f0b0617

    const v12, 0x7f0b0615

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 374
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "updatePrefUI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 376
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "desc":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v7, :cond_0

    .line 379
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "parent activity is null, cannot display UI, removing fragment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 381
    .local v2, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 382
    return-void

    .line 386
    .end local v2    # "mgr":Landroid/app/FragmentManager;
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v7, :cond_6

    .line 387
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    .line 388
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b061c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b061e

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    :cond_1
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v7, :cond_2

    const-string/jumbo v7, "Enabled"

    iget-object v8, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 402
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    :cond_3
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v6

    .line 408
    .local v6, "status":I
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getLastError()I

    move-result v1

    .line 409
    .local v1, "error":I
    if-eqz v6, :cond_7

    .line 410
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "Service is busy: Disabling UI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableButtonUI()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 427
    :cond_4
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "state":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 430
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0625

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 432
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b061d

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 433
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 469
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->requestFocus()Z

    .line 373
    :goto_2
    return-void

    .line 394
    .end local v1    # "error":I
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "status":I
    :cond_6
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 395
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b061b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b061d

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 397
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 415
    .restart local v1    # "error":I
    .restart local v6    # "status":I
    :cond_7
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v8, 0x7f110205

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 416
    .local v3, "progress":I
    const/16 v7, 0x64

    if-ne v3, v7, :cond_4

    .line 417
    const-string/jumbo v7, "CryptKeeperSDSettings"

    const-string/jumbo v8, "already finish enc/dec"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    if-eqz v7, :cond_8

    .line 420
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    .line 421
    :cond_8
    return-void

    .line 435
    .end local v3    # "progress":I
    .restart local v5    # "state":Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 437
    const-string/jumbo v7, "HiddenMount"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz v7, :cond_c

    .line 455
    :cond_a
    :goto_3
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByOtherDevice:Z

    if-nez v7, :cond_b

    if-ne v1, v11, :cond_e

    .line 456
    :cond_b
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    .line 457
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0633

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b061e

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 461
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 438
    :cond_c
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0624

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 439
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    const v8, 0x7f0b05fd

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 440
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    const v8, 0x7f0b05fc

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 443
    const-string/jumbo v7, "CryptKeeperSDSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePrefUI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v7, :cond_d

    .line 445
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 449
    :goto_4
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 447
    :cond_d
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v7, v13}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_4

    .line 462
    :cond_e
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v7, :cond_5

    .line 463
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    const v8, 0x7f0b0626

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 464
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 471
    :cond_f
    iget-object v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_2
.end method

.method private updateProgress()V
    .locals 5

    .prologue
    .line 564
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "updateProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v2, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initProgress()V

    .line 571
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0b0615

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 573
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0b0620

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 579
    :goto_0
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "totalStorage":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "remainStorage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 582
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 583
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressStoarge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    return-void

    .line 575
    .end local v0    # "remainStorage":Ljava/lang/String;
    .end local v1    # "totalStorage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const v3, 0x7f0b0617

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 576
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    const v3, 0x7f0b0621

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "state":Ljava/lang/String;
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 481
    return-void

    .line 485
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 492
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->doEncryptSDCard()V

    .line 476
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 174
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 175
    const-string/jumbo v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 183
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 184
    const-string/jumbo v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 273
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 272
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    .line 268
    :cond_0
    :goto_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 258
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 200
    const v1, 0x7f040093

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 202
    const-string/jumbo v1, "security.mdpp"

    const-string/jumbo v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 206
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 210
    :cond_0
    new-instance v1, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    .line 211
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f110211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    .line 212
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f1101b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f1101b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    .line 214
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f110210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 215
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f110213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 217
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 194
    iput-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 189
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-virtual {v0}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->clearEmService()V

    .line 244
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 226
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "SD card is unmounted, mount SD card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1, v3}, Lcom/samsung/android/security/SemSdCardEncryption;->SetMountSDcardToHelper(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->mountVolume()Z

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    .line 236
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 240
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mBixbyManager:Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    invoke-virtual {v1}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->bindEmService()V

    .line 223
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsLaunched:Z

    .line 251
    return-void
.end method

.method public showAlert(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "dialogId"    # I

    .prologue
    const/4 v11, 0x1

    const v10, 0x104000a

    const/4 v9, 0x0

    .line 664
    packed-switch p1, :pswitch_data_0

    .line 744
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 666
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v4}, Lcom/samsung/android/security/SemSdCardEncryption;->getAdditionalSpaceRequired()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    .line 668
    .local v2, "spaceInMB":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 669
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 672
    :cond_0
    const v1, 0x7f0b0627

    .line 673
    .local v1, "titleId":I
    const v0, 0x7f0b0632

    .line 674
    .local v0, "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AlertDialog storage warning - need over the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 678
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "%.2f"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "MB"

    aput-object v6, v5, v11

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/encryption/CryptSDCardSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 676
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 684
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    .end local v2    # "spaceInMB":D
    :pswitch_1
    const v1, 0x7f0b0627

    .line 685
    .restart local v1    # "titleId":I
    const v0, 0x7f0b062c

    .line 686
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog - File opening fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 696
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_2
    const v1, 0x7f0b0627

    .line 697
    .restart local v1    # "titleId":I
    const v0, 0x7f0b062e

    .line 698
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - encrypt mount fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 708
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_3
    const v1, 0x7f0b0628

    .line 709
    .restart local v1    # "titleId":I
    const v0, 0x7f0b062f

    .line 710
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - decrypt mount fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 720
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_4
    const v1, 0x7f0b0627

    .line 721
    .restart local v1    # "titleId":I
    const v0, 0x7f0b062c

    .line 722
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - encrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 732
    .end local v0    # "messageId":I
    .end local v1    # "titleId":I
    :pswitch_5
    const v1, 0x7f0b0628

    .line 733
    .restart local v1    # "titleId":I
    const v0, 0x7f0b062d

    .line 734
    .restart local v0    # "messageId":I
    const-string/jumbo v4, "CryptKeeperSDSettings"

    const-string/jumbo v5, "AlertDialog storage warning - decrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
