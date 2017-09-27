.class public Lcom/android/keyguard/util/KeyguardReset;
.super Ljava/lang/Object;
.source "KeyguardReset.java"


# static fields
.field private static sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 57
    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 60
    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "KeyguardReset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    const-string/jumbo v3, "KeyguardReset"

    const-string/jumbo v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 78
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 79
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 80
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string/jumbo v3, "KeyguardReset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    aget-object v3, v2, v0

    return-object v3

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    const-string/jumbo v3, "KeyguardReset"

    const-string/jumbo v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardReset;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/KeyguardReset;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/KeyguardReset;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    return-object v0
.end method

.method private removeSubUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 174
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 175
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 177
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyguardReset"

    const-string/jumbo v3, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public updateProgressDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    .line 94
    const/4 v2, 0x5

    .line 93
    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    const/16 v1, 0x7d9

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 90
    return-void
.end method

.method public wipeOut(I)V
    .locals 4
    .param p1, "attemptsCount"    # I

    .prologue
    .line 106
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 107
    .local v0, "currentUser":I
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    .line 109
    .local v1, "expiringUser":I
    const/4 v2, 0x1

    .line 110
    .local v2, "userType":I
    if-ne v1, v0, :cond_1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    const/4 v2, 0x3

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/util/KeyguardReset;->wipeOut(II)V

    .line 105
    return-void

    .line 114
    :cond_1
    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 115
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public wipeOut(II)V
    .locals 13
    .param p1, "attemptsCount"    # I
    .param p2, "usertype"    # I

    .prologue
    .line 122
    const-string/jumbo v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wipeOut() attemptsCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " usertype = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v9, 0x0

    .line 124
    .local v9, "wipeExcludeExternalStorage":Z
    const-string/jumbo v7, "com.android.email"

    .line 125
    .local v7, "pkg":Ljava/lang/String;
    const-string/jumbo v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 126
    .local v0, "cls":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.email"

    const-string/jumbo v11, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v5, "mAdminName":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    .line 128
    const-string/jumbo v11, "device_policy"

    .line 127
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 130
    .local v6, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v10, 0x1

    if-ne p2, v10, :cond_3

    .line 131
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    .line 132
    const-string/jumbo v11, "enterprise_policy"

    .line 131
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v9

    .line 135
    .local v9, "wipeExcludeExternalStorage":Z
    const-string/jumbo v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wipeExcludeExternalStorage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/util/KeyguardReset;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 138
    .local v8, "sdcard":Landroid/os/storage/StorageVolume;
    sget v10, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v10}, Lcom/android/keyguard/util/KeyguardReset;->updateProgressDialog(I)V

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->factoryResetWithoutUI()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 148
    const-string/jumbo v10, "KeyguardReset"

    const-string/jumbo v11, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "keyguardResetIntent":Landroid/content/Intent;
    const-string/jumbo v10, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.extra.REASON"

    const-string/jumbo v11, "MasterClearConfirm_KeyguardReset"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v4    # "keyguardResetIntent":Landroid/content/Intent;
    .end local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    .end local v9    # "wipeExcludeExternalStorage":Z
    :goto_1
    return-void

    .line 141
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    .restart local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    .restart local v9    # "wipeExcludeExternalStorage":Z
    :cond_1
    const-string/jumbo v10, "KeyguardReset"

    const-string/jumbo v11, "wipeOut ( send ACTION_MASTER_CLEAR/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "keyguardResetIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v10, "android.intent.extra.REASON"

    const-string/jumbo v11, "MasterClearConfirm_KeyguardReset"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v10, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 152
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v10, "KeyguardReset"

    const-string/jumbo v11, "wipeOut ( send ACTION_MASTER_CLEAR )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "keyguardResetIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "keyguardResetIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    const-string/jumbo v10, "android.intent.extra.REASON"

    const-string/jumbo v11, "MasterClearConfirm_KeyguardReset"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 160
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v4    # "keyguardResetIntent":Landroid/content/Intent;
    .end local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    .local v9, "wipeExcludeExternalStorage":Z
    :cond_3
    const-string/jumbo v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wipeOut() removeSubUser usertype : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 162
    .local v1, "currentUserId":I
    const/4 v10, 0x2

    if-ne p2, v10, :cond_4

    .line 163
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    .line 165
    .local v3, "expiringUser":I
    invoke-direct {p0, v3}, Lcom/android/keyguard/util/KeyguardReset;->removeSubUser(I)V

    goto :goto_1

    .line 167
    .end local v3    # "expiringUser":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/util/KeyguardReset;->removeSubUser(I)V

    goto :goto_1
.end method
