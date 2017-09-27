.class public Lcom/android/settings/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 45
    const-class v2, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string/jumbo v3, "device_policy"

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 123
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 125
    .local v1, "organizationNameForUser":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .end local v1    # "organizationNameForUser":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v2

    .line 124
    goto :goto_0
.end method

.method private isFingerprintLockType()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 117
    instance-of v0, p0, Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 67
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "details":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v8

    .line 71
    .local v8, "userId":I
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 78
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v10

    .line 81
    .local v10, "isManagedProfile":Z
    if-nez v3, :cond_4

    if-eqz v10, :cond_4

    .line 82
    invoke-direct {p0, v8}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 89
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v12, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 94
    .local v12, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v8

    .line 102
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v11

    .line 105
    .local v11, "launched":Z
    :goto_2
    if-nez v11, :cond_3

    .line 106
    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isFingerprintLockType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 113
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->finish()V

    .line 63
    return-void

    .line 74
    .end local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .end local v10    # "isManagedProfile":Z
    .end local v11    # "launched":Z
    .end local v12    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v13

    .line 75
    .local v13, "se":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid intent extra"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    .end local v13    # "se":Ljava/lang/SecurityException;
    .restart local v10    # "isManagedProfile":Z
    :cond_4
    if-nez v3, :cond_1

    .line 85
    const v1, 0x7f0b08e3

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 99
    .restart local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .restart local v12    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 100
    const-wide/16 v6, 0x0

    .line 98
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v11

    .restart local v11    # "launched":Z
    goto :goto_2

    .line 110
    :cond_6
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    goto :goto_3
.end method
