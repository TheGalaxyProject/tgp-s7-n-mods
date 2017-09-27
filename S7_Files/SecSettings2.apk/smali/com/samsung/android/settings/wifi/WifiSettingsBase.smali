.class public abstract Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field public static goToWebPageHTTPResponse:I

.field public static goToWebPageLinkClicked:Z

.field public static goToWebPageLinkViewed:Z

.field public static mWpsInProgress:Z


# instance fields
.field private helpMenuCheck:Z

.field protected mAddPreference:Landroid/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBackgroundResId:I

.field private mBgThread:Landroid/os/HandlerThread;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCheckHttpResponseHandler:Landroid/os/Handler;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mCricketClickListener:Landroid/view/View$OnClickListener;

.field private mCricketManagerHeader:Landroid/view/View;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGateway:Ljava/lang/String;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field protected mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerDialog:Z

.field protected mInSecPickerActivity:Z

.field protected mInSetupWizardWifiScreen:Z

.field protected mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsShouldSendResult:Z

.field private mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mP2pSupported:Z

.field private mRequestConnectionByUser:Z

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field protected mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field protected mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    .line 220
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 221
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 222
    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 186
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 189
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 196
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 204
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 217
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1199
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1213
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1212
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1247
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1402
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1809
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 186
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 196
    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 207
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 217
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1199
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1213
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1212
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1247
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1402
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1809
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 234
    return-void
.end method

.method private WifiAdvancetts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x7f0b0c98

    const v3, 0x7f0b0228

    .line 1518
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1519
    return-void

    .line 1521
    :cond_0
    const-string/jumbo v0, ""

    .line 1522
    .local v0, "WiFiAdvanceMenuTts":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1524
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1517
    :cond_1
    return-void

    .line 1527
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1528
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1528
    const-string/jumbo v2, " "

    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1529
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0c79

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WifiDirectTts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v3, 0x7f0b125b

    const v4, 0x7f0b0228

    .line 1497
    const-string/jumbo v1, ""

    .line 1498
    .local v1, "wiFiDirectMenuTts":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1500
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1501
    if-eqz p1, :cond_2

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1503
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1512
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1496
    :cond_1
    :goto_1
    return-void

    .line 1506
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1507
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1506
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1507
    const-string/jumbo v3, " "

    .line 1506
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1508
    const v3, 0x7f0b0c79

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1506
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1513
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private forceScrollToTopOfList()V
    .locals 4

    .prologue
    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1191
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1189
    :goto_0
    return-void

    .line 1194
    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 721
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 722
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_0

    .line 723
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pickedApInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 724
    const-string/jumbo v4, ", bssid: "

    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 724
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 725
    const-string/jumbo v4, ", WifiInfo.bssid: "

    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 725
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 729
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "ssid"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    const-string/jumbo v2, "bssid"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    :goto_0
    const-string/jumbo v2, "security"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string/jumbo v2, "frequency"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    return-object v1

    .line 733
    :cond_1
    const-string/jumbo v2, "bssid"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isCricketManagerSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1773
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v0, :cond_0

    .line 1774
    return v2

    .line 1776
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_2

    .line 1777
    :cond_1
    return v2

    .line 1779
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1780
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "There is no package for Cricket Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    return v2

    .line 1783
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileApON()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1797
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1798
    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return v3

    .line 1801
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1802
    .local v0, "mWifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1803
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1804
    :cond_2
    return v3
.end method

.method private isUsimUseable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1744
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1745
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 1746
    .local v2, "simSate":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 1748
    .local v1, "isAirplaneMode":Z
    :goto_0
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_3

    .line 1753
    :cond_0
    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1754
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1769
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 1746
    .end local v1    # "isAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto :goto_0

    .line 1749
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0c4e

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1750
    return v6

    .line 1756
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "45000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1757
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0c50

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1758
    return v6

    .line 1760
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1761
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1763
    .restart local v0    # "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1764
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0c4f

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1765
    return v6
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1384
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1385
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v1, :cond_1

    .line 1386
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1382
    :goto_0
    return-void

    .line 1388
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1389
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_0
.end method

.method protected addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 589
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 590
    .local v0, "wifiIsEnabled":Z
    const v1, 0x7f0b125d

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 593
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    if-eqz v1, :cond_0

    .line 594
    const v1, 0x7f0b1892

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 595
    const v2, 0x7f020146

    .line 594
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 596
    const/4 v2, 0x1

    .line 594
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v1, :cond_4

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 604
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 607
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 588
    :cond_4
    return-void
.end method

.method protected abstract changeNextButtonState(Z)V
.end method

.method protected checkContextMenuUiVisibility()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public checkGoToWebPageHTTPResponse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 650
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 651
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 654
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go to Webpage: gateway addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 695
    .local v1, "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 648
    .end local v1    # "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method protected checkRestrictionAndShowEmptyView()Z
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    const v0, 0x7f0b1265

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1421
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onDataSetChanged()V

    .line 1419
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_0

    .line 1423
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 838
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 840
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 836
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 831
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 832
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 829
    return-void
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "rssi"    # I

    .prologue
    .line 1787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1788
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1786
    return-void
.end method

.method protected createAddNetworkPreference()V
    .locals 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0201a9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0b1254

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 425
    :cond_0
    return-void
.end method

.method protected createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 418
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 419
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    return-object v1

    .line 421
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected disconnect()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 843
    return-void
.end method

.method protected abstract dismissDialog(I)V
.end method

.method protected findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1286
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 1287
    .local v0, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1288
    .local v1, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    return-object v1

    .line 1292
    .end local v1    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_1
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find configured AP, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v3, 0x0

    return-object v3
.end method

.method protected forget()V
    .locals 2

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1305
    return-void
.end method

.method protected forget(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 821
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0

    .line 1314
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 818
    const/16 v0, 0x67

    return v0
.end method

.method protected getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v2, 0x0

    .line 801
    if-nez p1, :cond_0

    .line 802
    return-object v2

    .line 804
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiDialogArgs - apInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 808
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_2

    .line 809
    const-string/jumbo v2, "args_linkproperties"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 812
    .end local v1    # "linkProperties":Landroid/net/LinkProperties;
    :cond_2
    const-string/jumbo v2, "manage_network"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    return-object v0
.end method

.method protected initFailListener()V
    .locals 1

    .prologue
    .line 1438
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1455
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1470
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1437
    return-void
.end method

.method protected isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 8
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1702
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1703
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1704
    return v7

    .line 1705
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1706
    .local v3, "ssid":Ljava/lang/String;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1707
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v1, :cond_6

    .line 1708
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 1709
    .local v2, "method":I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 1710
    const-string/jumbo v4, "T wifi zone_secure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1711
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1712
    return v6

    .line 1714
    :cond_1
    const-string/jumbo v4, "ollehWiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1715
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1716
    return v6

    .line 1718
    :cond_2
    const-string/jumbo v4, "olleh GiGA WiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1719
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1720
    return v6

    .line 1722
    :cond_3
    const-string/jumbo v4, "U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1723
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1724
    return v6

    .line 1726
    :cond_4
    const-string/jumbo v4, "U+zone_5G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1727
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1728
    return v6

    .line 1730
    :cond_5
    const-string/jumbo v4, "5G_U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1731
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1732
    return v6

    .line 1738
    .end local v2    # "method":I
    :cond_6
    return v7
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1429
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 1428
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .prologue
    .line 1001
    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 19
    .param p1, "updatedScanResult"    # Z

    .prologue
    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1023
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1024
    return-void

    .line 1026
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v18

    .line 1028
    .local v18, "wifiState":I
    packed-switch v18, :pswitch_data_0

    .line 1020
    :cond_2
    :goto_0
    return-void

    .line 1032
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v11

    .line 1034
    .local v11, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/16 v16, 0x0

    .line 1035
    .local v16, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_5

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V

    .line 1042
    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :goto_1
    const/4 v12, 0x0

    .line 1043
    .local v12, "hasAvailableAccessPoints":Z
    const/4 v13, 0x0

    .line 1044
    .local v13, "index":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1046
    .local v3, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1047
    :cond_4
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v15

    .line 1048
    .local v15, "key":Ljava/lang/String;
    const/4 v12, 0x1

    .line 1050
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    .line 1049
    check-cast v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1051
    .local v4, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v4, :cond_6

    .line 1052
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    invoke-virtual {v4, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move v13, v14

    .line 1053
    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_2

    .line 1039
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v12    # "hasAvailableAccessPoints":Z
    .end local v13    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .restart local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    goto :goto_1

    .line 1056
    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v12    # "hasAvailableAccessPoints":Z
    .restart local v13    # "index":I
    .restart local v15    # "key":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v6, 0x0

    move-object/from16 v7, p0

    .line 1056
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1058
    .local v2, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v2, v15}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 1059
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    invoke-virtual {v2, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1062
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    if-ne v5, v6, :cond_7

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1064
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 1066
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_8

    .line 1067
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_15

    .line 1072
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_2

    .line 1069
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 1076
    .end local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v14    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .restart local v13    # "index":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_c

    .line 1077
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    .line 1078
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v5, :cond_a

    .line 1079
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    .line 1084
    :cond_a
    :goto_4
    if-nez v12, :cond_10

    .line 1085
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_d

    .line 1086
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1090
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_f

    .line 1091
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1093
    .local v17, "pref":Landroid/preference/Preference;
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_e

    .line 1095
    const v5, 0x7f0b0c3b

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1099
    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1110
    .end local v17    # "pref":Landroid/preference/Preference;
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_b

    .line 1111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1129
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 1130
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    goto/16 :goto_0

    .line 1082
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->removeCachedPrefs(Landroid/preference/PreferenceGroup;)V

    goto :goto_4

    .line 1088
    :cond_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_5

    .line 1097
    .restart local v17    # "pref":Landroid/preference/Preference;
    :cond_e
    const v5, 0x7f0b002a

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 1102
    .end local v17    # "pref":Landroid/preference/Preference;
    :cond_f
    new-instance v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 1102
    const/4 v5, 0x0

    .line 1103
    const/4 v8, 0x0

    move-object/from16 v9, p0

    .line 1102
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1104
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    .line 1105
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1106
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_7

    .line 1115
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_12

    .line 1116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    invoke-virtual {v5, v13}, Landroid/preference/Preference;->setOrder(I)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v13, v14

    .line 1125
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :cond_11
    :goto_9
    if-eqz p1, :cond_b

    .line 1126
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_8

    .line 1118
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_11

    .line 1119
    if-eqz p1, :cond_13

    .line 1120
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_9

    .line 1122
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_9

    .line 1135
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v12    # "hasAvailableAccessPoints":Z
    .end local v13    # "index":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_14

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1140
    :goto_a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 1138
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    goto :goto_a

    .line 1144
    :pswitch_2
    const v5, 0x7f0b123d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1145
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 1149
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 1150
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .restart local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v12    # "hasAvailableAccessPoints":Z
    .restart local v14    # "index":I
    .restart local v15    # "key":Ljava/lang/String;
    :cond_15
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_2

    .line 1028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 309
    const/16 v20, 0x1

    .line 310
    .local v20, "showRefreshLayout":Z
    const/4 v7, 0x1

    .line 311
    .local v7, "showScanItems":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v2, :cond_6

    .line 312
    const/16 v20, 0x0

    .line 313
    const/4 v7, 0x0

    .line 314
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    .line 318
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    .line 324
    const-string/jumbo v2, "wifip2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initFailListener()V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 332
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 333
    const-string/jumbo v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 334
    const-string/jumbo v2, "wifi_start_connect_security"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const-string/jumbo v2, "wifi_start_connect_security"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    .line 346
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v2, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    .line 351
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 352
    .local v18, "listview":Landroid/widget/ListView;
    if-eqz v18, :cond_3

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->registerForContextMenu(Landroid/view/View;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 355
    .local v19, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a068b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 356
    const v3, 0x7f0a0467

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 355
    add-int/2addr v2, v3

    .line 357
    const v3, 0x7f0a045c

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 355
    add-int/2addr v2, v3

    .line 358
    const v3, 0x7f0a0688

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 355
    add-int v12, v2, v3

    .line 359
    .local v12, "divider_inset_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 360
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 361
    .local v8, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v2, :cond_3

    .line 367
    const v2, 0x7f020524

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 371
    .end local v8    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v12    # "divider_inset_size":I
    .end local v19    # "resources":Landroid/content/res/Resources;
    :cond_3
    const-string/jumbo v2, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isCricketManagerSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 374
    .local v16, "cricketInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040343

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 381
    .end local v16    # "cricketInflater":Landroid/view/LayoutInflater;
    :cond_4
    const-string/jumbo v2, "WeChatWiFi"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 382
    invoke-static {}, Lcom/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v21

    .line 383
    .local v21, "weChatWifiManager":Lcom/android/settingslib/wifi/WeChatWifiManager;
    if-eqz v21, :cond_5

    .line 384
    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/WeChatWifiManager;->init()V

    .line 306
    .end local v21    # "weChatWifiManager":Lcom/android/settingslib/wifi/WeChatWifiManager;
    :cond_5
    return-void

    .line 315
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "listview":Landroid/widget/ListView;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v2, :cond_0

    .line 316
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 337
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    .line 339
    const-string/jumbo v2, "extra_location_services"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const-string/jumbo v2, "extra_location_services"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    goto/16 :goto_1

    .line 363
    .restart local v12    # "divider_inset_size":I
    .restart local v18    # "listview":Landroid/widget/ListView;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :cond_8
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 364
    .restart local v8    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public onAddNetworkPressed()V
    .locals 2

    .prologue
    .line 1376
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1379
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 1375
    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isMultipleChanged"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v4, 0x0

    .line 1157
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1158
    const-string/jumbo v3, ", isMultipleChanged = "

    .line 1157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    const-string/jumbo v3, ", mRequestConnectionByUser = "

    .line 1157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 1157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_0
    if-nez p1, :cond_2

    return-void

    .line 1157
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1161
    :cond_2
    if-eqz p2, :cond_3

    return-void

    .line 1163
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    if-eqz v1, :cond_4

    .line 1164
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v1, :cond_5

    .line 1165
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_4
    :goto_1
    return-void

    .line 1166
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_6

    .line 1167
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1169
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1170
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1171
    const/4 v2, 0x3

    .line 1170
    if-eq v1, v2, :cond_7

    .line 1172
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1173
    const/4 v2, 0x7

    .line 1172
    if-ne v1, v2, :cond_4

    .line 1174
    :cond_7
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_8

    .line 1175
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 1176
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0cb9

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1178
    :cond_8
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "WifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    if-eqz v1, :cond_a

    .line 1180
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1181
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 1183
    :cond_a
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 949
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConnectedChanged: isConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 951
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 953
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_4

    .line 954
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 955
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 957
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 958
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 959
    .local v1, "networkId":I
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEC PICKER from location, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 962
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 963
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "matches - return picked AP & finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 966
    return-void

    .line 968
    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "not maches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "networkId":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v3, :cond_5

    .line 973
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "onConnectedChanged : isConnected() : mInPickerDialog : Finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 975
    return-void

    .line 979
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 980
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v3, :cond_6

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 982
    return-void

    .line 987
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 988
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 993
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->changeNextButtonState(Z)V

    .line 948
    return-void

    .line 990
    :cond_7
    sput v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "WifiSettingsBase"

    const/16 v6, 0xa

    invoke-direct {v3, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    .line 243
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 245
    sput-boolean v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 246
    sput-boolean v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 247
    sput v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 249
    const/4 v2, 0x1

    .line 250
    .local v2, "useListAnimationFeature":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v3, "manage_network"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    .line 254
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v3, :cond_1

    .line 255
    const/4 v2, 0x0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v3, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    .line 258
    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiSetupActivity;

    if-eqz v3, :cond_2

    .line 261
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 262
    const/4 v2, 0x0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    .line 266
    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 267
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->isSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 268
    new-instance v3, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 277
    .local v1, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 282
    .end local v1    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_3
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 239
    return-void

    :cond_4
    move v3, v4

    .line 258
    goto :goto_0

    .line 271
    :cond_5
    const v3, 0x7f080158

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addPreferencesFromResource(I)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createAddNetworkPreference()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100028

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 634
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 577
    :cond_0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 579
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v0, :cond_3

    .line 582
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 573
    return-void

    .line 580
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addOptionsMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCricketManagerClicked()V
    .locals 5

    .prologue
    .line 1394
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_0
    return-void

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 296
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    if-eqz v1, :cond_0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertBigdataLog(ILjava/lang/String;)V

    .line 300
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->closeChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 302
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    .line 294
    return-void

    .line 297
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroyView()V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 390
    :cond_1
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1434
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    .line 1433
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 618
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 630
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 620
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    .line 621
    return v2

    .line 623
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiConfigSettings()V

    .line 624
    return v2

    .line 626
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiHelpScreen()V

    .line 627
    return v2

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0b125b

    const/4 v2, 0x0

    .line 1538
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1540
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1539
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1537
    :goto_0
    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1546
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1545
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1551
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1552
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 1551
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 550
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    .line 551
    sput-boolean v4, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 553
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    .line 557
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 559
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 560
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 561
    .local v0, "isScreenOn":Z
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_2

    .line 569
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 549
    return-void

    .line 562
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 564
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 435
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    .line 438
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->resetPeriodicScanTime()V

    .line 440
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_0

    .line 441
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 443
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isSharedDeviceKeyguardOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 452
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 453
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 454
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x4a

    iput v5, v3, Landroid/os/Message;->what:I

    .line 456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "enable"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    const-string/jumbo v5, "lock"

    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_2

    .line 462
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    if-eqz v5, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 467
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 468
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v5, :cond_a

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 470
    const v5, 0x7f0b1238

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateActionBar()V

    .line 480
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    :goto_0
    const-string/jumbo v5, "KTT"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_b

    const/4 v4, 0x1

    .line 482
    .local v4, "skipAutoConnection":Z
    :goto_1
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz v4, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    .line 490
    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    .line 510
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "skipAutoConnection":Z
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v5, :cond_c

    .line 516
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 517
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 520
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :cond_6
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 534
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 535
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 538
    :cond_8
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAccessPointsChanged(Z)V

    .line 540
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v5, :cond_9

    .line 541
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 545
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 434
    return-void

    .line 475
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_a
    const v5, 0x7f0b0cab

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 481
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "skipAutoConnection":Z
    goto/16 :goto_1

    .line 525
    .end local v4    # "skipAutoConnection":Z
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 526
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 529
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScanStateChange(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1009
    if-ne p1, v0, :cond_0

    .line 1010
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1008
    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1488
    if-eqz p1, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x1080763

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStart()V

    .line 404
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 407
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 402
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 887
    packed-switch p1, :pswitch_data_0

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 889
    :pswitch_0
    const v1, 0x7f0b123c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 890
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 893
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 902
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 903
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 906
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 907
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_0

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 896
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 897
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_1

    .line 910
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v1, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 912
    return-void

    .line 916
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->dismissDialog(I)V

    .line 917
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 918
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 919
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 921
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 922
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 923
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 925
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 926
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 929
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 930
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v1, :cond_6

    .line 931
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 932
    return-void

    .line 936
    :cond_6
    const-string/jumbo v1, "WeChatWiFi"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    invoke-static {}, Lcom/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v0

    .line 938
    .local v0, "weChatWifiManager":Lcom/android/settingslib/wifi/WeChatWifiManager;
    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WeChatWifiManager;->init()V

    goto/16 :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 825
    return-void
.end method

.method protected sendPickedAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 701
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v1, :cond_2

    .line 703
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 705
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 707
    return v3

    .line 711
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 712
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    .line 717
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 713
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v1, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 715
    return v3
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1317
    return-void
.end method

.method protected setOffMessage()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1322
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1323
    return-void

    .line 1326
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 1327
    .local v2, "emptyTextView":Landroid/widget/TextView;
    if-nez v2, :cond_1

    .line 1328
    return-void

    .line 1331
    :cond_1
    const v6, 0x7f0b1264

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1336
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1338
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "wifi_scan_always_enabled"

    .line 1337
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1340
    .local v4, "wifiScanningMode":Z
    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v6, :cond_4

    .line 1343
    :cond_2
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1364
    :goto_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1365
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_5

    .line 1366
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1367
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    .line 1321
    :goto_2
    return-void

    .end local v4    # "wifiScanningMode":Z
    :cond_3
    move v4, v5

    .line 1337
    goto :goto_0

    .line 1346
    .restart local v4    # "wifiScanningMode":Z
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1348
    const-string/jumbo v6, "\n\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const v6, 0x7f0b124a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1350
    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-static {v2, v1, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1

    .line 1369
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method

.method protected abstract setProgressBarVisible(Z)V
.end method

.method protected setSecBssidWhitelist(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 11
    .param p1, "candidateAccessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 854
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 855
    :cond_0
    return-void

    .line 857
    :cond_1
    const-string/jumbo v8, "iptime"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 858
    const-string/jumbo v8, "iptime5G"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 857
    if-eqz v8, :cond_5

    .line 859
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v8

    if-nez v8, :cond_5

    .line 860
    const-string/jumbo v1, ""

    .line 862
    .local v1, "bssid":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 863
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 864
    .local v2, "count":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "result$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 865
    .local v5, "result":Landroid/net/wifi/ScanResult;
    const/16 v8, 0x64

    if-le v2, v8, :cond_6

    .line 872
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "data":Ljava/lang/String;
    const-string/jumbo v8, "WifiSettingsBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSecBssidWhitelist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 875
    .local v4, "msg":Landroid/os/Message;
    const/16 v8, 0x52

    iput v8, v4, Landroid/os/Message;->what:I

    .line 876
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 877
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v8, "BSSID"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 853
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "result$iterator":Ljava/util/Iterator;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    return-void

    .line 867
    .restart local v1    # "bssid":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v5    # "result":Landroid/net/wifi/ScanResult;
    .restart local v6    # "result$iterator":Ljava/util/Iterator;
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_6
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 868
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected abstract showDialogForModify()V
.end method

.method protected abstract showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected abstract showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected startScan()V
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 849
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    .line 847
    return-void
.end method

.method protected startScanningSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b07cb

    const/4 v2, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 755
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 756
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 754
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 752
    :goto_0
    return-void

    .line 758
    :cond_0
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 759
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 758
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiAdvancedScreen()V
    .locals 10

    .prologue
    const v3, 0x7f0b0c98

    const/4 v2, 0x0

    .line 741
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 743
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 744
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 742
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 740
    :goto_0
    return-void

    .line 746
    :cond_0
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 747
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 746
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiConfigSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b12b0

    const/4 v2, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 767
    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 768
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 766
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 764
    :goto_0
    return-void

    .line 770
    :cond_0
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 771
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 770
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public startWifiHelpScreen()V
    .locals 7

    .prologue
    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 779
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "WifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onHelpMenuPressed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 775
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 781
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 782
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "wifi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 794
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 795
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 789
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_3
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 790
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "wi_fi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 1297
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1298
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    .line 1299
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1300
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1296
    :cond_0
    return-void
.end method

.method public updateActionBar()V
    .locals 12

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1558
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1560
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const v10, 0x800015

    invoke-direct {v6, v8, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1561
    .local v6, "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040347

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1562
    .local v5, "mCustomLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1563
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1107dc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    return-void

    .line 1564
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1565
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1566
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1568
    :cond_1
    const v8, 0x7f1107dc

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1570
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1575
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 1577
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1578
    .local v7, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11600cb

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1582
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 1581
    .local v3, "curFontScale":F
    const v8, 0x3f99999a    # 1.2f

    .line 1584
    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    .line 1581
    const v3, 0x3f99999a    # 1.2f

    .line 1588
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1580
    const/high16 v9, 0x41700000    # 15.0f

    .line 1588
    mul-float/2addr v9, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1590
    iget v8, v7, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_c

    const/4 v4, 0x1

    .line 1591
    .local v4, "isThemeDeviceDefaultFamily":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 1592
    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    const/4 v9, 0x0

    .line 1593
    const v10, 0x10102d8

    const/4 v11, 0x0

    .line 1592
    invoke-virtual {v1, v9, v8, v10, v11}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1594
    .local v2, "av":Landroid/content/res/TypedArray;
    const/16 v8, 0xd

    .line 1595
    const v9, 0x108075d

    .line 1594
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1596
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1597
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "show_button_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 1598
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    .line 1606
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_4
    :goto_2
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1607
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1640
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1642
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1643
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11600cb

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1647
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 1646
    .restart local v3    # "curFontScale":F
    const v8, 0x3f99999a    # 1.2f

    .line 1649
    cmpl-float v8, v3, v8

    if-lez v8, :cond_6

    .line 1646
    const v3, 0x3f99999a    # 1.2f

    .line 1653
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1645
    const/high16 v9, 0x41700000    # 15.0f

    .line 1653
    mul-float/2addr v9, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1654
    iget v8, v7, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_e

    const/4 v4, 0x1

    .line 1655
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 1656
    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    const/4 v9, 0x0

    .line 1657
    const v10, 0x10102d8

    const/4 v11, 0x0

    .line 1656
    invoke-virtual {v1, v9, v8, v10, v11}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1658
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    const/16 v8, 0xd

    .line 1659
    const v9, 0x108075d

    .line 1658
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1660
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1661
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "show_button_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 1662
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const v9, 0x1080763

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1667
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_7
    :goto_4
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1668
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1677
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1684
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 1685
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    .line 1686
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1687
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1688
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1689
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1556
    :cond_a
    :goto_5
    return-void

    .line 1571
    :cond_b
    const v8, 0x7f1107dd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1572
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1590
    .restart local v3    # "curFontScale":F
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1601
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_d
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_2

    .line 1654
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1664
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 1678
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 1679
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1680
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1681
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_5

    .line 1690
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1691
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1692
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1693
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1694
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_5
.end method
