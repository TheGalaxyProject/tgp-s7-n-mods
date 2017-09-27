.class public Lcom/android/settings/wfd/Wfd_Certification;
.super Ljava/lang/Object;
.source "Wfd_Certification.java"


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplaySettings:Lcom/android/settings/wfd/WifiDisplaySettings;

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/Wfd_Certification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wfd/Wfd_Certification;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wfd/Wfd_Certification;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wfd/Wfd_Certification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListen:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/wfd/Wfd_Certification;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListenChannel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/wfd/Wfd_Certification;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mOperatingChannel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/wfd/Wfd_Certification;)Lcom/android/settings/wfd/WifiDisplaySettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplaySettings:Lcom/android/settings/wfd/WifiDisplaySettings;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/wfd/Wfd_Certification;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/wfd/Wfd_Certification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/wfd/Wfd_Certification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/wfd/Wfd_Certification;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListenChannel:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/wfd/Wfd_Certification;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mOperatingChannel:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/wfd/Wfd_Certification;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wfd/Wfd_Certification;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/Wfd_Certification;->setListenMode(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wfd/Wfd_Certification;II)V
    .locals 0
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/Wfd_Certification;->setWifiP2pChannels(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wfd/Wfd_Certification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/Wfd_Certification;->startAutoGO()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wfd/Wfd_Certification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/Wfd_Certification;->stopAutoGO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p3, "wifiDisplaySettings"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    .line 68
    const-string/jumbo v0, "Wfd_Certification"

    const-string/jumbo v1, "Wfd_Certification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/settings/wfd/Wfd_Certification;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 73
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 74
    iput-object p3, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplaySettings:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 67
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 286
    const-string/jumbo v0, "Wfd_Certification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting listen mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/Wfd_Certification$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/Wfd_Certification$9;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 284
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 306
    const-string/jumbo v0, "Wfd_Certification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting wifi p2p channel: lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 309
    new-instance v2, Lcom/android/settings/wfd/Wfd_Certification$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/Wfd_Certification$10;-><init>(Lcom/android/settings/wfd/Wfd_Certification;)V

    .line 308
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 304
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 248
    const-string/jumbo v0, "Wfd_Certification"

    const-string/jumbo v1, "Starting Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/Wfd_Certification$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/Wfd_Certification$7;-><init>(Lcom/android/settings/wfd/Wfd_Certification;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 246
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 267
    const-string/jumbo v0, "Wfd_Certification"

    const-string/jumbo v1, "Stopping Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/Wfd_Certification$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/Wfd_Certification$8;-><init>(Lcom/android/settings/wfd/Wfd_Certification;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 265
    return-void
.end method


# virtual methods
.method public buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 88
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 89
    new-instance v9, Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 90
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f0b1228

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 94
    :goto_0
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 97
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 98
    new-instance v6, Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 99
    .local v6, "p":Landroid/preference/Preference;
    const v9, 0x7f0b1229

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 100
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 105
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/android/settings/wfd/Wfd_Certification$1;

    iget-object v11, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11}, Lcom/android/settings/wfd/Wfd_Certification$1;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    .end local v6    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/Wfd_Certification$2;

    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v9}, Lcom/android/settings/wfd/Wfd_Certification$2;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    .line 150
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0b122a

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 151
    iget-boolean v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListen:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    new-instance v0, Lcom/android/settings/wfd/Wfd_Certification$3;

    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v9}, Lcom/android/settings/wfd/Wfd_Certification$3;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    .line 167
    .restart local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0b122b

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 168
    iget-boolean v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 172
    new-instance v3, Lcom/android/settings/wfd/Wfd_Certification$4;

    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/Wfd_Certification$4;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    .line 185
    .local v3, "lp":Landroid/preference/ListPreference;
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 186
    const-string/jumbo v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    .line 185
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    .line 187
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Default"

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const-string/jumbo v9, "PBC"

    const/4 v10, 0x1

    aput-object v9, v7, v10

    const-string/jumbo v9, "KEYPAD"

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const-string/jumbo v9, "DISPLAY"

    const/4 v10, 0x3

    aput-object v9, v7, v10

    .line 188
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    .line 189
    const-string/jumbo v9, "4"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 190
    const-string/jumbo v9, "0"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 191
    const-string/jumbo v9, "2"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 192
    const-string/jumbo v9, "1"

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 193
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f0b122e

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 194
    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    new-instance v3, Lcom/android/settings/wfd/Wfd_Certification$5;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/Wfd_Certification$5;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    .line 213
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Auto"

    const/4 v10, 0x0

    aput-object v9, v1, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v1, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v1, v10

    .line 214
    .local v1, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v9, "0"

    const/4 v10, 0x0

    aput-object v9, v2, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v2, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v2, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v2, v10

    .line 215
    .local v2, "lcValues":[Ljava/lang/String;
    const v9, 0x7f0b122f

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 216
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/Wfd_Certification;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    new-instance v3, Lcom/android/settings/wfd/Wfd_Certification$6;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/Wfd_Certification$6;-><init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V

    .line 235
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Auto"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    const-string/jumbo v9, "36"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    .line 236
    .local v4, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v9, "0"

    const/4 v10, 0x0

    aput-object v9, v5, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v5, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v5, v10

    const-string/jumbo v9, "36"

    const/4 v10, 0x4

    aput-object v9, v5, v10

    .line 237
    .local v5, "ocValues":[Ljava/lang/String;
    const v9, 0x7f0b1230

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 238
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/Wfd_Certification;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    return-void

    .line 92
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "lcEntries":[Ljava/lang/String;
    .end local v2    # "lcValues":[Ljava/lang/String;
    .end local v3    # "lp":Landroid/preference/ListPreference;
    .end local v4    # "ocEntries":[Ljava/lang/String;
    .end local v5    # "ocValues":[Ljava/lang/String;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wfd/Wfd_Certification;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method public getCertificationModeOn()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayCertificationOn:Z

    return v0
.end method

.method public updateCertificationMode()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWifiDisplayCertificationOn:Z

    .line 83
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    .line 83
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/Wfd_Certification;->mWpsConfig:I

    .line 79
    return-void
.end method
