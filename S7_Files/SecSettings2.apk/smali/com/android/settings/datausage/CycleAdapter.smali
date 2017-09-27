.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;,
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p4, "isHeader"    # Z

    .prologue
    .line 37
    if-eqz p4, :cond_0

    const v0, 0x7f0400ef

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 41
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 42
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 36
    return-void

    .line 38
    :cond_0
    const v0, 0x7f0400a5

    goto :goto_0
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 5
    .param p1, "target"    # Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .prologue
    const/4 v4, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    .line 53
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 55
    .local v2, "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 56
    return v1

    .line 53
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 60
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_1
    return v4
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 28
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "chartData"    # Lcom/android/settingslib/net/ChartData;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v26

    .line 70
    check-cast v26, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 72
    .local v26, "previousItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 75
    .local v11, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 77
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 78
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 79
    .local v20, "historyEnd":J
    if-eqz p2, :cond_0

    .line 80
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 81
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 85
    .local v24, "now":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-eqz v4, :cond_1

    cmp-long v4, v22, v24

    if-lez v4, :cond_2

    :cond_1
    move-wide/from16 v22, v24

    .line 86
    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-eqz v4, :cond_3

    cmp-long v4, v20, v24

    if-lez v4, :cond_4

    :cond_3
    const-wide/16 v4, 0x1

    add-long v20, v24, v4

    .line 88
    :cond_4
    const/16 v18, 0x0

    .line 89
    .local v18, "hasCycles":Z
    if-eqz p1, :cond_8

    .line 91
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 94
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_8

    .line 95
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 98
    .local v6, "cycleStart":J
    if-eqz p2, :cond_7

    .line 99
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 100
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_6

    const/16 v19, 0x1

    .line 105
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v19, "includeCycle":Z
    :goto_1
    if-eqz v19, :cond_5

    .line 106
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 107
    const/16 v18, 0x1

    .line 109
    :cond_5
    move-wide v8, v6

    goto :goto_0

    .line 100
    .end local v19    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 102
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v19    # "includeCycle":Z
    :cond_7
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 113
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    .end local v19    # "includeCycle":Z
    :cond_8
    if-nez v18, :cond_c

    .line 115
    move-wide/from16 v8, v20

    .line 116
    .restart local v8    # "cycleEnd":J
    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_c

    .line 117
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 120
    .restart local v6    # "cycleStart":J
    if-eqz p2, :cond_b

    .line 121
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 122
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_a

    const/16 v19, 0x1

    .line 127
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v19    # "includeCycle":Z
    :goto_3
    if-eqz v19, :cond_9

    .line 128
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 130
    :cond_9
    move-wide v8, v6

    goto :goto_2

    .line 122
    .end local v19    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "includeCycle":Z
    goto :goto_3

    .line 124
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v19    # "includeCycle":Z
    :cond_b
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_3

    .line 135
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    .end local v19    # "includeCycle":Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v15

    .line 137
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4, v15}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 142
    .local v27, "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 144
    const/4 v4, 0x0

    return v4

    .line 147
    .end local v15    # "position":I
    .end local v27    # "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_d
    const/4 v4, 0x1

    return v4
.end method
