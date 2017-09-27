.class public Lcom/android/keyguard/KeyguardUCMPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;,
        Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;,
        Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    }
.end annotation


# static fields
.field private static sVendorName:Ljava/lang/String;

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private mAgentID:Ljava/lang/String;

.field private mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

.field private mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

.field private mError:I

.field private mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

.field private mMISCInfo:Ljava/lang/String;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPinText:Ljava/lang/String;

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private mPukSupported:Z

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

.field private mStatus:I

.field private mUCMAgent:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->stopProgress()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUKandUnlock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)[I
    .locals 1
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPIN(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 1
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getRemainingCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPassword(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getAgentInfoAndUpdateStatus()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardUCMPinView;Z)V
    .locals 0
    .param p1, "isGetStatus"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->startProgress(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUCMPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 60
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    .line 62
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    .line 64
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    .line 65
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    .line 66
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    .line 67
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    .line 69
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    .line 70
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    .line 83
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 81
    :cond_0
    return-void
.end method

.method private checkPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 902
    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$3;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$3;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    .line 898
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 893
    return-void
.end method

.method private checkPin()Z
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method private checkPuk()Z
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 203
    .local v2, "ucmBinder":Lcom/samsung/android/knox/ucm/core/IUcmService;
    const/4 v1, 0x0

    .line 204
    .local v1, "keyguardCSName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 205
    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get UCM service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v6

    .line 209
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 210
    .local v3, "userId":I
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    .end local v1    # "keyguardCSName":Ljava/lang/String;
    .end local v3    # "userId":I
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    .line 216
    return-object v1

    .line 211
    .restart local v1    # "keyguardCSName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "keyguardCSName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 218
    :cond_2
    return-object v6
.end method

.method public static generatePassword()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "generatePassword called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    .line 225
    .local v1, "ucmBinder":Lcom/samsung/android/knox/ucm/core/IUcmService;
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 228
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v3, v2, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v5

    .line 233
    :cond_0
    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "mUcmBinder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getAgentInfoAndUpdateStatus()V
    .locals 11

    .prologue
    const/16 v10, 0xe

    monitor-enter p0

    .line 341
    :try_start_0
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "getAgentInfoAndUpdateStatus called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    .line 343
    .local v5, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v5, :cond_0

    .line 344
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get UCM service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 345
    return-void

    .line 348
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "uri":Ljava/lang/String;
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 351
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get getStatus"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 352
    return-void

    .line 355
    :cond_1
    :try_start_2
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 356
    .local v3, "errorCode":I
    if-ne v3, v10, :cond_2

    .line 357
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "Boot init condition"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    .line 359
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v4, v7, :cond_2

    .line 360
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_4

    .line 362
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 363
    if-eq v3, v10, :cond_3

    .line 381
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const-string/jumbo v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    .line 382
    const-string/jumbo v7, "miscInfo"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    .line 383
    const-string/jumbo v7, "minPinLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    .line 384
    const-string/jumbo v7, "maxPinLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    .line 385
    const-string/jumbo v7, "minPukLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    .line 386
    const-string/jumbo v7, "maxPukLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    .line 387
    const-string/jumbo v7, "remainCnt"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    .line 388
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    .line 389
    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pin puk "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "misc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pin remain : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "errorCode":I
    .end local v6    # "uri":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .line 397
    return-void

    .line 366
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "errorCode":I
    .restart local v4    # "i":I
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    const-wide/16 v8, 0x3e8

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 368
    :cond_4
    :try_start_5
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get getStatus"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 369
    return-void

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 394
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "errorCode":I
    .end local v4    # "i":I
    .end local v6    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 395
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    sget-object v1, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, "KeyguardUCMPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCSUri returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v0
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 888
    const-string/jumbo v0, ""

    .line 889
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    return-object v0
.end method

.method private getStatusAndShowingDialog()V
    .locals 5

    .prologue
    .line 563
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "getStatusAndShowingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v1, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 562
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    .prologue
    .line 127
    const-string/jumbo v1, "com.samsung.ucs.ucsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    .line 128
    .local v0, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-object v0
.end method

.method private getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 3
    .param p1, "isGetStatus"    # Z

    .prologue
    .line 544
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "getUnlockProgressDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 547
    if-eqz p1, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 549
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 557
    const/16 v1, 0x7d9

    .line 556
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 552
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_unlocking:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 279
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private startProgress(Z)V
    .locals 1
    .param p1, "isGetStatus"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    .line 91
    return-void
.end method

.method private stopProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 99
    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    .line 96
    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)[I
    .locals 12
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 239
    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "verifyPIN called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v6, 0x3

    new-array v3, v6, [I

    .line 241
    .local v3, "retVal":[I
    aput v8, v3, v9

    .line 242
    aput v8, v3, v10

    .line 243
    aput v8, v3, v11

    .line 245
    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    .line 246
    .local v4, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v4, :cond_0

    .line 247
    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v3

    .line 251
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "uri":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v6, v5, p1, v7}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 254
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    .line 255
    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    .line 256
    const-string/jumbo v6, "errorresponse"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "errorCode":I
    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remainCnt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "errorCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v7, 0x83

    if-ne v6, v7, :cond_1

    .line 262
    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "PIN verfication succeed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/4 v7, 0x0

    aput v6, v3, v7

    .line 268
    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 269
    const/4 v6, 0x2

    aput v2, v3, v6

    .line 271
    return-object v3

    .line 264
    :cond_1
    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "PIN verfication failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    return-object v3
.end method

.method private verifyPINandUnlock(Ljava/lang/String;)V
    .locals 2
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 602
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPINandUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->start()V

    .line 601
    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "verifyPUK called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v8, 0x3

    new-array v3, v8, [I

    .line 286
    .local v3, "ret":[I
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    .line 287
    const/4 v8, -0x1

    const/4 v9, 0x1

    aput v8, v3, v9

    .line 288
    const/4 v8, -0x1

    const/4 v9, 0x2

    aput v8, v3, v9

    .line 290
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "tempPUK":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "tempPIN":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 294
    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    .line 295
    return-object v3

    .line 298
    :cond_1
    const-string/jumbo v8, "com.samsung.ucs.ucsservice"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    .line 299
    .local v6, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v6, :cond_2

    .line 300
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "failed to get UCM service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    .line 302
    return-object v3

    .line 313
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "uri":Ljava/lang/String;
    invoke-interface {v6, v7, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 315
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "state"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    .line 316
    const-string/jumbo v8, "remainCnt"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    .line 317
    const-string/jumbo v8, "errorresponse"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 318
    .local v2, "errorCode":I
    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remainCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "errorCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v9, 0x84

    if-ne v8, v9, :cond_3

    .line 323
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication succeed : LOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/4 v9, 0x0

    aput v8, v3, v9

    .line 331
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const/4 v9, 0x1

    aput v8, v3, v9

    .line 332
    const/4 v8, 0x2

    aput v2, v3, v8

    .line 337
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v7    # "uri":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 324
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errorCode":I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_3
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v9, 0x83

    if-ne v8, v9, :cond_4

    .line 325
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication succeed : UNLOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errorCode":I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication failed : BLOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private verifyPUKandUnlock()V
    .locals 3

    .prologue
    .line 859
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUKandUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 862
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    .line 883
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->start()V

    .line 858
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 674
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "confirmPin called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 678
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/android/keyguard/R$id;->ucmPinEntry:I

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorID()V
    .locals 6

    .prologue
    .line 105
    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "getVendorID() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 107
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v2, :cond_0

    .line 108
    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get UCM service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 115
    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get agentInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_1
    const-string/jumbo v4, "id"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    .line 119
    const-string/jumbo v4, "isPUKSupported"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 173
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onDetachedFromWindow called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 176
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 171
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 158
    sget v0, Lcom/android/keyguard/R$id;->ucm_misctag:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/android/keyguard/R$id;->ucm_csname:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    .line 160
    const-string/jumbo v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishInflate() called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "setTimeout called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 156
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    .prologue
    const/4 v3, 0x1

    .line 913
    const-string/jumbo v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPasswordChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    if-eqz p2, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 916
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 912
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 186
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 136
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "resetState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getStatusAndShowingDialog()V

    .line 134
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 843
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startAppearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 849
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startDisappearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    .prologue
    .line 575
    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "verifyPasswordAndUnlock overrided called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "entry":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 582
    :cond_0
    return-void

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 596
    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_0
    return-void

    .line 587
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINandUnlock(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->verifyPUKandUpdateUI()V

    goto :goto_0

    .line 593
    :sswitch_2
    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x85 -> :sswitch_1
    .end sparse-switch
.end method
