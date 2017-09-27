.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 2
    .param p1, "provider"    # Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    .param p2, "label"    # I
    .param p3, "groupId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "group":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v1, 0x7f110171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryActiveView;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    .line 114
    return-void

    .line 116
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 10

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 94
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    .line 96
    .local v0, "info":Lcom/android/settingslib/BatteryInfo;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110175

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/graph/UsageView;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 98
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 99
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 97
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 100
    const v2, 0x7f110173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f110174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166e

    const v4, 0x7f11017d

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166f

    const v4, 0x7f11017c

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b1670

    const v4, 0x7f110179

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b1672

    .line 107
    const v4, 0x7f110178

    .line 106
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b1671

    const v4, 0x7f110177

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const v3, 0x7f0b1673

    const v4, 0x7f11017a

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b1674

    const v4, 0x7f11017b

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const v3, 0x7f0b1675

    const v4, 0x7f110176

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 93
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "stats"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "histFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "broadcast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 60
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 61
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 64
    .local v0, "accentColor":I
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 65
    const/high16 v4, 0x80000

    .line 64
    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 66
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 67
    const/high16 v4, 0x100000

    .line 66
    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 68
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 69
    const/high16 v4, 0x20000000

    .line 68
    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 70
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 71
    const/high16 v4, 0x8000000

    .line 70
    invoke-direct {v3, v0, v6, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 72
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 73
    const/high16 v4, 0x200000

    .line 72
    invoke-direct {v3, v0, v6, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 74
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryWifiParser;

    invoke-direct {v3, v0}, Lcom/android/settings/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    .line 75
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 76
    const/high16 v4, -0x80000000

    .line 75
    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 77
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/BatteryCellParser;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    .line 78
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    .line 88
    return-void
.end method
