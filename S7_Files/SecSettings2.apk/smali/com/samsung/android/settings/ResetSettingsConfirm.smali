.class public Lcom/samsung/android/settings/ResetSettingsConfirm;
.super Lcom/android/settings/InstrumentedFragment;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ResetSettingsConfirm$1;,
        Lcom/samsung/android/settings/ResetSettingsConfirm$2;,
        Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private databaseReset:Z

.field private handler:Landroid/os/Handler;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetSoftButton:Landroid/widget/Button;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field progressDialog:Landroid/app/ProgressDialog;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private resetSettingsCompleted:Z

.field resetTask:Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ResetSettingsConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->databaseReset:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ResetSettingsConfirm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/ResetSettingsConfirm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->databaseReset:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->requestSoftReset()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetCompleted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/ResetSettingsConfirm;->MY_USER_ID:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mResetSoftButton:Landroid/widget/Button;

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->databaseReset:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetSettingsCompleted:Z

    .line 120
    new-instance v0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ResetSettingsConfirm$1;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/samsung/android/settings/ResetSettingsConfirm$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ResetSettingsConfirm$2;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 209
    const-string/jumbo v2, "SYSTEM_PHONE_PASSWORD"

    .line 208
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 212
    const v1, 0x7f0b0b2a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0b2c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    const/16 v3, 0x65

    .line 212
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/ResetSettingsConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    :cond_0
    return-void
.end method

.method private doSoftReset()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0b4f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 243
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1105df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private requestSoftReset()V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "SYSTEM_PHONE_PASSWORD"

    .line 229
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    .line 231
    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/ResetSettingsConfirm;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->doSoftReset()V

    .line 226
    .end local v0    # "phone_password":Ljava/lang/String;
    :goto_0
    return-void

    .line 234
    .restart local v0    # "phone_password":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->StartPassword()V

    goto :goto_0

    .line 239
    .end local v0    # "phone_password":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->doSoftReset()V

    goto :goto_0
.end method

.method private resetCompleted()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/samsung/android/settings/ResetSettingsConfirm$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/ResetSettingsConfirm$3;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 185
    sparse-switch p1, :sswitch_data_0

    .line 203
    return-void

    .line 188
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    if-ne p2, v2, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->doSoftReset()V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 197
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->doSoftReset()V

    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_1
        0x3a -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    const v0, 0x7f04023b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->establishFinalConfirmationState()V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroyView()V

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 280
    :cond_1
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/settings/ResetSettingsConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method
