.class public Lcom/samsung/android/settings/utils/Booster;
.super Ljava/lang/Object;
.source "Booster.java"


# instance fields
.field private mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuMinFreq:I

.field private mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mGpuMinFreq:I

.field private mLastBoosterDuration:J

.field private mLastBoosterTime:J

.field private mSupportedCPUFreqTable:[I

.field private mSupportedGPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 29
    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 34
    iput v0, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    .line 35
    iput v0, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    .line 37
    iput-wide v2, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    .line 39
    iput-wide v2, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/settings/utils/Booster;->prepareBooster()V

    .line 41
    return-void
.end method

.method private prepareBooster()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    .line 52
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    if-nez v1, :cond_0

    .line 53
    const-string/jumbo v1, "Booster"

    const-string/jumbo v2, "mSupportedCPUFreqTable is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    array-length v0, v1

    .line 58
    .local v0, "length":I
    if-le v0, v5, :cond_2

    .line 59
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    .line 65
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    if-lez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 68
    :cond_1
    const-string/jumbo v1, "Booster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCpuMinFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/utils/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 72
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    .line 75
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    if-nez v1, :cond_4

    .line 76
    return-void

    .line 60
    :cond_2
    if-lez v0, :cond_3

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedCPUFreqTable:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    goto :goto_0

    .line 63
    :cond_3
    iput v6, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    goto :goto_0

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    array-length v0, v1

    .line 80
    if-le v0, v5, :cond_6

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    .line 88
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    if-lez v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 91
    :cond_5
    const-string/jumbo v1, "Booster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGpuMinFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 82
    :cond_6
    if-lez v0, :cond_7

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/utils/Booster;->mSupportedGPUFreqTable:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    goto :goto_1

    .line 85
    :cond_7
    iput v6, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    goto :goto_1
.end method


# virtual methods
.method public start(I)V
    .locals 6
    .param p1, "ms"    # I

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "now":J
    iget-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    sub-long v2, v0, v4

    .line 98
    .local v2, "timeDiff":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterTime:J

    .line 102
    int-to-long v4, p1

    iput-wide v4, p0, Lcom/samsung/android/settings/utils/Booster;->mLastBoosterDuration:J

    .line 104
    iget v4, p0, Lcom/samsung/android/settings/utils/Booster;->mCpuMinFreq:I

    if-lez v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/samsung/android/settings/utils/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 107
    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/utils/Booster;->mGpuMinFreq:I

    if-lez v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/samsung/android/settings/utils/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 95
    :cond_2
    return-void
.end method
