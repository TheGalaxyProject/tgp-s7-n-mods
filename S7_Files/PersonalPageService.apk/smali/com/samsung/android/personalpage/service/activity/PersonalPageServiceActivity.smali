.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.super Landroid/app/Activity;
.source "PersonalPageServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;
    }
.end annotation


# static fields
.field protected static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final TAG:Ljava/lang/String; = "PersonalPageServiceActivity"


# instance fields
.field protected destroyByDoubleVerification:Z

.field protected isBackupKey:Z

.field private isDefault:I

.field private isFocusChanged:Z

.field protected isM2P:Z

.field protected isVerifySuccess:Z

.field protected levelPrivatemode:I

.field private mIsBoundService:Z

.field protected mNumWrongConfirmAttempts:I

.field protected mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private rotateState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    .line 61
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 64
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 67
    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 69
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 51
    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    .line 265
    const/16 v0, 0xbb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestSystemKeyEvent(IZ)Z

    .line 264
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 249
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 248
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 251
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 90
    return-void
.end method

.method protected doUnbindService()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 95
    :cond_0
    return-void
.end method

.method protected getFailedAttemptTimeOutMS()J
    .locals 6

    .prologue
    .line 298
    const-wide/16 v0, 0x0

    .line 300
    .local v0, "timeout_ms":J
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 301
    const-wide/16 v0, 0x7530

    .line 314
    :cond_0
    :goto_0
    const-string/jumbo v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBlockAttemps -mNumWrongConfirmAttempts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", timeout_sec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-wide v0

    .line 302
    :cond_1
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 303
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 304
    :cond_2
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 305
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 306
    :cond_3
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 307
    const-wide/32 v0, 0x927c0

    goto :goto_0

    .line 308
    :cond_4
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 309
    const-wide/32 v0, 0x1b7740

    goto :goto_0

    .line 310
    :cond_5
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 311
    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method protected getScreenOrientation()I
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method protected hideVirtualKeypad()V
    .locals 4

    .prologue
    .line 236
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 235
    :cond_1
    return-void
.end method

.method protected isPortrait()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportPatternBackupPin()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v8, "PersonalPageServiceActivity"

    const-string/jumbo v9, "==onCreate()=="

    invoke-static {v8, v9}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 119
    .local v1, "kgm":Landroid/app/KeyguardManager;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 120
    .local v5, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.secretmode_service"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    .line 121
    const/4 v8, 0x4

    iput v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    .line 122
    const v8, 0x7f070006

    invoke-super {p0, v8}, Landroid/app/Activity;->setTheme(I)V

    .line 123
    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestWindowFeature(I)Z

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 126
    const/high16 v8, -0x80000000

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {v5, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 128
    const/16 v4, 0x400

    .line 129
    .local v4, "visibility":I
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 133
    .end local v4    # "visibility":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 136
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 137
    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x480000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doBindService()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "M2P"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "isFingerReset":Z
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_reset_change"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move v0, v6

    .line 146
    .local v0, "isFingerReset":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v8, "FINGERPRINT"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->DisableSystemKey()V

    .line 150
    iput v7, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 151
    if-eqz p1, :cond_4

    .line 152
    const-string/jumbo v6, "num_wrong_attempts"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 153
    const-string/jumbo v6, "PersonalPageServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: mNumWrongConfirmAttempts - savedInstanceStates ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_3
    return-void

    .line 131
    .end local v0    # "isFingerReset":Z
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .local v0, "isFingerReset":Z
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v0, v7

    .line 144
    goto :goto_1

    .local v0, "isFingerReset":Z
    :cond_3
    move v6, v7

    .line 146
    goto :goto_2

    .line 155
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 156
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "num_wrong_attempts"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 157
    const-string/jumbo v6, "PersonalPageServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: mNumWrongConfirmAttempts "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 188
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onDestroy()=="

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_2

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doUnbindService()V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_6

    .line 187
    :cond_1
    :goto_1
    return-void

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_0

    .line 191
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v2

    if-eq v1, v2, :cond_3

    instance-of v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    if-eqz v1, :cond_5

    .line 194
    :cond_4
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "onDestroy_Skip_cancelVerfiyUser"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cancelVerifyByUser()Z

    goto :goto_0

    .line 202
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const-string/jumbo v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onPause()=="

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num_wrong_attempts"

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const-string/jumbo v0, "num_wrong_attempts"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string/jumbo v0, "PersonalPageServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==onSaveInstanceState== mNumWrongConfirmAttempts :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 227
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onStop=="

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    .line 230
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 229
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 232
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 226
    return-void

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 210
    const-string/jumbo v0, "PersonalPageServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==onWindowFocusChanged== : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 212
    instance-of v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    .line 215
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 214
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 217
    :cond_0
    if-nez p1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 222
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 209
    return-void

    :cond_2
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method protected requestPrivateModeOn()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->onFinishUserVerification()V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 102
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastForPrivateFinger()V
    .locals 3

    .prologue
    .line 259
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "sendBroadcastForPrivateFinger"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 258
    return-void
.end method
