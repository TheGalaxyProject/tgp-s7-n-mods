.class public Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;
.super Landroid/app/Activity;
.source "KnoxChooseLockFingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z

.field private static mForFingerprint:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsFromKnoxFinger:Z

.field private static mIsFromKnoxFingerForSwitch:Z

.field private static mIsFromKnoxIris:Z

.field private static mIsFromKnoxIrisForSwitch:Z

.field private static mPersonalPage_isPin:Z


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get3()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFingerForSwitch:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIris:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIrisForSwitch:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    .line 140
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    .line 141
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    .line 142
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFingerForSwitch:Z

    .line 143
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIris:Z

    .line 144
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIrisForSwitch:Z

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 148
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    .line 149
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z

    .line 150
    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    .line 123
    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 271
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 292
    const-string/jumbo v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    return-void
.end method

.method private sendIntentToMDMFW(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 279
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 212
    sput-boolean v4, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const v1, 0x7f0b14b8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_personal"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mFromPersonalPage:Z

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "personal_mQuality"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mPersonalPage_isPin:Z

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    .line 223
    const-string/jumbo v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[mForFingerprint] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForFingerprint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "forPrivateBackupKey"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    .line 225
    const-string/jumbo v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mForPrivateModeBackupKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxFinger"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxFingerForSwitch"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFingerForSwitch:Z

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxIris"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIris:Z

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxIrisSwitch"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxIrisForSwitch:Z

    .line 231
    const-string/jumbo v1, "KnoxChooseLockFingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[KNOX FINGER] : init, mIsFromKnoxFinger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFinger:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsFromKnoxFingerForSwitch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mIsFromKnoxFingerForSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 238
    if-eq p1, v3, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 239
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_3

    .line 252
    iget-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToMDMFW(I)V

    .line 257
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_2

    .line 258
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword;->sendIntentToKnoxKeyguard(I)V

    .line 263
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 240
    :cond_3
    if-ne p1, v3, :cond_5

    .line 241
    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get4()Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    move-result-object v0

    .line 242
    .local v0, "mFragmentObj":Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get9(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get9(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    if-ne v1, v2, :cond_5

    .line 244
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    sget-object v1, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;->Introduction:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 249
    .end local v0    # "mFragmentObj":Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method
