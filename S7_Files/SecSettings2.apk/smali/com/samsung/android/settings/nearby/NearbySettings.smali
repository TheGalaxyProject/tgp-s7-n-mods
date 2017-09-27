.class public Lcom/samsung/android/settings/nearby/NearbySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearby/NearbySettings$1;,
        Lcom/samsung/android/settings/nearby/NearbySettings$2;
    }
.end annotation


# static fields
.field protected static lengthDeviceNameMax:I


# instance fields
.field private bRegisterReceiver:Z

.field private bSdCardSupport:Z

.field private bSelfFinish:Z

.field private mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

.field private mActivity:Landroid/app/Activity;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/PreferenceScreen;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

.field private mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/AcceptListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/NearbyEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/RejectListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nearby/NearbySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    .line 116
    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    .line 118
    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 508
    new-instance v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbySettings$1;-><init>(Lcom/samsung/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 650
    new-instance v0, Lcom/samsung/android/settings/nearby/NearbySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbySettings$2;-><init>(Lcom/samsung/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    .line 415
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "initPreferences"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "initPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportSDCard()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method private setBroadcastReceiver()V
    .locals 6

    .prologue
    .line 459
    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "setBroadcastReceiver"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    .line 464
    const-string/jumbo v5, "com.samsung.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    .line 463
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    .line 469
    const-string/jumbo v5, "com.android.settings.allshare.ACTIVITY_START"

    .line 468
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v2, :cond_0

    .line 480
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "setBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 497
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public isExternalStorageSdMounted()Z
    .locals 8

    .prologue
    .line 433
    const/4 v3, 0x0

    .line 435
    .local v3, "value":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 436
    const-string/jumbo v5, "storage"

    .line 435
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 437
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v4, :cond_0

    .line 438
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 440
    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 439
    if-eqz v4, :cond_0

    .line 442
    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v3, 0x1

    .line 450
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_0
    :goto_0
    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return v3

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NearbySettings"

    const-string/jumbo v5, "isExternalStorageSdMounted"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onActivityCreated"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SettingsActivity;

    .line 275
    .local v9, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 293
    new-instance v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 294
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 293
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/ListPreference;Landroid/preference/ListPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 309
    .local v10, "currentFlag":I
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v12, "intentStart":Landroid/content/Intent;
    const-string/jumbo v0, "FLAG"

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v9    # "activity":Lcom/android/settings/SettingsActivity;
    .end local v10    # "currentFlag":I
    .end local v12    # "intentStart":Landroid/content/Intent;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onActivityCreated"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreate"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->isSupportSDCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string/jumbo v2, "pref_allshare"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_1

    .line 132
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 137
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->setHasOptionsMenu(Z)V

    .line 139
    const/16 v1, 0x37

    sput v1, Lcom/samsung/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    .line 143
    :try_start_0
    const-string/jumbo v1, "allshare_device_name"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 147
    const-string/jumbo v1, "allshare_shared_contents"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 149
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v1, "allshare_download_to"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadTo:Landroid/preference/ListPreference;

    .line 153
    :cond_0
    const-string/jumbo v1, "allshare_download_from"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 155
    const-string/jumbo v1, "allshare_accept_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nearby/AcceptListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    const v2, 0x7f0b0372

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    const-string/jumbo v1, "allshare_reject_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nearby/RejectListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    const v2, 0x7f0b0372

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 121
    return-void

    .line 134
    :cond_1
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 322
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onCreateOptionsMenu"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const v1, 0x7f0b0389

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "title":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v4, v4, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 333
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 321
    return-void

    .line 327
    :cond_1
    const v1, 0x7f0b0388

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 175
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onDestroy"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v1, :cond_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 190
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 174
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onDestroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 202
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 338
    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "onOptionsItemSelected"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 411
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 364
    :pswitch_0
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    const v0, 0x7f0b0389

    .line 370
    .local v0, "idTitle":I
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    .line 371
    .local v1, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v0    # "idTitle":I
    .end local v1    # "newFragment":Landroid/app/DialogFragment;
    :cond_1
    const v0, 0x7f0b0388

    .line 365
    .restart local v0    # "idTitle":I
    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 245
    const-string/jumbo v1, "NearbySettings"

    const-string/jumbo v2, "onPause"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->pause()V

    .line 251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intentFlag":Landroid/content/Intent;
    const-string/jumbo v1, "FLAG"

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 244
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 675
    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 680
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 679
    if-eqz v6, :cond_2

    .line 682
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 683
    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    const-string/jumbo v8, "KEY_ALLSHARE_ACCEPTED_DEVICE"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 686
    .local v1, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_1

    .line 687
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 688
    .local v5, "positiveButton":Landroid/widget/Button;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 690
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 692
    .local v4, "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_1

    .line 693
    new-instance v3, Lcom/samsung/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 694
    .local v3, "listItemListener":Lcom/samsung/android/settings/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 696
    new-instance v0, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    .line 697
    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    .line 696
    invoke-direct {v0, v3, v1, v6, v7}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 698
    .local v0, "deletebuttonlistener":Lcom/samsung/android/settings/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    .end local v0    # "deletebuttonlistener":Lcom/samsung/android/settings/nearby/DeleteButtonListener;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "listItemListener":Lcom/samsung/android/settings/nearby/ListItemListener;
    .end local v4    # "listView":Landroid/widget/ListView;
    .end local v5    # "positiveButton":Landroid/widget/Button;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "allshare_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 703
    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    const-string/jumbo v8, "KEY_ALLSHARE_REJECTED_DEVICE"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/samsung/android/settings/nearby/RejectListPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 706
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_2

    .line 707
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 708
    .restart local v5    # "positiveButton":Landroid/widget/Button;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 712
    .restart local v4    # "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_2

    .line 713
    new-instance v3, Lcom/samsung/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 714
    .restart local v3    # "listItemListener":Lcom/samsung/android/settings/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 716
    new-instance v0, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    .line 717
    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 716
    invoke-direct {v0, v3, v1, v6, v7}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 718
    .restart local v0    # "deletebuttonlistener":Lcom/samsung/android/settings/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v0    # "deletebuttonlistener":Lcom/samsung/android/settings/nearby/DeleteButtonListener;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "listItemListener":Lcom/samsung/android/settings/nearby/ListItemListener;
    .end local v4    # "listView":Landroid/widget/ListView;
    .end local v5    # "positiveButton":Landroid/widget/Button;
    :cond_2
    return v9

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "NearbySettings"

    const-string/jumbo v7, "onPreferenceClick"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    return v10
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 211
    const-string/jumbo v2, "NearbySettings"

    const-string/jumbo v3, "onResume"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    .line 227
    .local v0, "bFromSearch":Z
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->resume()V

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->initPreferences()V

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intentFlag":Landroid/content/Intent;
    const-string/jumbo v2, "FLAG"

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string/jumbo v2, "SCREEN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 261
    const-string/jumbo v0, "NearbySettings"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method
