.class Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceWrapper"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private final mDlna:Lcom/samsung/android/allshare/Device;

.field private mIsOnlySupportsAudio:Z

.field private mIsSupportMirroring:Z

.field private mIsSupportTDLS:Z

.field private mWlanFrequency:I

.field private mWlanMacAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    .line 1720
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, "screenSharingInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->parseDeviceInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseDeviceInfo(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 1727
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseDeviceInfo value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1732
    .local v3, "set":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    array-length v7, v3

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v3, v6

    .line 1733
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v4, "wlanMacAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1734
    const/16 v4, 0xf

    const/16 v8, 0x20

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    .line 1732
    :cond_0
    :goto_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1735
    :cond_1
    const-string/jumbo v4, "WFDRole"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1737
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "array":[Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v9, :cond_0

    .line 1739
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v8, "PrimarySink"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v8, "Dual"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1763
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1764
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseDeviceInfo exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 1739
    goto :goto_2

    .line 1741
    .end local v0    # "array":[Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "supportTDLS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1743
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1744
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v9, :cond_0

    .line 1745
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v8, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    goto :goto_1

    .line 1747
    .end local v0    # "array":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "bssid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1748
    const/4 v4, 0x6

    const/16 v8, 0x17

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    goto :goto_1

    .line 1749
    :cond_6
    const-string/jumbo v4, "wlanFrequency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1751
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1752
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v9, :cond_0

    .line 1753
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanFrequency:I

    goto/16 :goto_1

    .line 1755
    .end local v0    # "array":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "vdProductType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1757
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1758
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v9, :cond_0

    .line 1759
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v8, "NETWORK_AUDIO"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v8, "SOUNDBAR"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsOnlySupportsAudio:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    move v4, v5

    goto :goto_3
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDLNA()Lcom/samsung/android/allshare/Device;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingP2pMacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1774
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.allshare.Device"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1775
    .local v1, "klass":Ljava/lang/Class;
    const-string/jumbo v3, "getScreenSharingP2pMacAddr"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1776
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1777
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1780
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getWlanFrequency()I
    .locals 1

    .prologue
    .line 1824
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanFrequency:I

    return v0
.end method

.method public getWlanMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlySupportsAudio()Z
    .locals 1

    .prologue
    .line 1808
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsOnlySupportsAudio:Z

    return v0
.end method

.method public isSupportMirroring()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z

    return v0
.end method

.method public isSupportTDLS()Z
    .locals 1

    .prologue
    .line 1812
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mDlna:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", wlanMacAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    const-string/jumbo v2, ", isSupportMirroring : "

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    const-string/jumbo v2, ", isSupportTDLS : "

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1832
    const-string/jumbo v2, ", bssid : "

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1832
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1833
    return-object v0
.end method
