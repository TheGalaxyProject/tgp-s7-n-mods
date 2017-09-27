.class public Lcom/android/settings/SimPersoLockSettings;
.super Lcom/android/settings/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPersoLockSettings$1;,
        Lcom/android/settings/SimPersoLockSettings$2;,
        Lcom/android/settings/SimPersoLockSettings$LockState;,
        Lcom/android/settings/SimPersoLockSettings$TouchInput;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

.field private static final MAX_PASSWD:I

.field private static mEnableCancelBackConcept:Z

.field private static mNum_Retry:I


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private mEnteredDigits:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings$LockState;->values()[Lcom/android/settings/SimPersoLockSettings$LockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/settings/SimPersoLockSettings;I)V
    .locals 0
    .param p1, "digit"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    .line 86
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 89
    sput-boolean v3, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 92
    new-instance v0, Lcom/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$1;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$2;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method private deleteDigit()V
    .locals 3

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 501
    .local v0, "digits":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 502
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 503
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 504
    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 499
    :cond_0
    return-void
.end method

.method private reportDigit(I)V
    .locals 2
    .param p1, "digit"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    sget v1, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_1

    .line 490
    return-void

    .line 492
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 493
    return-void

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 496
    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 485
    return-void
.end method

.method private simLockChanged(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 169
    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p1, :cond_1

    .line 171
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 168
    :goto_1
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_1
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 184
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 185
    const v0, 0x7f0b081d

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1

    .line 187
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b081b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private simLockPasswdChanged(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockPasswdChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p1, :cond_2

    .line 144
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 145
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 146
    const v0, 0x7f0b081d

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 141
    :goto_1
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b081b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    .line 161
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0801

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1
.end method

.method private tryChangeSimLockPasswd()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 137
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method private updateViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 268
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    const-string/jumbo v0, "SimPersoLockSettings"

    const-string/jumbo v1, "Exception: unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0815

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_3

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0816

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_6

    .line 288
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0819

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :cond_4
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_5

    .line 291
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b081e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 296
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b081a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 298
    :cond_7
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_8

    .line 299
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b081f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 301
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_9

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_a

    .line 308
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0800

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 434
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 435
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 437
    .local v0, "action":I
    if-ne v0, v6, :cond_5

    .line 438
    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 475
    :cond_0
    :goto_0
    return v6

    .line 440
    :cond_1
    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0

    .line 442
    :cond_2
    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    .line 444
    :cond_3
    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    const/16 v4, 0x10

    if-gt v3, v4, :cond_4

    .line 445
    add-int/lit8 v4, v3, -0x7

    invoke-direct {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 449
    :cond_5
    if-nez v0, :cond_0

    .line 450
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 451
    sget-boolean v4, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    if-eqz v4, :cond_a

    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, "isVirtualKeyboard":Z
    const/4 v1, 0x0

    .line 454
    .local v1, "isFlagSystem":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 455
    const/4 v2, 0x1

    .line 458
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    .line 459
    const/4 v1, 0x1

    .line 461
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 462
    iget v4, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-lez v4, :cond_8

    .line 463
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    .line 465
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 467
    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 470
    .end local v1    # "isFlagSystem":Z
    .end local v2    # "isVirtualKeyboard":Z
    :cond_a
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 345
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0802

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 356
    const v0, 0x7f0b081d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 357
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 361
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0
.end method

.method public onClickConfirm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 368
    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v2, :cond_0

    .line 369
    const v2, 0x7f0b07f8

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 372
    return-void

    .line 373
    :cond_0
    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    sget v3, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v2, v3, :cond_4

    .line 374
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 375
    :cond_2
    const v2, 0x7f0b0817

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_3
    const v2, 0x7f0b07f9

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 386
    :cond_4
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v3}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 425
    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Exception: unexpected click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected click event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    .line 389
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    .line 428
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iput v4, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 367
    return-void

    .line 393
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "mCurrentInputLockNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 395
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    .line 397
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    const v2, 0x7f0b0818

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 407
    :goto_2
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    .line 403
    :cond_6
    const v2, 0x7f0b07fa

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 412
    .end local v1    # "mCurrentInputLockNumber":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    .line 413
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    .line 417
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 418
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .restart local v1    # "mCurrentInputLockNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 420
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-interface {v2, v3, v1, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 211
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 212
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    .line 215
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "productName":Ljava/lang/String;
    const-string/jumbo v2, "novel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sput-boolean v4, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->setupViews()V

    .line 221
    new-instance v2, Lcom/android/settings/SimPersoLockSettings$TouchInput;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPersoLockSettings;Lcom/android/settings/SimPersoLockSettings$TouchInput;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "checkbox"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Change USIM lock state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const v2, 0x7f0b029c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 227
    :cond_1
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    .line 234
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    .line 207
    return-void

    .end local v1    # "productName":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 212
    goto :goto_0

    .line 229
    .restart local v1    # "productName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Change USIM lock password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz v0, :cond_4

    .line 231
    const v2, 0x7f0b029f

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 232
    :cond_4
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 242
    const/4 v0, 0x1

    return v0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 325
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 322
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    .line 331
    return-void
.end method

.method protected setupViews()V
    .locals 2

    .prologue
    .line 253
    const v1, 0x7f040294

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->setContentView(I)V

    .line 255
    const v1, 0x7f1101a5

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    .line 256
    const v1, 0x7f1102bf

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    .line 257
    const v1, 0x7f1102c0

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    .line 258
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v1, 0x7f1102cc

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f11019b

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, "mCancelButton":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method

.method public updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V
    .locals 3
    .param p1, "lockstate"    # Lcom/android/settings/SimPersoLockSettings$LockState;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    .line 481
    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    .line 478
    return-void
.end method
