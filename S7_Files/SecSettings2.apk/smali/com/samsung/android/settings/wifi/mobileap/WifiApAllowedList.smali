.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z


# instance fields
.field private final ADD_TO_ADAPTER:I

.field private final DELETE_ONE_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private isEnabledShowBtnBg:Z

.field private isLand:Z

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mAllSelectionMode:I

.field private mAllowAll:Z

.field private mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

.field private mAllowedListContainer:Landroid/widget/ListView;

.field private mBubbleLandscape:Landroid/widget/RelativeLayout;

.field private mBubblePortrait:Landroid/widget/RelativeLayout;

.field private mCheckBoxMarginLeft:I

.field private mCheckBoxMarginRight:I

.field private mCheckBoxWidthForDeleteAnimation:I

.field private mClickedPos:I

.field private mCount:Landroid/widget/TextView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

.field private mDialogType:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDragSelectedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsReset:Z

.field private mIsTablet:Z

.field private mIsZeroSelected:Z

.field private mMultiSelectionMode:Z

.field private mPrevMAC:Ljava/lang/String;

.field private mPrevName:Ljava/lang/String;

.field private mProgressCircle:Landroid/widget/ProgressBar;

.field private mSPenSelect:Z

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSelectAllFrame:Landroid/widget/FrameLayout;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchPref:Landroid/widget/LinearLayout;

.field private mSwitchPrefListener:Landroid/view/View$OnClickListener;

.field private mWifiApDeviceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private oneItemDeleteAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->handleWifiApState(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->insertLog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mWLDialog"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .param p3, "pos"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const-string/jumbo v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->ADD_TO_ADAPTER:I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->DELETE_ONE_ITEM:I

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 148
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 156
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    .line 158
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    .line 160
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 171
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 172
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 104
    return-void
.end method

.method private changeActionBar()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 565
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setCustomActionBar()V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 564
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 575
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 576
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private changeAllowPolicy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    .line 482
    :cond_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_0
.end method

.method private changeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 552
    :cond_1
    return-void
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 433
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 434
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 436
    .local v1, "num":I
    const-string/jumbo v2, "WifiApAllowedList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 438
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    if-lez v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDisconnectDialog()V

    .line 432
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 497
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 498
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 499
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 500
    .local v0, "mRvfMode":I
    return v0
.end method

.method private handleWifiApState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1011
    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiApState.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    packed-switch p1, :pswitch_data_0

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1010
    :goto_1
    return-void

    .line 1015
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1019
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1022
    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1030
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1045
    :pswitch_3
    const-string/jumbo v0, "WifiApAllowedList"

    const-string/jumbo v1, "WIFI_AP_STATE_FAILED case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 616
    .local v6, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 617
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 618
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 619
    const v1, 0x7f0b0d47

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 620
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 623
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 624
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 614
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    return-void
.end method

.method private initSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v1, :cond_1

    .line 419
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private insertLog()V
    .locals 4

    .prologue
    .line 406
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 407
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHOM"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v3, "extra"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ALL"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 405
    return-void

    .line 410
    :cond_0
    const-string/jumbo v2, "ONLY"

    goto :goto_0
.end method

.method private isSupportSpen()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 393
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v2, 0x1

    return v2

    .line 397
    :cond_0
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v4

    .line 401
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false - context null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v4
.end method

.method private refreshAdapter(I)V
    .locals 4
    .param p1, "option"    # I

    .prologue
    const/4 v3, 0x1

    .line 538
    if-ne p1, v3, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeScreen()V

    .line 540
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    .line 541
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 542
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 543
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v0

    .line 547
    .local v0, "toDelete":[Ljava/lang/Boolean;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    .line 505
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 506
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 507
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 509
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 503
    return-void
.end method

.method private setCustomActionBar()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 582
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 583
    .local v6, "actionBar":Landroid/app/ActionBar;
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v1, :cond_3

    .line 584
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 588
    :goto_0
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 589
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 590
    const-string/jumbo v1, ""

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 591
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 594
    .local v7, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v7, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 596
    .end local v7    # "parent":Landroid/widget/Toolbar;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 599
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v1, v4, v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a045e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 604
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0450

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 603
    add-int v2, v1, v4

    .line 605
    .local v2, "divider_inset_size":I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 606
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 581
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v2    # "divider_inset_size":I
    :cond_2
    return-void

    .line 586
    :cond_3
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method private showDisconnectDialog()V
    .locals 4

    .prologue
    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0d7f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0d84

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b0450

    .line 448
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 457
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b1105

    .line 448
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 468
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 448
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 446
    return-void
.end method

.method private showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "mWLDialog"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .param p3, "pos"    # I

    .prologue
    .line 1003
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 1004
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    .line 1005
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    .line 1006
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    .line 1007
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 1002
    return-void
.end method

.method private showFadeOutAnimation(Z)V
    .locals 10
    .param p1, "isLand"    # Z

    .prologue
    const-wide/16 v8, 0x5dc

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 674
    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFadeOutAnimation.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-nez p1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 682
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 678
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 673
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 699
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 695
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private updateActionBarCount(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 973
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "toDisplay":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 976
    if-nez p1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    const v2, 0x7f0b108c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 978
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 979
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 981
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 982
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 999
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 972
    return-void

    .line 984
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 986
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 987
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_3

    .line 988
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 989
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 990
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 992
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 994
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 996
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 997
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 950
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 951
    .local v1, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 957
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 967
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 968
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "Updated device successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return v5

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 953
    return v4

    .line 958
    :cond_3
    invoke-virtual {v1, p2, p1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v0

    .line 962
    .local v0, "ret":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 963
    return v4
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .param p1, "isLand"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 664
    :cond_0
    if-eqz p1, :cond_1

    .line 665
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 513
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v6, :cond_1

    .line 514
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 515
    .local v2, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 516
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v1, :cond_2

    .line 517
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 519
    .local v3, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .local v0, "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    .end local v0    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v3    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    .line 512
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_1
    :goto_1
    return-void

    .line 524
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 525
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 526
    const-string/jumbo v4, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 528
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 529
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 531
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showFadeOutAnimation(Z)V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 524
    goto :goto_2
.end method


# virtual methods
.method public deleteFromListAdapter([Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "myArr"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 738
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 739
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v0, "b":Landroid/os/Bundle;
    array-length v8, p1

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 742
    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 743
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    .line 744
    .local v3, "temp":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 745
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 747
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 748
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 749
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v8, v6, :cond_0

    .line 750
    const/4 v8, 0x4

    iput v8, v2, Landroid/os/Message;->what:I

    .line 751
    const-string/jumbo v8, "mac"

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 756
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 741
    .end local v3    # "temp":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 759
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    .line 760
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 761
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->clearList()V

    .line 762
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 763
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 765
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 737
    return-void

    :cond_4
    move v6, v7

    .line 762
    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f11072f

    const v10, 0x7f11072e

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 191
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 192
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 193
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "show_button_background"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 196
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f020412

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 201
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040322

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 202
    .local v4, "view":Landroid/widget/LinearLayout;
    const v5, 0x7f110731

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 203
    const v5, 0x7f110732

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 204
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    .line 205
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    .line 206
    const v5, 0x7f110730

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    .line 207
    const v5, 0x7f11072b

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    .line 208
    const v5, 0x7f11072d

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    .line 209
    const v5, 0x7f11072c

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    .line 211
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 213
    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 214
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 215
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 218
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isSupportSpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 224
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "currentView":Landroid/view/View;
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2    # "currentView":Landroid/view/View;
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 276
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 278
    const-string/jumbo v5, "device_list_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

    .line 280
    const v5, 0x7f040326

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 281
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0b0d47

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 282
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 283
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f11073e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 284
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110740

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 285
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f11073f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    .line 286
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110742

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    .line 291
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    .line 294
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 336
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 350
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    .line 356
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initSwitch()V

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "attr":Landroid/util/AttributeSet;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/settings/R$styleable;->AllowedListItemView:[I

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 366
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/16 v6, 0x4d

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    .line 367
    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    .line 368
    const/4 v5, 0x2

    const/16 v6, 0x18

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/widget/LinearLayout;
    :cond_5
    move v5, v7

    .line 194
    goto/16 :goto_0

    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "view":Landroid/widget/LinearLayout;
    :cond_6
    move v6, v7

    .line 359
    goto :goto_1

    .line 369
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    :catchall_0
    move-exception v5

    .line 370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    throw v5
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    .line 891
    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "mac":Ljava/lang/String;
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    .line 893
    .local v4, "name":Ljava/lang/String;
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    if-ne v6, v7, :cond_1

    .line 894
    packed-switch p2, :pswitch_data_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 896
    :pswitch_0
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 897
    .local v5, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 899
    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .local v1, "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 901
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    .line 903
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 904
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x4d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 906
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "feature"

    const-string/jumbo v7, "MHAD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string/jumbo v6, "extra"

    const-string/jumbo v7, "ADD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 909
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 910
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    .line 913
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 916
    :pswitch_4
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 925
    .end local v5    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 926
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 938
    :pswitch_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setName(Ljava/lang/String;)V

    .line 939
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setMac(Ljava/lang/String;)V

    .line 940
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    .line 941
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    .line 928
    :pswitch_6
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 929
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .restart local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 931
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 932
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    .line 934
    .end local v1    # "dInfo":Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
    :cond_2
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    .line 935
    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto/16 :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 897
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 926
    :pswitch_data_2
    .packed-switch -0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 714
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 715
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 725
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 713
    return-void

    :cond_0
    move v0, v1

    .line 715
    goto :goto_0

    .line 717
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 183
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 180
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/high16 v4, 0x1040000

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 816
    if-ne p1, v0, :cond_0

    .line 817
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 818
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 819
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    .line 820
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 821
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    .local v6, "macWarnDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    .line 822
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    const v1, 0x7f0b0d86

    .line 822
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 825
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v2, 0x7f0b0428

    .line 822
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 830
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 822
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 835
    .end local v6    # "macWarnDialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 836
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 837
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 838
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    .line 839
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 840
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 841
    .local v7, "oneItemDeleteDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0b0d87

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 842
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v1, 0x7f0b179e

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 848
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v7, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    .line 854
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 856
    .end local v7    # "oneItemDeleteDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    return-object v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    const v0, 0x7f0b179e

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 635
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 636
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_4

    .line 644
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_2

    .line 645
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v0, :cond_5

    .line 646
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 647
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 653
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_3

    .line 654
    const/4 v0, 0x2

    const v1, 0x7f0b0429

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 655
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 657
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 629
    return-void

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 650
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 770
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    .line 771
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 811
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 773
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_3

    .line 774
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v4, :cond_2

    .line 780
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 781
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 782
    return v7

    :cond_1
    move v4, v3

    .line 773
    goto :goto_0

    .line 775
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v1

    .line 776
    .local v1, "toDelete":[Ljava/lang/Boolean;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    .line 777
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    .line 778
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 791
    .end local v1    # "toDelete":[Ljava/lang/Boolean;
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 792
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    .line 794
    :cond_3
    return v7

    .line 784
    :cond_4
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    .line 785
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    .line 786
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    .line 787
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    .line 788
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    goto :goto_1

    .line 796
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-nez v4, :cond_8

    .line 797
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 809
    :cond_6
    :goto_2
    return v7

    .line 798
    :cond_7
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    .line 800
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v4, v6, :cond_b

    .line 801
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_9
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 802
    :cond_a
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    .line 805
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v3, 0x7f0b0d85

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 807
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 886
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 885
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 879
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 880
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 878
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 377
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    return-void
.end method

.method public reloadWhiteList()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 861
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 862
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 863
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;
    .param p3, "startTimeMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 1063
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "SelectAll CheckBox Animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1065
    const/4 v0, 0x0

    .line 1069
    .local v0, "fromX":I
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    .line 1070
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1071
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1072
    invoke-virtual {v1, p3, p4}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 1073
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1074
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1062
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/ListView;J)V
    .locals 6
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "startTimeMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 1078
    const/4 v0, 0x0

    .line 1082
    .local v0, "fromX":I
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setTransitionGroup(Z)V

    .line 1084
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1085
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1086
    invoke-virtual {v1, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 1087
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1089
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1077
    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 868
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 869
    .local v3, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#ff"

    const-string/jumbo v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "color":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<font color="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 872
    const-string/jumbo v7, "</font>"

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 872
    aput-object p2, v5, v8

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 871
    const v6, 0x7f0b0d41

    .line 870
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "msgAdd":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 874
    .local v2, "toastAdd":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 867
    return-void
.end method
