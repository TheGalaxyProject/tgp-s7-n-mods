.class public Lcom/android/settings/fuelgauge/BatteryCellParser;
.super Ljava/lang/Object;
.source "BatteryCellParser.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# instance fields
.field private final mData:Landroid/util/SparseIntArray;

.field private mLastTime:J

.field private mLastValue:I

.field private mLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    .line 24
    return-void
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .locals 4

    .prologue
    .line 91
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 92
    .local v1, "ret":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public getPeriod()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    return-wide v0
.end method

.method protected getValue(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 34
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v1, v1, 0x1c0

    shr-int/lit8 v1, v1, 0x6

    .line 36
    const/4 v2, 0x3

    .line 34
    if-ne v1, v2, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    .local v0, "bin":I
    :goto_0
    return v0

    .line 38
    .end local v0    # "bin":I
    :cond_0
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 39
    const/4 v0, 0x1

    .restart local v0    # "bin":I
    goto :goto_0

    .line 41
    .end local v0    # "bin":I
    :cond_1
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v1, v1, 0x38

    shr-int/lit8 v0, v1, 0x3

    .line 43
    .restart local v0    # "bin":I
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataGap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 64
    :cond_0
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 55
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getValue(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    .line 56
    .local v0, "value":I
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eq v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 60
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    .line 54
    return-void
.end method

.method public onParsingDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 72
    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 50
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    .line 49
    return-void
.end method
