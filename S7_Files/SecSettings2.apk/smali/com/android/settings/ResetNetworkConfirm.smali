.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/OptionsMenuFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$1;,
        Lcom/android/settings/ResetNetworkConfirm$2;,
        Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;,
        Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;


# instance fields
.field private DisableListner:Z

.field private isATTReset:Z

.field private isFirstResume:Z

.field private isWiFiEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSubId:I

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ResetNetworkConfirm;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->StartPassword()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ResetNetworkConfirm;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 93
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    .line 116
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$2;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    const-string/jumbo v2, "SYSTEM_PHONE_PASSWORD"

    .line 339
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 343
    const v1, 0x7f0b0b2a

    invoke-virtual {p0, v1}, Lcom/android/settings/ResetNetworkConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0b2c

    invoke-virtual {p0, v2}, Lcom/android/settings/ResetNetworkConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    const/16 v3, 0x65

    .line 343
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/settings/ResetNetworkConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    :cond_0
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1105dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 330
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0b93

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b145b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string/jumbo v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/ResetNetworkConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method

.method private resetNetwork()V
    .locals 8

    .prologue
    .line 239
    iget-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    if-eqz v3, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    .line 243
    iget-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    if-eqz v3, :cond_1

    .line 244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    .line 246
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog()Landroid/app/ProgressDialog;

    .line 247
    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 248
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 249
    new-instance v3, Lcom/android/settings/ResetNetworkConfirm$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ResetNetworkConfirm$3;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    .line 263
    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 271
    .local v2, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->networkReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn()Z

    .line 278
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    new-instance v3, Lcom/android/settings/ResetNetworkConfirm$4;

    invoke-direct {v3, p0}, Lcom/android/settings/ResetNetworkConfirm$4;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void

    .line 272
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 378
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    .line 379
    const-string/jumbo v1, "Restore default APN Handler: Process Thread"

    .line 378
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 380
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 381
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    .line 382
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    .line 381
    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 387
    return v3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 424
    const/16 v0, 0x54

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OptionsMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 363
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V

    .line 358
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v1, "subscription"

    .line 213
    const/4 v2, -0x1

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 216
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 207
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 190
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 192
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 193
    const-string/jumbo v3, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 192
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const v2, 0x7f04018c

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 195
    :cond_0
    if-eqz v0, :cond_1

    .line 196
    const v2, 0x7f040027

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0, v6}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 198
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-object v1

    .line 201
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const v2, 0x7f040239

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 203
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, "mNetworkResetIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    .line 222
    return-void
.end method
