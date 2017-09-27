.class Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSdkMonitor"
.end annotation


# instance fields
.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 589
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    .line 567
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 568
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 569
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 570
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 571
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 572
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 573
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 574
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 575
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 576
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 577
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    .line 578
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 579
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 580
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 581
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 582
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 583
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    .line 584
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 585
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 587
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 590
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->registerCallback()V

    .line 589
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 594
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v1

    .line 596
    .local v1, "privateCustomDeviceManager":Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    if-eqz v1, :cond_0

    .line 599
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    .line 593
    :goto_0
    return-void

    .line 601
    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    .line 602
    const-string/jumbo v3, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    .line 601
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerSystemUICallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "stringItems":[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 758
    .local v1, "stringItem":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 759
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    .end local v1    # "stringItem":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 835
    return v1

    .line 838
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x4

    .line 782
    const/4 v1, 0x4

    .line 781
    if-eq v0, v1, :cond_0

    .line 783
    const/4 v0, 0x0

    return v0

    .line 786
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 843
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 844
    return v1

    .line 847
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method public isEmergencyCallButtonEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 852
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 853
    return v1

    .line 856
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 907
    const/4 v0, 0x1

    return v0

    .line 910
    :cond_0
    return v1
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 870
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 871
    return v1

    .line 874
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 880
    return v1

    .line 883
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 888
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 889
    return v1

    .line 892
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 861
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 862
    return v1

    .line 865
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 897
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 898
    return v1

    .line 901
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x2

    .line 728
    const/4 v1, 0x2

    .line 727
    if-eq v0, v1, :cond_0

    .line 729
    const/4 v0, 0x0

    return v0

    .line 732
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez v0, :cond_0

    .line 748
    return v1

    .line 750
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSFinderEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 737
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    .line 739
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_0
    return v1
.end method

.method public isSafetyWarningDialogEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 936
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 937
    return v1

    .line 940
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 915
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 916
    const/4 v0, 0x1

    return v0

    .line 919
    :cond_0
    return v1
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .prologue
    const/16 v1, 0x139a

    .line 682
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 683
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 681
    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 709
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 707
    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 688
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    .line 689
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    .line 687
    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1392

    .line 610
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    .line 611
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 609
    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1393

    .line 618
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    .line 619
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    const/16 v1, 0x139f

    .line 634
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    .line 635
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 636
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 633
    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1394

    .line 626
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    .line 627
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1395

    .line 642
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    .line 643
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x1396

    .line 650
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 651
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 649
    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 657
    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139b

    .line 718
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 719
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 717
    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    const/16 v1, 0x1399

    .line 674
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    .line 675
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    .line 694
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 692
    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "width"    # I

    .prologue
    const/16 v1, 0x1397

    .line 662
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 664
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 665
    iput p2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 666
    iput p3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 667
    iput p4, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 668
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    :cond_2
    return-void

    .line 662
    :cond_3
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_1

    .line 663
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_2

    goto :goto_0
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    .line 699
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 697
    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 703
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 704
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 702
    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 714
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 712
    :cond_0
    return-void
.end method
