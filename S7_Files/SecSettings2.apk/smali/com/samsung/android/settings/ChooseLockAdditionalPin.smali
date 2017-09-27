.class public Lcom/samsung/android/settings/ChooseLockAdditionalPin;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mForAppLockBackupKey:Z

.field private static mForFingerprint:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsFromKnoxFinger:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get4()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    .line 78
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    .line 79
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    .line 81
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    .line 82
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    .line 83
    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    .line 84
    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    .line 85
    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->requestWindowFeature(I)Z

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_personal"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_applock"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forPrivateBackupKey"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forAppLockBackupKey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    .line 115
    sget-object v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    :goto_0
    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "isFromKnoxFinger"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    .line 122
    const-string/jumbo v1, "ChooseLockAdditionalPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFromAppLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v0, ""

    .line 125
    .local v0, "msg":Ljava/lang/CharSequence;
    sget-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    if-eqz v1, :cond_3

    .line 126
    :cond_1
    const v1, 0x7f0b14b8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    .line 130
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 101
    return-void

    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_2
    move v1, v2

    .line 115
    goto :goto_0

    .line 128
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    :cond_3
    const v1, 0x7f0b0add

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 140
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 135
    return-void
.end method
