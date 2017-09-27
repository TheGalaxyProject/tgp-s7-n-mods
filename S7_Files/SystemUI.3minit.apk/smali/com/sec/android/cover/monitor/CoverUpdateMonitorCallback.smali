.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "CoverUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryCritical()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onBatteryLow()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onChangeCoverBackground()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 0
    .param p1, "covered"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public onCoverDelayedTimout(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 70
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onDisasterViewUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onFloatingMsgHided()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onFloatingMsgShowed()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onHomeCityChanged()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 0
    .param p1, "penInserted"    # Z

    .prologue
    .line 47
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

.method public onPickupCommonDay()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onPickupFestivalDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public onPowerConnectionUpdate(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 26
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 29
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 38
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 0
    .param p1, "isNetworkRoaming"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onVolumeChanged(II)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "val"    # I

    .prologue
    .line 59
    return-void
.end method
