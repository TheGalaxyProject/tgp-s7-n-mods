.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$1;,
        Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListPreference:Landroid/preference/Preference;

.field private mAverageUsed:Landroid/preference/Preference;

.field private mFree:Landroid/preference/Preference;

.field private mPerformance:Landroid/preference/Preference;

.field private mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

.field private mTotalMemory:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    .line 157
    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 63
    const-string/jumbo v1, "status_header"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/SecSummaryPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 65
    .local v0, "memColor":I
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 65
    invoke-virtual {v1, v0, v0, v2}, Lcom/samsung/android/settings/SecSummaryPreference;->setColors(III)V

    .line 68
    const-string/jumbo v1, "performance"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    .line 69
    const-string/jumbo v1, "total_memory"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    .line 70
    const-string/jumbo v1, "average_used"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    .line 71
    const-string/jumbo v1, "free"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    .line 72
    const-string/jumbo v1, "apps_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 120
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "transfer_stats"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string/jumbo v0, "duration_index"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 124
    const-class v0, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b1a8b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ProcessStatsSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 126
    return v6

    .line 128
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_0
    return v4
.end method

.method public refreshUi()V
    .locals 26

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 80
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v9

    .line 82
    .local v9, "memInfo":Lcom/android/settings/applications/ProcStatsData$MemInfo;
    iget-wide v0, v9, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    move-wide/from16 v18, v0

    .line 83
    .local v18, "usedRam":D
    iget-wide v14, v9, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 84
    .local v14, "totalRam":D
    iget-wide v6, v9, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 85
    .local v6, "freeRam":D
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v22, v0

    .line 86
    const/16 v24, 0x1

    .line 85
    invoke-static/range {v21 .. v24}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v20

    .line 87
    .local v20, "usedResult":Landroid/text/format/Formatter$BytesResult;
    double-to-long v0, v14

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 88
    .local v16, "totalString":Ljava/lang/String;
    double-to-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "freeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c009d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    .line 91
    .local v11, "memStatesStr":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v10

    .line 92
    .local v10, "memState":I
    if-ltz v10, :cond_0

    array-length v0, v11

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 93
    aget-object v12, v11, v10

    .line 97
    .local v12, "memString":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/SecSummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/SecSummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 99
    add-double v22, v6, v18

    div-double v22, v18, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    .line 100
    .local v17, "usedRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v22, v0

    double-to-long v0, v14

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v21, Lcom/android/settings/applications/ProcessStatsSummary;->sDurationLabels:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    move/from16 v22, v0

    aget v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "durationString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v13

    .line 108
    .local v13, "numApps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 109
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    aput-object v5, v23, v24

    const v24, 0x7f130021

    .line 108
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 95
    .end local v5    # "durationString":Ljava/lang/String;
    .end local v12    # "memString":Ljava/lang/CharSequence;
    .end local v13    # "numApps":I
    .end local v17    # "usedRatio":F
    :cond_0
    array-length v0, v11

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v12, v11, v21

    .restart local v12    # "memString":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method
