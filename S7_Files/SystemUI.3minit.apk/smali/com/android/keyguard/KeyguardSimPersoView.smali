.class public Lcom/android/keyguard/KeyguardSimPersoView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPersoView$1;,
        Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    }
.end annotation


# static fields
.field private static mNumRetry:I


# instance fields
.field private mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

.field private volatile mSimCheckInProgress:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPersoView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return p0
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardSimPersoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    .line 58
    new-instance v0, Lcom/android/keyguard/KeyguardSimPersoView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPersoView$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 72
    return-void
.end method

.method private getSimIconResId()I
    .locals 1

    .prologue
    .line 301
    sget v0, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim:I

    return v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 191
    const/16 v1, 0x7d9

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/keyguard/R$id;->simPersoEntry:I

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 126
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 111
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_icon:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPersoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimImageView:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getSimIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    sget v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 136
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 79
    const-string/jumbo v0, "KeyguardSimPersoView"

    const-string/jumbo v1, "Resetting state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    .line 83
    sget v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_skt_sim_perso_instructions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 76
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "entry":Ljava/lang/String;
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KTT_USIM_TEXT:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 201
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 203
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 204
    return-void

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 209
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 211
    return-void

    .line 212
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 214
    sget v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    if-ne v1, v3, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_skt_sim_perso_instructions:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 218
    :goto_0
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 220
    return-void

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 225
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    if-nez v1, :cond_4

    .line 226
    new-instance v1, Lcom/android/keyguard/KeyguardSimPersoView$2;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/keyguard/KeyguardSimPersoView$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    .line 283
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    if-nez v1, :cond_4

    .line 284
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->start()V

    .line 197
    :cond_4
    return-void
.end method
