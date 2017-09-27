.class public Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private bShowImsStatus:Z

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    return v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return p1
.end method

.method static synthetic -set1([B)[B
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOemData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)V
    .locals 0
    .param p1, "selectSim"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 200
    const-string/jumbo v1, "data_state"

    aput-object v1, v0, v3

    .line 201
    const-string/jumbo v1, "service_state"

    aput-object v1, v0, v4

    .line 202
    const-string/jumbo v1, "operator_name"

    aput-object v1, v0, v5

    .line 203
    const-string/jumbo v1, "roaming_state"

    aput-object v1, v0, v6

    .line 204
    const-string/jumbo v1, "user_name"

    aput-object v1, v0, v7

    .line 205
    const-string/jumbo v1, "network_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "latest_area_info"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "imei"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "imei_sv"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "prl_version"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "eri_version"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "min_number"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "meid_number"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "signal_strength"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "icc_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "sid_number"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "nid_number"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 199
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 231
    new-array v0, v7, [Ljava/lang/String;

    .line 232
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    .line 233
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v1, v0, v4

    .line 234
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    .line 235
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    .line 231
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 183
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "00000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "0000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "00000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "000000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    .line 192
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    .line 195
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 276
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    .line 291
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 293
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    .line 295
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    .line 339
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 425
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 1462
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1517
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    .line 1796
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 143
    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0b0521

    const/4 v8, -0x1

    .line 1413
    const-string/jumbo v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1414
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 1415
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1416
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1418
    .local v4, "ut":J
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_0

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 1419
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1430
    .local v3, "status":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1412
    return-void

    .line 1421
    .local v3, "status":Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1422
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0

    .line 1423
    .local v3, "status":Ljava/lang/String;
    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_2

    .line 1424
    const v6, 0x7f0b0523

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0

    .line 1426
    .local v3, "status":Ljava/lang/String;
    :cond_2
    const v6, 0x7f0b0520

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 4

    .prologue
    .line 1789
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1791
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1788
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 1454
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 1455
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1456
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 1458
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1861
    .local v1, "convertedStr":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1862
    .local v0, "charArray":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1864
    .local v3, "strLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    .line 1865
    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    .line 1867
    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1870
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "devID"    # Ljava/lang/String;

    .prologue
    .line 1548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1549
    .local v0, "len":I
    const/4 v1, 0x0

    .line 1552
    .local v1, "out":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1553
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1558
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object v1

    .line 1554
    .restart local v1    # "out":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1555
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "out":Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "esnno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 1568
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1570
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1572
    .local v0, "decESN":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1581
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1606
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1574
    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1577
    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1585
    :pswitch_2
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1588
    :pswitch_3
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1591
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1594
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1597
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1600
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1603
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1583
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "meidno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 1616
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1618
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    .local v0, "decMEID":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1650
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1675
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1622
    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1625
    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1628
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1631
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1634
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1637
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1640
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1643
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1646
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1654
    :pswitch_9
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1657
    :pswitch_a
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1660
    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1663
    :pswitch_c
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1666
    :pswitch_d
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1669
    :pswitch_e
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1672
    :pswitch_f
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1652
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1848
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1849
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1850
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "XAR"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    .line 1851
    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1855
    :cond_1
    :goto_0
    return-object v0

    .line 1852
    :cond_2
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1853
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1838
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1839
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "iccId":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1841
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    :cond_0
    return-object v0
.end method

.method private getMeidNumber(I)Ljava/lang/String;
    .locals 7
    .param p1, "selectSim"    # I

    .prologue
    .line 1064
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, p1

    .line 1065
    .local v3, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 1066
    .local v2, "meidNumber":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 1067
    const-string/jumbo v5, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    .line 1066
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1068
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "devId":Ljava/lang/String;
    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMeidNumber() => devId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    if-nez v0, :cond_1

    .line 1071
    const-string/jumbo v2, ""

    .line 1082
    .end local v0    # "devId":Ljava/lang/String;
    .end local v2    # "meidNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1073
    .restart local v0    # "devId":Ljava/lang/String;
    .restart local v2    # "meidNumber":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    .local v1, "meid":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Dec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nHex:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "meidNumber":Ljava/lang/String;
    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "KEY_MEID_NUMBER() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    .end local v0    # "devId":Ljava/lang/String;
    .end local v1    # "meid":Ljava/lang/StringBuilder;
    .local v2, "meidNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    .line 1080
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    .local v2, "meidNumber":Ljava/lang/String;
    goto :goto_0

    .line 1079
    .local v2, "meidNumber":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private getOemData()V
    .locals 6

    .prologue
    .line 471
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 472
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 476
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 477
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 478
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 484
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 481
    :goto_1
    return-void

    .line 486
    :catch_2
    move-exception v2

    .line 487
    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 484
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 482
    :goto_2
    throw v3

    .line 486
    :catch_3
    move-exception v2

    .line 487
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1087
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1088
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "opName":Ljava/lang/String;
    const-string/jumbo v2, "DCM"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :cond_0
    :goto_0
    return-object v0

    .line 1091
    :cond_1
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1092
    const-string/jumbo v0, "au"

    goto :goto_0

    .line 1093
    :cond_2
    const-string/jumbo v2, "TGY"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    :cond_3
    const-string/jumbo v2, "China Telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1095
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0526

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1096
    :cond_4
    const-string/jumbo v2, "CU GSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "CHN-CUGSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1097
    const-string/jumbo v2, "China Unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1096
    if-nez v2, :cond_5

    .line 1097
    const-string/jumbo v2, "CHN-UNICOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1096
    if-eqz v2, :cond_6

    .line 1098
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0527

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1099
    :cond_6
    const-string/jumbo v2, "CMCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CHINA MOBILE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1100
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0528

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1101
    :cond_8
    const-string/jumbo v2, "PCCW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "PCCW-HKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0529

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 368
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;

    invoke-direct {v0, p0, p1, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;II)V

    .line 394
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1046
    packed-switch p1, :pswitch_data_0

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1048
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1052
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1055
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1810
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1812
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_1

    .line 1817
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1824
    return v1

    .line 1819
    :pswitch_0
    return v2

    .line 1822
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1827
    :cond_1
    return v2

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 493
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 494
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 495
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 496
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 492
    :goto_0
    return-void

    .line 502
    :cond_0
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1446
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1447
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerForWfcRegistrationStatus(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 1503
    const-string/jumbo v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForWfcRegistrationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1016
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1014
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 1392
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1393
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 1394
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1395
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1391
    :cond_1
    return-void

    .line 1394
    :cond_2
    const/4 v0, 0x0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1385
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1380
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 445
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 449
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 450
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 451
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 452
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 453
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    if-eqz v1, :cond_0

    .line 459
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 443
    return-void

    .line 461
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 455
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    if-eqz v1, :cond_0

    .line 459
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 461
    :catch_2
    move-exception v2

    .line 462
    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 458
    if-eqz v1, :cond_1

    .line 459
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 456
    :cond_1
    :goto_1
    throw v4

    .line 461
    :catch_3
    move-exception v2

    .line 462
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Status"

    const-string/jumbo v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1036
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1040
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 1408
    const-string/jumbo v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1409
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0b0523

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1407
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1341
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1342
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1339
    return-void

    .line 1341
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1334
    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1332
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 1228
    if-eqz p1, :cond_0

    .line 1229
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    const v5, 0x7f0b104f

    .line 1175
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1176
    .local v2, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v1

    .line 1178
    .local v1, "state":I
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1195
    :goto_0
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :cond_0
    const-string/jumbo v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    return-void

    .line 1182
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1185
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1188
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b104e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1191
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b104d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1109
    iget v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1110
    .local v3, "subId":[I
    aget v5, v3, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1111
    .local v1, "phoneId":I
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    const-string/jumbo v5, "gsm.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "networkType":Ljava/lang/String;
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1116
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    .line 1117
    const-string/jumbo v5, "gsm.voice.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1116
    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, "voiceNetworkType":Ljava/lang/String;
    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1123
    :cond_0
    :goto_0
    const-string/jumbo v5, "CDMA-IS95A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "CDMA-IS95B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1124
    :cond_1
    const-string/jumbo v0, "CDMA 1x"

    .line 1166
    .end local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1171
    :cond_3
    const-string/jumbo v5, "network_type"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void

    .line 1120
    .restart local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_4
    move-object v0, v4

    .line 1121
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1125
    :cond_5
    const-string/jumbo v5, "EvDo-rev.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1126
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1127
    :cond_6
    const-string/jumbo v5, "EvDo-rev.A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1128
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1129
    :cond_7
    const-string/jumbo v5, "EvDo-rev.B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1130
    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    .line 1131
    :cond_8
    const-string/jumbo v5, "1xRTT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1132
    const-string/jumbo v0, "CDMA 1x"

    goto :goto_1

    .line 1133
    :cond_9
    const-string/jumbo v5, "UMTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1134
    const-string/jumbo v0, "WCDMA"

    goto/16 :goto_1

    .line 1135
    :cond_a
    const-string/jumbo v5, "HSDPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSUPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1136
    :cond_b
    const-string/jumbo v0, "HSPA"

    goto/16 :goto_1

    .line 1137
    :cond_c
    const-string/jumbo v5, "HSPAP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1138
    const-string/jumbo v0, "HSPA+"

    goto/16 :goto_1

    .line 1139
    :cond_d
    const-string/jumbo v5, "eHRPD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1140
    const-string/jumbo v0, "eHRPD"

    goto/16 :goto_1

    .line 1141
    :cond_e
    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1142
    const-string/jumbo v0, "LTE"

    goto/16 :goto_1

    .line 1143
    :cond_f
    const-string/jumbo v5, "GPRS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "EDGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "GSM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1144
    const-string/jumbo v5, "TD-SCDMA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1145
    const-string/jumbo v0, "TD-SCDMA"

    goto/16 :goto_1

    .line 1147
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    goto/16 :goto_1

    .line 1150
    .end local v4    # "voiceNetworkType":Ljava/lang/String;
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v2

    .line 1157
    .local v2, "state":I
    const-string/jumbo v5, "false"

    const-string/jumbo v6, "ro.ril.svlte1x"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1158
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 1159
    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1157
    if-eqz v5, :cond_2

    .line 1160
    const-string/jumbo v0, "1x RTT"

    goto/16 :goto_1

    .line 1162
    .end local v2    # "state":I
    :cond_12
    const-string/jumbo v5, "OMN"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "O2U"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "XEC"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1163
    :cond_13
    const-string/jumbo v5, "LTE"

    const-string/jumbo v6, "4G"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v5, 0x7f0b1049

    const v4, 0x7f0b1048

    .line 1203
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1204
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "display":Ljava/lang/String;
    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1209
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1210
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1211
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    :goto_0
    const-string/jumbo v2, "operator_name"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void

    .line 1213
    :cond_1
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1218
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_3
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStatus(I)V
    .locals 25
    .param p1, "selectSim"    # I

    .prologue
    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 677
    .local v4, "activity":Landroid/app/Activity;
    const/16 v17, 0x0

    .line 678
    .local v17, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    .line 680
    .local v11, "manager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 681
    :cond_0
    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    aget-object v8, v23, v22

    .line 682
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 681
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 685
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    aget-object v17, v22, p1

    .line 686
    .local v17, "selectPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    aget-object v11, v22, p1

    .line 690
    .local v11, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 692
    :cond_2
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 693
    :cond_3
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 703
    :goto_1
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 708
    :cond_4
    :goto_2
    const-string/jumbo v22, "min_number"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0026

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 711
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const v23, 0x7f0b1397

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(I)V

    .line 713
    :cond_5
    const-string/jumbo v22, "prl_version"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v22, "imei"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIMEI(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string/jumbo v22, "TFN"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 717
    :cond_6
    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 723
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 724
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 727
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_8

    .line 728
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 731
    :cond_8
    const-string/jumbo v22, "icc_id"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIccId(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 740
    .local v5, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_9

    .line 741
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v20

    .line 742
    .local v20, "sid":I
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v13

    .line 743
    .local v13, "nid":I
    const-string/jumbo v23, "sid_number"

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v23, "nid_number"

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v13    # "nid":I
    .end local v20    # "sid":I
    :cond_9
    :goto_7
    const-string/jumbo v22, "SPR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->connectToRilService()V

    .line 772
    :goto_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 773
    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 774
    .local v9, "mIMEI":Landroid/preference/Preference;
    if-eqz v9, :cond_a

    .line 775
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 776
    new-instance v22, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 802
    .end local v9    # "mIMEI":Landroid/preference/Preference;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 804
    const/16 v21, 0x0

    .local v21, "simSlotNum":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v23

    aput-object v23, v22, v21

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    aget-object v22, v22, v21

    .line 807
    const/16 v23, 0x141

    .line 806
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 804
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 695
    .end local v21    # "simSlotNum":I
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v12

    .line 696
    .local v12, "meidNumber":Ljava/lang/String;
    if-nez v12, :cond_c

    .line 697
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 699
    :cond_c
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 704
    .end local v12    # "meidNumber":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 705
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 719
    :cond_e
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 729
    :cond_f
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 727
    if-nez v22, :cond_8

    .line 735
    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 743
    .restart local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v13    # "nid":I
    .restart local v20    # "sid":I
    :cond_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 744
    :cond_11
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    .line 747
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v13    # "nid":I
    .end local v20    # "sid":I
    :cond_12
    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 754
    :cond_13
    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 757
    :cond_14
    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 763
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 764
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 765
    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 766
    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 767
    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 768
    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 813
    .restart local v21    # "simSlotNum":I
    :cond_15
    const-string/jumbo v22, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 814
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    .line 816
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 817
    const-string/jumbo v22, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 824
    .end local v11    # "manager":Landroid/telephony/TelephonyManager;
    .end local v17    # "selectPhone":Lcom/android/internal/telephony/Phone;
    .end local v21    # "simSlotNum":I
    :cond_17
    const-string/jumbo v22, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSysScopeStatus()V

    .line 831
    const-string/jumbo v22, "ril.serialnumber"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 832
    .local v10, "mRilSerial":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string/jumbo v22, "00000000000"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    :cond_18
    const-string/jumbo v18, "ro.serialno"

    .line 833
    .local v18, "serial":Ljava/lang/String;
    :goto_a
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 834
    .local v19, "serialNum":Ljava/lang/String;
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serial:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "KDI"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    .line 838
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "USC"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "MTR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "LRA"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "ACG"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 837
    if-eqz v22, :cond_1f

    .line 839
    :cond_19
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 845
    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 846
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v22

    const-string/jumbo v23, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 847
    .local v14, "ratedValue":Ljava/lang/String;
    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 849
    const-string/jumbo v22, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 851
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 852
    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_1a

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 855
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 859
    .end local v14    # "ratedValue":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v22, "DCM"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 860
    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 861
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 864
    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    .line 865
    const-string/jumbo v23, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    .line 864
    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 866
    const-string/jumbo v22, "ril.eri_ver_1"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "ERI_SysProp":Ljava/lang/String;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_20

    .line 869
    const-string/jumbo v22, "eri_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->createImsService(Landroid/content/Context;)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isShowImsStatus()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    .line 880
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Show IMS registration status : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isImsRegistered()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateImsStatus(Z)V

    .line 888
    :goto_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 889
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 890
    const-string/jumbo v22, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 895
    :cond_1c
    :try_start_0
    new-instance v16, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    .line 896
    .local v16, "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v15

    .line 897
    .local v15, "rlcState":Ljava/lang/String;
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "rlcState : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string/jumbo v22, "Normal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string/jumbo v22, "Locked"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    if-eqz v22, :cond_23

    .line 675
    .end local v15    # "rlcState":Ljava/lang/String;
    .end local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_1d
    :goto_e
    return-void

    .line 832
    .end local v18    # "serial":Ljava/lang/String;
    .end local v19    # "serialNum":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v18, "ril.serialnumber"

    goto/16 :goto_a

    .line 841
    .restart local v18    # "serial":Ljava/lang/String;
    .restart local v19    # "serialNum":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 871
    .restart local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_20
    const-string/jumbo v22, "eri_version"

    const-string/jumbo v23, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 874
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_21
    const-string/jumbo v22, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 884
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 885
    const-string/jumbo v22, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 899
    .restart local v15    # "rlcState":Ljava/lang/String;
    .restart local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :cond_23
    :try_start_1
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    .line 901
    .end local v15    # "rlcState":Ljava/lang/String;
    .end local v16    # "rlcm":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    :catch_0
    move-exception v6

    .line 902
    .local v6, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto/16 :goto_e

    .line 905
    .end local v6    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v7

    .line 906
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e
.end method


# virtual methods
.method createImsService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1888
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    .line 1890
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 1887
    :cond_0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 672
    const/16 v0, 0x2c

    return v0
.end method

.method isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1938
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1941
    .local v0, "regiInfo":[Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1942
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    const/4 v1, 0x1

    return v1

    .line 1946
    .end local v0    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    :cond_0
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return v3
.end method

.method isShowImsStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1951
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 1952
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "900"

    aput-object v2, v0, v3

    .line 1953
    .local v0, "fields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1954
    .local v1, "value":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1955
    const-string/jumbo v3, "1"

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1958
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 555
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 556
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "sim Id"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 557
    const-string/jumbo v10, "sim Id"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    .line 558
    const-string/jumbo v10, "Status"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mActivePhone : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    new-instance v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    .line 561
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    .line 562
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 563
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/PhoneStateListener;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 564
    const/4 v8, 0x0

    .local v8, "simSlotNum":I
    :goto_0
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_1

    .line 565
    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    aput-object v10, v11, v8

    .line 564
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 568
    :cond_1
    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    .line 569
    const-string/jumbo v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 571
    const v10, 0x7f08005d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->addPreferencesFromResource(I)V

    .line 572
    const-string/jumbo v10, "battery_level"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    .line 573
    const-string/jumbo v10, "battery_status"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    .line 574
    const-string/jumbo v10, "bt_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 575
    const-string/jumbo v10, "wifi_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    .line 576
    const-string/jumbo v10, "wimax_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 577
    const-string/jumbo v10, "wifi_ip_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    .line 580
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b1033

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 581
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b13a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    .line 583
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    .line 586
    const-string/jumbo v10, "VZW"

    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 587
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .local v7, "resetFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 590
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    .line 591
    const/4 v3, 0x0

    .line 594
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 598
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setFactoryResetDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 600
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 602
    .end local v4    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    if-eqz v3, :cond_2

    .line 606
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 619
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "resetFile":Ljava/io/File;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 626
    :cond_3
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/preference/Preference;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 627
    const/4 v8, 0x0

    :goto_4
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_9

    .line 628
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v11, "signal_strength"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    aput-object v11, v10, v8

    .line 627
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 604
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "resetFile":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_2

    .line 606
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 607
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 603
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 604
    :goto_5
    if-eqz v3, :cond_5

    .line 606
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 603
    :cond_5
    :goto_6
    throw v10

    .line 607
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 612
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string/jumbo v10, "factorydatareset"

    const v11, 0x7f0b007c

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 615
    .end local v7    # "resetFile":Ljava/io/File;
    :cond_7
    const-string/jumbo v10, "factorydatareset"

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 620
    :cond_8
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Lcom/android/internal/telephony/Phone;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 621
    const/4 v8, 0x0

    :goto_7
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_3

    .line 622
    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    aput-object v11, v10, v8

    .line 621
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 631
    :cond_9
    const-string/jumbo v10, "up_time"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    .line 632
    const-string/jumbo v10, "ethernet_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasBluetooth()Z

    move-result v10

    if-nez v10, :cond_a

    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 637
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    .line 640
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasWimax()Z

    move-result v10

    if-nez v10, :cond_b

    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 642
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 645
    :cond_b
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 646
    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_8
    if-ge v10, v12, :cond_c

    aget-object v9, v11, v10

    .line 647
    .local v9, "sintent":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 650
    .end local v9    # "sintent":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    .line 551
    return-void

    .line 603
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "resetFile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 600
    .local v3, "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 965
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 966
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 968
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 981
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v3, :cond_1

    .line 982
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 984
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 985
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 991
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 992
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 994
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 997
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v3, :cond_3

    .line 1005
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1007
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    return-void

    .line 970
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 971
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v3, :cond_5

    .line 972
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 973
    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 976
    :cond_5
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 977
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 998
    .end local v2    # "simSlotNum":I
    :catch_0
    move-exception v1

    .line 999
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 914
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 916
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 918
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    .line 920
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 940
    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    .line 939
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 941
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 943
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    .line 952
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 953
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    .line 956
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 957
    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 958
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 956
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 960
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    return-void

    .line 922
    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    .line 923
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    .line 924
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-nez v2, :cond_3

    .line 925
    new-instance v2, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 926
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 927
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 930
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 932
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 931
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 934
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v1, "getLatestIntent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 936
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 935
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setFactoryResetDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1874
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1875
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, "date_string":Ljava/lang/String;
    const-string/jumbo v4, "factorydatareset"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    return-void

    .line 1878
    .end local v1    # "date_string":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1880
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWimaxStatus()V

    .line 1401
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWifiStatus()V

    .line 1402
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setBtStatus()V

    .line 1403
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setIpAddressStatus()V

    .line 1399
    return-void
.end method

.method updateImsStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1928
    const/4 v0, 0x0

    .line 1929
    .local v0, "imsSummaryStrId":I
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1930
    if-eqz p1, :cond_0

    const v0, 0x7f0b0cbb

    .line 1934
    :goto_0
    const-string/jumbo v1, "ims_reg"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    return-void

    .line 1930
    :cond_0
    const v0, 0x7f0b0cbc

    goto :goto_0

    .line 1932
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0b051a

    goto :goto_0

    :cond_2
    const v0, 0x7f0b051b

    goto :goto_0
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "activePhone"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getHost()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1240
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not attached host is null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void

    .line 1244
    :cond_0
    const/4 v2, 0x0

    .line 1245
    .local v2, "preferenceStrength":Landroid/preference/Preference;
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSignalStrength() slotId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / activePhone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*** "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v8, v8, [Landroid/preference/Preference;

    iput-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    .line 1248
    const/4 v6, 0x0

    .end local v2    # "preferenceStrength":Landroid/preference/Preference;
    .local v6, "simSlotNum":I
    :goto_0
    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v6, v8, :cond_2

    .line 1249
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v9, "signal_strength"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1250
    if-ne p2, v6, :cond_1

    .line 1251
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v2, v8, v6

    .line 1248
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1255
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1256
    if-eqz v2, :cond_3

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1259
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    .line 1260
    .local v5, "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v4

    .line 1262
    .local v4, "signalAsu":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1263
    const v9, 0x7f0b1054

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1263
    const-string/jumbo v9, "   "

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1264
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1264
    const-string/jumbo v9, " "

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1265
    const v9, 0x7f0b1055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1233
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "signalAsu":I
    .end local v5    # "signalDbm":I
    :cond_3
    :goto_1
    return-void

    .line 1268
    :cond_4
    if-eqz v2, :cond_3

    .line 1270
    iget-boolean v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    if-eqz v8, :cond_5

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 1272
    return-void

    .line 1277
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1285
    .restart local v3    # "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v5

    .line 1286
    .restart local v5    # "signalDbm":I
    const/4 v8, -0x1

    if-ne v8, v5, :cond_6

    const/4 v5, 0x0

    .line 1288
    :cond_6
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v4

    .line 1289
    .restart local v4    # "signalAsu":I
    const-string/jumbo v8, "Combination"

    const-string/jumbo v9, "Strawberry"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1291
    const/4 v8, -0x1

    if-eq v8, v4, :cond_7

    const/16 v8, 0x63

    if-ne v8, v4, :cond_9

    .line 1292
    :cond_7
    :goto_2
    const/16 v5, -0x71

    .line 1293
    const/4 v4, 0x0

    .line 1307
    :cond_8
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1308
    const v9, 0x7f0b1054

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1308
    const-string/jumbo v9, "   "

    .line 1307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1309
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1309
    const-string/jumbo v9, " "

    .line 1307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1310
    const v9, 0x7f0b1055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1312
    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Status] updateSignalStrength : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1313
    const v10, 0x7f0b1054

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1313
    const-string/jumbo v10, "   "

    .line 1312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1314
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1314
    const-string/jumbo v10, " "

    .line 1312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1315
    const v10, 0x7f0b1055

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1312
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1291
    :cond_9
    const/16 v8, 0xff

    if-ne v8, v4, :cond_8

    goto/16 :goto_2

    .line 1296
    :cond_a
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 1297
    .local v7, "subId":[I
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1299
    .local v1, "phoneId":I
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v8, v8, p2

    .line 1300
    const-string/jumbo v8, "gsm.network.type"

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    .line 1299
    invoke-static {v1, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "networkType":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v8, v4, :cond_b

    const/16 v8, 0x63

    if-ne v8, v4, :cond_c

    .line 1302
    :cond_b
    :goto_4
    const/16 v5, -0x71

    .line 1303
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1301
    :cond_c
    const/16 v8, 0xff

    if-eq v8, v4, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1322
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1324
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1326
    const v3, 0x7f0b1054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1326
    const-string/jumbo v3, "   "

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1327
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1327
    const-string/jumbo v3, " "

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    const v3, 0x7f0b1055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1320
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 1436
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 1438
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1439
    const-wide/16 v2, 0x1

    .line 1442
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1434
    return-void
.end method
