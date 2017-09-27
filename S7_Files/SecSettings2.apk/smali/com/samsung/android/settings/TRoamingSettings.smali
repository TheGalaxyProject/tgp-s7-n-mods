.class public Lcom/samsung/android/settings/TRoamingSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/TRoamingSettings$1;,
        Lcom/samsung/android/settings/TRoamingSettings$2;,
        Lcom/samsung/android/settings/TRoamingSettings$3;,
        Lcom/samsung/android/settings/TRoamingSettings$4;,
        Lcom/samsung/android/settings/TRoamingSettings$5;,
        Lcom/samsung/android/settings/TRoamingSettings$6;,
        Lcom/samsung/android/settings/TRoamingSettings$7;,
        Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mBackgroundData:Landroid/preference/SwitchPreference;

.field private mCustomerService:Landroid/preference/Preference;

.field private mCustomerServicekt:Landroid/preference/Preference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGuide:Landroid/preference/Preference;

.field private mHDVoiceRoaming:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJoinCancel:Landroid/preference/Preference;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMobileTRoaming:Landroid/preference/Preference;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRoamingAutoDial:Landroid/preference/Preference;

.field private mSelection:Landroid/preference/Preference;

.field private mUseDataRoaming:Landroid/preference/SwitchPreference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTERoaming:Landroid/preference/SwitchPreference;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/TRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRestrictBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 872
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$6;-><init>()V

    .line 871
    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 880
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$7;-><init>()V

    .line 879
    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 128
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    .line 157
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    .line 174
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$3;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 576
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$4;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 839
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$5;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private getNetworkStateAvailable()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 590
    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 591
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 592
    .local v2, "networkInfo_wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 593
    .local v1, "networkInfo_data":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 594
    .local v4, "networkState_wifi":Landroid/net/NetworkInfo$State;
    :goto_0
    if-nez v1, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 596
    .local v3, "networkState_mobile":Landroid/net/NetworkInfo$State;
    :goto_1
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWifistate : networkState_wifi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  networkState_mobile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_3

    .line 599
    :cond_0
    return v9

    .line 593
    .end local v3    # "networkState_mobile":Landroid/net/NetworkInfo$State;
    .end local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .restart local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .restart local v3    # "networkState_mobile":Landroid/net/NetworkInfo$State;
    goto :goto_1

    .line 601
    :cond_3
    return v8
.end method

.method private isInDomestic()Z
    .locals 4

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "bRetVal":Z
    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 374
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    const/4 v0, 0x1

    .line 378
    :cond_0
    return v0
.end method

.method private final isLTERoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_roaming_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 426
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLTERoamingEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v0

    .line 425
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private final isNetworkRegistered()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "rtsStatusValue":I
    const-string/jumbo v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "rilTemp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 403
    const-string/jumbo v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "rtsValues":[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "statusValue":[Ljava/lang/String;
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 406
    const-string/jumbo v4, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rtsStatusValue Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-eq v1, v8, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 409
    :cond_0
    return v8

    .line 411
    :cond_1
    return v7

    .line 414
    .end local v2    # "rtsValues":[Ljava/lang/String;
    .end local v3    # "statusValue":[Ljava/lang/String;
    :cond_2
    return v7
.end method

.method private final isRestrictBackgroundEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 432
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRestrictBackgroundEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v0

    .line 431
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private final isRoamingDataEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 420
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRoamingDataEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v0

    .line 419
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private updateCurrentRoaming()V
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 339
    const-string/jumbo v11, "key_roaming_current"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->removePreference(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 342
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "operatorName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isNetworkRegistered()Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 357
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "data_roaming"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "dataRoamingValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "lte_roaming_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, "lteRoamingValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_roaming_enabled"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 362
    .local v8, "volteRoamingValue":I
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming dataRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming lteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming volteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 366
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 367
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "hd_voice_roaming_enabled"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v9, :cond_4

    :goto_1
    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 368
    iget-object v9, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 337
    return-void

    .line 346
    .end local v0    # "dataRoamingValue":I
    .end local v1    # "lteRoamingValue":I
    .end local v8    # "volteRoamingValue":I
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 347
    move-object v3, v6

    .line 348
    .local v3, "operatorFullName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 349
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "operatorMCC":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "operatorMNC":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .end local v4    # "operatorMCC":Ljava/lang/String;
    .end local v5    # "operatorMNC":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v11, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v3    # "operatorFullName":Ljava/lang/String;
    .restart local v0    # "dataRoamingValue":I
    .restart local v1    # "lteRoamingValue":I
    .restart local v8    # "volteRoamingValue":I
    :cond_4
    move v9, v10

    .line 367
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->finish()V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 200
    const v1, 0x7f08012a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->addPreferencesFromResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 203
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "key_roaming_selection"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    .line 204
    const-string/jumbo v1, "key_roaming_use_data_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    .line 205
    const-string/jumbo v1, "key_roaming_use_lte_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    .line 206
    const-string/jumbo v1, "key_roaming_background_data"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    .line 207
    const-string/jumbo v1, "key_roaming_hd_voice_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    .line 208
    const-string/jumbo v1, "key_roaming_auto_dial"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    .line 209
    const-string/jumbo v1, "key_roaming_guide"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    .line 210
    const-string/jumbo v1, "key_roaming_join_cancel"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    .line 211
    const-string/jumbo v1, "key_roaming_mobile_t"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    .line 212
    const-string/jumbo v1, "key_roaming_customer_service"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    .line 213
    const-string/jumbo v1, "key_roaming_customer_service_kt"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    .line 215
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0aa4

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_b

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoDial()Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 247
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    .line 249
    if-eqz v1, :cond_8

    .line 251
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_8
    if-eqz p1, :cond_9

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "mUseDataRoaming"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 188
    :cond_9
    return-void

    .line 221
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0ac3

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 236
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_c

    .line 237
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 238
    :cond_c
    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    iput-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 311
    :cond_1
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .line 440
    check-cast v2, Ljava/lang/Boolean;

    .line 441
    .local v2, "value":Ljava/lang/Boolean;
    const-string/jumbo v5, "key_roaming_use_data_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 444
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "data_roaming"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :cond_0
    :goto_0
    return v4

    .line 447
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "i":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_roaming"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 453
    :cond_3
    const-string/jumbo v5, "key_roaming_use_lte_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 454
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseLTERoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-nez v5, :cond_5

    .line 456
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 462
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 464
    :cond_7
    const-string/jumbo v5, "key_roaming_background_data"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 465
    const-string/jumbo v3, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange: mBackgroundData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 468
    :cond_8
    const-string/jumbo v5, "key_roaming_hd_voice_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mHDVoiceRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 471
    const-string/jumbo v6, "hd_voice_roaming_enabled"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v4

    .line 470
    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 478
    if-nez p2, :cond_0

    .line 479
    const-string/jumbo v6, "TRoamingSettings"

    const-string/jumbo v7, "preference is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v10

    .line 482
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_1
    :goto_0
    return v10

    .line 485
    :catch_0
    move-exception v2

    .line 486
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 495
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto :goto_0

    .line 497
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.phone"

    .line 499
    const-string/jumbo v7, "com.android.phone.RoamingAutoDialSettings"

    .line 498
    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 502
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 503
    :catch_1
    move-exception v2

    .line 504
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 509
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 511
    .local v3, "guideIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 512
    :catch_2
    move-exception v2

    .line 513
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 515
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "guideIntent":Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 517
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 519
    .local v5, "joinCancelIntent":Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 520
    :catch_3
    move-exception v2

    .line 521
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getNetworkStateAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 525
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://m.troaming.co.kr"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    .restart local v5    # "joinCancelIntent":Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 528
    :catch_4
    move-exception v2

    .line 529
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 532
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto/16 :goto_0

    .line 534
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 535
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    .line 536
    const-string/jumbo v7, "tel"

    const-string/jumbo v8, "+82263439000"

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 535
    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    const-string/jumbo v6, "SKTRADDialOption"

    const-string/jumbo v7, "abroad"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    :try_start_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 541
    :catch_5
    move-exception v2

    .line 542
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 544
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 545
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b0ac4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 547
    const v6, 0x7f0b0ac5

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 548
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$8;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const v7, 0x7f0b0451

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$9;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$10;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$10;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 267
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "simState":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lte_roaming_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, "intFltr":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v2, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_0

    .line 286
    :cond_0
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 294
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    :cond_5
    const-string/jumbo v2, "TRoamingSettings"

    const-string/jumbo v3, "KKK onResume !isRoamingDataEnabled() || !isLTERoamingEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 304
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 305
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    const v3, 0x7f0b1ab7

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 306
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b0e90

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 265
    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 261
    const-string/jumbo v0, "mUseDataRoaming"

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 8
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 821
    move v1, p1

    .line 822
    .local v1, "rBackground":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 823
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b03c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 824
    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 825
    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 826
    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_powersaving_mode"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 827
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/TRoamingSettings$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/TRoamingSettings$11;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 836
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 820
    return-void

    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    move v3, v4

    .line 826
    goto :goto_0
.end method
