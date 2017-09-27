.class Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmMonitor"
.end annotation


# instance fields
.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsStatusBarHidden:Z

.field private mLocationProviderAllowed:Z

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPwdChangeRequest:I

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return v0
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1545
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    .line 1524
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1525
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1526
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    .line 1527
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 1528
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    .line 1529
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1530
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1531
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    .line 1532
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    .line 1533
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 1534
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    .line 1535
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    .line 1536
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    .line 1537
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    .line 1538
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    .line 1539
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 1540
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 1541
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    .line 1542
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Z

    .line 1546
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->registerCallback()V

    .line 1545
    return-void
.end method

.method private getCurrentFailedAttempts()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1681
    const/4 v8, 0x0

    .line 1682
    .local v8, "result":I
    const-string/jumbo v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1683
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    .line 1684
    .local v3, "projectionArgs":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1685
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1687
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1688
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1694
    :cond_0
    :goto_0
    return v8

    .line 1689
    :catch_0
    move-exception v7

    .line 1691
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1690
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1690
    throw v0
.end method

.method private isMDMEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1652
    iget v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 1551
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 1553
    .local v1, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 1554
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    .line 1549
    :goto_0
    return-void

    .line 1556
    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() cannot reference because edm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0
    .param p1, "exclude"    # Z

    .prologue
    .line 1595
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 1594
    return-void
.end method

.method public getLockDelay()I
    .locals 1

    .prologue
    .line 1721
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method public getPwdChangeRequest()I
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1727
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1731
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    .line 1673
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1677
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1735
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method public isSFinderTileBlocked()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 1763
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public isSubIdLockedByAdmin()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1776
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 1777
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1776
    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v3

    .line 1778
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1779
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    .line 1780
    const-string/jumbo v7, "telephony_subscription_service"

    .line 1779
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 1781
    .local v2, "mSubMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1782
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v0, 0x0

    .line 1783
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1784
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1788
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1789
    return v10

    .line 1790
    :cond_1
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1791
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v1, v7, v5

    .line 1792
    .local v1, "lockedIccId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1793
    return v10

    .line 1791
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1799
    .end local v1    # "lockedIccId":Ljava/lang/String;
    .end local v2    # "mSubMgr":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return v6
.end method

.method public isWifiCallingTileBlocked()Z
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1751
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1755
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public setAirplaneModeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1612
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    .line 1611
    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1629
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    .line 1628
    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1616
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    .line 1615
    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    .line 1581
    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "isAllowed"    # Z

    .prologue
    .line 1648
    iput-boolean p2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Z

    .line 1647
    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .locals 0
    .param p1, "blockedIccIdList"    # [Ljava/lang/String;

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 1770
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1587
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1586
    return-void
.end method

.method public setNFCAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1620
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    .line 1619
    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1634
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 1633
    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139c

    .line 1574
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1575
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1576
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1577
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1573
    :cond_0
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 1599
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    .line 1598
    return-void
.end method

.method public setPwdChangeRequested(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 1591
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    .line 1590
    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1604
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    .line 1603
    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1608
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 1607
    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139b

    .line 1566
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1567
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1568
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1565
    :cond_0
    return-void
.end method

.method public setWifiAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1643
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    .line 1642
    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1639
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 1638
    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1624
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    .line 1623
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 5

    .prologue
    const/16 v4, 0x139e

    .line 1698
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1699
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    .line 1700
    .local v0, "curNumFailedAttempts":I
    iget v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1701
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt :  maxNumFailedAttemptForDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1702
    iget v3, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1702
    const-string/jumbo v3, " , curNumFailedAttempts = "

    .line 1701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeviceDisabledForMaxFailedAttempt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v1, :cond_0

    .line 1707
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1708
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1697
    .end local v0    # "curNumFailedAttempts":I
    :cond_0
    :goto_1
    return-void

    .line 1700
    .restart local v0    # "curNumFailedAttempts":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1711
    .end local v0    # "curNumFailedAttempts":I
    :cond_2
    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "MDM is not enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
