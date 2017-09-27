.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.super Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;,
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;
    }
.end annotation


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mMenu_Korea:Z

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRetry_counter:I

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field private mfilter:Landroid/content/IntentFilter;

.field private mfilter_apk:Landroid/content/IntentFilter;

.field nfcBroadcast:Landroid/content/BroadcastReceiver;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V
    .locals 0
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 84
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 103
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 520
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "mNfclock"    # Landroid/preference/PreferenceScreen;
    .param p2, "mRWp2p"    # Landroid/preference/PreferenceScreen;
    .param p3, "mABeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "mCashbee"    # Landroid/preference/PreferenceScreen;
    .param p5, "mLockNumchg"    # Landroid/preference/PreferenceScreen;
    .param p6, "mLockNumInit"    # Landroid/preference/PreferenceScreen;
    .param p7, "mNfcPaymentSettings"    # Landroid/preference/PreferenceScreen;
    .param p8, "mRoot"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 84
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 103
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 520
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 95
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 96
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 97
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 98
    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 99
    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 100
    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 92
    return-void
.end method

.method private List_items_settings_of_cashbee(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 471
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[S] List_items_settings_of_cashbee set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-nez v0, :cond_1

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 481
    :cond_0
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_settings_of_cashbee "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 476
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    goto :goto_0
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 13
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 343
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] List_items_update_of_ABeam"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v10, 0x0

    .line 346
    .local v10, "summary_resId":I
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 352
    :cond_0
    const/4 v8, 0x1

    .line 355
    .local v8, "mMdmNfcPolicy":Z
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 358
    .local v7, "mDevSettingCr":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    :try_start_0
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v8, 0x0

    .line 367
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_2
    :goto_0
    if-gt v12, p1, :cond_7

    const/16 v0, 0xf

    if-gt p1, v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 374
    const v10, 0x7f0b19dc

    .line 402
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    const/4 v0, 0x2

    if-gt v0, p2, :cond_6

    .line 408
    const/4 v0, 0x3

    if-gt p2, v0, :cond_6

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 412
    :cond_6
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_ABeam"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 364
    :catch_0
    move-exception v6

    .line 365
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 366
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 366
    throw v0

    .line 376
    :cond_7
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    .line 380
    .local v9, "result_rwp2p":I
    const/16 v0, 0xd

    if-ne v9, v0, :cond_a

    .line 381
    if-eqz v8, :cond_8

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 387
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    const v10, 0x7f0b19db

    goto :goto_1

    .line 384
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    .line 390
    :cond_9
    const v10, 0x7f0b19dc

    goto :goto_1

    .line 392
    :cond_a
    const/16 v0, 0xb

    if-ne v9, v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 394
    const v10, 0x7f0b19dc

    goto :goto_1

    .line 397
    .end local v9    # "result_rwp2p":I
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 398
    const v10, 0x7f0b19dc

    goto :goto_1
.end method

.method private List_items_update_of_LockNumInit(II)V
    .locals 2
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 503
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    const/4 v0, 0x2

    if-gt v0, p2, :cond_2

    .line 511
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 517
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_LockNumchg(II)V
    .locals 2
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 485
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 488
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    const/4 v0, 0x2

    if-gt v0, p2, :cond_2

    .line 493
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 499
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x0

    .line 451
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 457
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 463
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_cashbee(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] List_items_update_of_cashbee "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 423
    .local v0, "summary_resId":I
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 429
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v1

    .line 431
    .local v1, "type_settings":I
    if-ne v1, v5, :cond_5

    .line 432
    const v0, 0x7f0b1bae

    .line 437
    :goto_1
    if-eqz v0, :cond_1

    .line 438
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    const/4 v2, 0x2

    if-gt v2, p2, :cond_3

    .line 443
    const/4 v2, 0x3

    if-gt p2, v2, :cond_3

    .line 444
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 447
    :cond_3
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[E] List_items_update_of_cashbee"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 426
    .end local v1    # "type_settings":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 434
    .restart local v1    # "type_settings":I
    :cond_5
    const v0, 0x7f0b1baf

    goto :goto_1
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 213
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, "summary_resId":I
    if-ne p1, v5, :cond_3

    if-ne p2, v5, :cond_3

    .line 222
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v0, 0x7f0b19dc

    .line 232
    :goto_0
    if-eqz v0, :cond_1

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    if-gt v4, p2, :cond_5

    .line 238
    const/4 v1, 0x3

    if-gt p2, v1, :cond_5

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 248
    :goto_1
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 225
    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 226
    const v0, 0x7f0b19dc

    .line 225
    goto :goto_0

    .line 228
    :cond_4
    const v0, 0x7f0b19db

    goto :goto_0

    .line 241
    :cond_5
    if-gt v4, p1, :cond_6

    const/16 v1, 0xf

    if-gt p1, v1, :cond_6

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 244
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_nfrwp2p(II)V
    .locals 12
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 252
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v11, 0x0

    .line 255
    .local v11, "summary_resId":I
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 262
    :cond_0
    const/4 v8, 0x1

    .line 265
    .local v8, "mMdmNfcPolicy":Z
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    const-string/jumbo v3, "isNFCEnabled"

    .line 266
    const/4 v2, 0x0

    .line 267
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 266
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 268
    .local v9, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 269
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    :try_start_0
    const-string/jumbo v0, "isNFCEnabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const/4 v8, 0x0

    .line 277
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_2
    :goto_0
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    .line 282
    const/4 v2, 0x0

    .line 283
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 284
    .local v7, "mDevSettingCr":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 287
    :try_start_1
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    const/4 v8, 0x0

    .line 293
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_4
    :goto_1
    const/4 v0, 0x1

    if-gt v0, p1, :cond_9

    const/16 v0, 0xf

    if-gt p1, v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 300
    const v11, 0x7f0b19dc

    .line 329
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 334
    const/4 v0, 0x2

    if-gt v0, p2, :cond_8

    .line 335
    const/4 v0, 0x3

    if-gt p2, v0, :cond_8

    .line 336
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 339
    :cond_8
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 274
    .end local v7    # "mDevSettingCr":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 275
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 276
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    .line 277
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 276
    throw v0

    .line 290
    .restart local v7    # "mDevSettingCr":Landroid/database/Cursor;
    :catch_1
    move-exception v6

    .line 291
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 292
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 292
    throw v0

    .line 301
    :cond_9
    if-nez v8, :cond_b

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    .line 304
    .local v10, "result":I
    const/16 v0, 0xb

    if-ne v10, v0, :cond_a

    .line 305
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const v11, 0x7f0b19dc

    goto :goto_2

    .line 307
    :cond_a
    const/16 v0, 0xd

    if-ne v10, v0, :cond_5

    .line 308
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const v11, 0x7f0b19db

    goto :goto_2

    .line 312
    .end local v10    # "result":I
    :cond_b
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    .line 313
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    .line 316
    .restart local v10    # "result":I
    const/16 v0, 0xd

    if-ne v10, v0, :cond_c

    .line 317
    const v11, 0x7f0b19db

    goto/16 :goto_2

    .line 318
    :cond_c
    const/16 v0, 0xb

    if-ne v10, v0, :cond_d

    .line 319
    const v11, 0x7f0b19dc

    goto/16 :goto_2

    .line 321
    :cond_d
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 324
    .end local v10    # "result":I
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 325
    const v11, 0x7f0b19dc

    goto/16 :goto_2
.end method

.method private list_items_update(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 187
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[*] list_items_update  :  clfLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , uimLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfclock(II)V

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfrwp2p(II)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_ABeam(II)V

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumchg(II)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumInit(II)V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_TapAndPay(II)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    if-eqz v0, :cond_1

    .line 198
    const-string/jumbo v0, "SENN82AB"

    const-string/jumbo v1, "S3FWRN5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_settings_of_cashbee(Z)V

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_cashbee(II)V

    .line 209
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method


# virtual methods
.method public getKoreaMenu()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 126
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNfclock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRWp2p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mABeam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCashbee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLockNumchg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLockNumInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNfcPaymentSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 137
    iput v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "get UIMLock status T.O. timer start "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.action.nfc.policychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.settings.nfc.ACTION_OSAIFUKEITAI_NETWORK_CHG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->setHasOptionsMenu(Z)V

    .line 160
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 169
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 171
    .local v1, "uimLock":I
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->getKoreaMenu()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_0
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[E] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
