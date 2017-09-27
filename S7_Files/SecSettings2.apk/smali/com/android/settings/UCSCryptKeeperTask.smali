.class public Lcom/android/settings/UCSCryptKeeperTask;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UCSCryptKeeperTask$1;,
        Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mCSName:Ljava/lang/String;

.field private static mFirstTime:Z

.field private static mPasswordMaxLength:I

.field private static mPasswordMinLength:I

.field private static mPukMaxLength:I

.field private static mPukMinLength:I

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCryptKeeperDescription:Landroid/widget/TextView;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEnabledWrap:I

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsEncrypt:Z

.field private mIsPukState:Z

.field mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

.field mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

.field private mOdeUCMEnabled:Z

.field private mParentActivity:Lcom/android/settings/CryptKeeper;

.field private mPasswordEntry:Landroid/widget/EditText;

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field protected mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

.field private mStatusString:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUri:Ljava/lang/String;

.field owner_info:Ljava/lang/String;

.field passwordType:I

.field ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get10()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/UCSCryptKeeperTask;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get9()I
    .locals 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->fakeUnlockAttempt()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V
    .locals 0
    .param p1, "ret"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V
    .locals 0
    .param p1, "misc"    # Ljava/lang/String;
    .param p2, "errorMsg"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->unlockUCSPUK()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    .line 135
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 136
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    .line 137
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    .line 138
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    .line 139
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentActivity"    # Lcom/android/settings/CryptKeeper;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isEncrypt"    # Z
    .param p5, "enabledWrap"    # I
    .param p6, "odeUCMEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    .line 118
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    .line 119
    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    .line 122
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b1b66

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    .line 134
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 149
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    .line 154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 157
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    .line 672
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 160
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    .line 162
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 163
    iput-object p3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    .line 164
    const v0, 0x7f1101f9

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    .line 166
    const-string/jumbo v0, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 167
    iput-boolean p4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    .line 168
    iput p5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    .line 169
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 170
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadKeyguardConfig()Lcom/android/settings/EFSProperties$KeyguardProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    .line 171
    iput-boolean p6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    .line 172
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget-object v1, v1, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 175
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    .line 176
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    .line 177
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    .line 178
    const-string/jumbo v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ODE Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    iget-object v1, v1, Lcom/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 182
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    .line 183
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    .line 184
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    .line 185
    const-string/jumbo v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Keyguard Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    const-string/jumbo v0, "UCSCryptKeeperTask"

    const-string/jumbo v1, "Failed to get both properties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private beginAttempt()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f1101f5

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0b0658

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    return-void
.end method

.method private dipToPixel(I)I
    .locals 3
    .param p1, "dip"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 198
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private fakeUnlockAttempt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1024
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b1b67

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 1027
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1029
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$5;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$5;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 1037
    const-wide/16 v2, 0xc8

    .line 1029
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1023
    :cond_0
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 244
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 247
    :cond_0
    return-object v2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttemptUCS([I)V
    .locals 7
    .param p1, "ret"    # [I

    .prologue
    const v6, 0xfffe

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 966
    if-nez p1, :cond_1

    .line 967
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v4, [I

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 975
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_5

    .line 976
    aget v1, p1, v5

    if-ne v1, v6, :cond_4

    .line 977
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_3

    .line 978
    const v1, 0x7f0b1b6b

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 986
    :goto_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 988
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 989
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 993
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 994
    const-string/jumbo v1, "NONE"

    sput-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    .line 963
    :goto_2
    return-void

    .line 980
    :cond_3
    const v1, 0x7f0b1b6a

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_1

    .line 983
    :cond_4
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v4, [I

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    .line 984
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPukStringId()I

    move-result v1

    aget v2, p1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 997
    :cond_5
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    .line 998
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 999
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1000
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1005
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    aget v1, p1, v4

    const v2, 0xffef

    if-ne v1, v2, :cond_7

    .line 1006
    iput-boolean v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 1007
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v3, [I

    aget v3, p1, v3

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    .line 1017
    :goto_3
    sget-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 1018
    const-string/jumbo v1, "NONE"

    sput-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    goto :goto_2

    .line 1008
    :cond_7
    aget v1, p1, v5

    if-ne v1, v6, :cond_9

    .line 1009
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_8

    .line 1010
    const v1, 0x7f0b1b6b

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_3

    .line 1012
    :cond_8
    const v1, 0x7f0b1b6a

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_3

    .line 1015
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    aget v2, p1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 208
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 210
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 212
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 214
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    .line 220
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 221
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 230
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 231
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 232
    goto :goto_0

    .line 236
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 239
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 236
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 239
    goto :goto_2
.end method

.method private passwordEntryInitForUCS()V
    .locals 14

    .prologue
    const/16 v13, 0xb4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 538
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f110203

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    .line 539
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f110202

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 540
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 541
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 542
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 544
    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-nez v6, :cond_0

    .line 545
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v7, 0x60000

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    sput v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 546
    :cond_0
    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sget v7, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-le v6, v7, :cond_7

    .line 547
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 552
    :goto_0
    new-instance v5, Lcom/android/settings/UCSCryptKeeperTask$2;

    invoke-direct {v5, p0}, Lcom/android/settings/UCSCryptKeeperTask$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 578
    .local v5, "watcher":Landroid/text/TextWatcher;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 579
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 580
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 582
    .local v3, "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 583
    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 584
    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 585
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    .end local v3    # "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 592
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 593
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 598
    .end local v5    # "watcher":Landroid/text/TextWatcher;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 599
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f1101f9

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 601
    const-string/jumbo v6, "UCSCryptKeeperTask"

    const-string/jumbo v7, "Removing the emergency Call button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 607
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f110219

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, "imeSwitcher":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 609
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-direct {p0, v2, v10}, Lcom/android/settings/UCSCryptKeeperTask;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 610
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 611
    new-instance v6, Lcom/android/settings/UCSCryptKeeperTask$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$3;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    :cond_4
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_5

    .line 623
    const-string/jumbo v6, "UCSCryptKeeperTask"

    const-string/jumbo v7, "Acquiring wakelock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 625
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_5

    .line 626
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "UCSCryptKeeperTask"

    const/16 v8, 0x1a

    invoke-virtual {v4, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 627
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 638
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/UCSCryptKeeperTask$4;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$4;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    .line 643
    const-wide/16 v8, 0x0

    .line 638
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    sget-object v6, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 650
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_6

    .line 651
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v7, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 653
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 664
    :cond_6
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 668
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x480000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 536
    return-void

    .line 549
    .end local v1    # "imeSwitcher":Landroid/view/View;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0
.end method

.method private setMessageInUcsInfo(Ljava/lang/String;I)V
    .locals 7
    .param p1, "misc"    # Ljava/lang/String;
    .param p2, "errorMsg"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 515
    const-string/jumbo v0, ""

    .line 516
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "NONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    const/16 v1, 0x21

    if-eq p2, v1, :cond_2

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f1101f4

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    .line 528
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 531
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 532
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void

    .line 520
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private unlockUCSPUK()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    :goto_0
    return-void

    .line 261
    :cond_1
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected checkPin()Z
    .locals 2

    .prologue
    .line 276
    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, "length":I
    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-gt v0, v1, :cond_0

    .line 278
    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 279
    const/4 v1, 0x1

    return v1

    .line 281
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected checkPuk()Z
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    if-gt v0, v1, :cond_0

    .line 268
    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public confirmPin()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v"    # [Ljava/lang/Object;

    .prologue
    .line 428
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "v":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 431
    .local v1, "service":Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 432
    iget-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-nez v2, :cond_0

    .line 433
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    .line 434
    const-string/jumbo v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return-object v5

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UCSCryptKeeperTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "resid"    # I
    .param p2, "remainingcount"    # I

    .prologue
    const/4 v6, 0x0

    .line 309
    move v1, p2

    .line 310
    .local v1, "remaining":I
    if-lez p2, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0b1b6d

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ")"

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "message":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 314
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 297
    const v0, 0x7f0b0656

    return v0
.end method

.method public getWrongPukStringId()I
    .locals 1

    .prologue
    .line 303
    const v0, 0x7f0b1b70

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 445
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 447
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f04008e

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 449
    const-string/jumbo v4, ""

    .line 450
    .local v4, "uri":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 451
    const v5, 0x7f0b1b66

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    .line 453
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V

    .line 454
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 455
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 457
    :cond_0
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f1101f5

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    .line 458
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 459
    const/4 v3, 0x0

    .line 461
    .local v3, "state":[I
    sget-boolean v5, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    if-eqz v5, :cond_6

    .line 462
    const/4 v1, 0x0

    .end local v3    # "state":[I
    .local v1, "i":I
    :goto_0
    const/16 v5, 0x1e

    if-ge v1, v5, :cond_1

    .line 463
    invoke-static {v4}, Lcom/samsung/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    .line 464
    .local v3, "state":[I
    const-string/jumbo v5, "UCSCryptKeeperTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    aget v5, v3, v9

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 476
    .end local v3    # "state":[I
    :cond_1
    sput-boolean v9, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    .line 480
    .end local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 481
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 484
    :cond_2
    aget v5, v3, v9

    const/16 v6, 0x85

    if-ne v5, v6, :cond_3

    .line 485
    iput-boolean v8, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 487
    :cond_3
    sget-object v5, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 489
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f1101f6

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 490
    .local v2, "ownerInfo":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 492
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v5, :cond_7

    .line 495
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v6, v8, [I

    aget v7, v3, v8

    aput v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    .line 445
    :goto_2
    return-void

    .line 468
    .end local v2    # "ownerInfo":Landroid/widget/TextView;
    .restart local v1    # "i":I
    .restart local v3    # "state":[I
    :cond_4
    const/16 v5, 0x1d

    if-eq v1, v5, :cond_5

    .line 470
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 478
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .local v3, "state":[I
    :cond_6
    invoke-static {v4}, Lcom/samsung/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    .local v3, "state":[I
    goto :goto_1

    .line 497
    .end local v3    # "state":[I
    .restart local v2    # "ownerInfo":Landroid/widget/TextView;
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v5, :cond_8

    .line 499
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    aget v6, v3, v8

    const v7, 0x7f0b1b6c

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 502
    :cond_8
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    aget v6, v3, v8

    const v7, 0x7f0b0651

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    return-void
.end method

.method protected setHintOrMessageText(I)V
    .locals 5
    .param p1, "resHintId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    const v0, 0x7f0b1b68

    if-ne p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_0
    return-void

    .line 322
    :cond_0
    const v0, 0x7f0b1b67

    if-ne p1, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method
