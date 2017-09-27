.class Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalAutoBrightness"
.end annotation


# instance fields
.field private final BASIS_LUX:F

.field private final SIZE_DEFAULT_LIST:I

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field private mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->BASIS_LUX:F

    .line 1818
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->SIZE_DEFAULT_LIST:I

    .line 1824
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->init()V

    .line 1823
    return-void
.end method

.method private addSubOffsetPointsIfNeededLocked(I)V
    .locals 5
    .param p1, "addedIndex"    # I

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    .line 2117
    const/4 v0, 0x1

    .line 2118
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->checkReversePointsByUsingAutoBrightnessTableValue(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 2118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2120
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2122
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V

    .line 2137
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    .line 2138
    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 4-[CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_2
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FIF)I
    .locals 7
    .param p1, "lux"    # F
    .param p2, "cd"    # I
    .param p3, "offset"    # F

    .prologue
    .line 1871
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    .line 1872
    .local v0, "index":I
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    .line 1876
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1877
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :goto_0
    return v0

    .line 1878
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    .line 1879
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1880
    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-change : ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1882
    :cond_1
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x1

    invoke-direct {v2, v4, p1, p3, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 1885
    .local v2, "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1886
    .local v1, "nextOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v4, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_2

    .line 1887
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1890
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1891
    .local v3, "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v4, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_3

    .line 1892
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1894
    add-int/lit8 v0, v0, -0x1

    .line 1898
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1899
    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[PAB] 1-add : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkReversePointsByUsingAutoBrightnessTableValue(I)I
    .locals 25
    .param p1, "addedIndex"    # I

    .prologue
    .line 2010
    const/4 v8, 0x0

    .line 2014
    .local v8, "changedCount":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    .local v20, "reverseScanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 2016
    .local v9, "defaultTableLux":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 2017
    .local v10, "defaultTableValue":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2020
    .local v17, "notStableOffsetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_0

    .line 2021
    aget v21, v9, v11

    const/16 v22, 0x2710

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 2028
    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    .line 2029
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v12

    .line 2030
    .local v12, "indexForAdd":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 2031
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    cmpl-float v21, v22, v21

    if-nez v21, :cond_2

    .line 2032
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2028
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2024
    .end local v12    # "indexForAdd":I
    :cond_1
    new-instance v19, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    aget v22, v9, v11

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aget v23, v9, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v23

    const/16 v24, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2025
    .local v19, "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2034
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v12    # "indexForAdd":I
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 2040
    .end local v12    # "indexForAdd":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 2041
    const-string/jumbo v21, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[PAB] Index ERROR : addedIndex = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " size = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return v8

    .line 2044
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    move/from16 v21, v0

    add-float v7, v22, v21

    .line 2045
    .local v7, "addedValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2046
    .local v6, "addedLux":F
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    :goto_3
    if-ltz v11, :cond_a

    .line 2047
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    .line 2048
    .local v15, "loopOrgCd":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2049
    .local v14, "loopOffset":F
    add-float v16, v15, v14

    .line 2050
    .local v16, "loopValue":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2052
    .local v13, "loopLux":F
    cmpl-float v21, v16, v7

    if-ltz v21, :cond_6

    .line 2053
    const/16 v21, 0x0

    cmpl-float v21, v13, v21

    if-nez v21, :cond_7

    const/16 v18, 0x0

    .line 2054
    .local v18, "offsetType":I
    :goto_4
    new-instance v19, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    sub-float v22, v7, v15

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2055
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2056
    .local v5, "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-eq v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    .line 2057
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2065
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 2046
    .end local v5    # "addIndex":I
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 2053
    :cond_7
    const/16 v18, 0x2

    .restart local v18    # "offsetType":I
    goto :goto_4

    .line 2059
    .restart local v5    # "addIndex":I
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_9

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v22, v7, v15

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2061
    const-string/jumbo v22, "AutomaticBrightnessController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[PAB] 4-change : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2063
    :cond_9
    const-string/jumbo v21, "AutomaticBrightnessController"

    const-string/jumbo v22, "[PAB] 4-2ERROR."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2070
    .end local v5    # "addIndex":I
    .end local v13    # "loopLux":F
    .end local v14    # "loopOffset":F
    .end local v15    # "loopOrgCd":F
    .end local v16    # "loopValue":F
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v11

    :goto_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_14

    .line 2071
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    .line 2072
    .restart local v15    # "loopOrgCd":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2073
    .restart local v14    # "loopOffset":F
    add-float v16, v15, v14

    .line 2074
    .restart local v16    # "loopValue":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2076
    .restart local v13    # "loopLux":F
    cmpg-float v21, v16, v7

    if-gez v21, :cond_f

    .line 2077
    const v21, 0x461c4000    # 10000.0f

    cmpl-float v21, v13, v21

    if-nez v21, :cond_c

    const/16 v18, 0x0

    .line 2078
    .restart local v18    # "offsetType":I
    :goto_7
    new-instance v19, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    sub-float v22, v7, v15

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2079
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2080
    .restart local v5    # "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-eq v5, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_d

    .line 2081
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2089
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 2070
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 2077
    .end local v5    # "addIndex":I
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_c
    const/16 v18, 0x2

    .restart local v18    # "offsetType":I
    goto :goto_7

    .line 2083
    .restart local v5    # "addIndex":I
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_e

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v22, v7, v15

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2085
    const-string/jumbo v22, "AutomaticBrightnessController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[PAB] 4-change : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2087
    :cond_e
    const-string/jumbo v21, "AutomaticBrightnessController"

    const-string/jumbo v22, "[PAB] 4-2ERROR."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2091
    .end local v5    # "addIndex":I
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_f
    move/from16 v7, v16

    .line 2092
    const v21, 0x461c4000    # 10000.0f

    cmpl-float v21, v13, v21

    if-nez v21, :cond_11

    const/16 v18, 0x0

    .line 2093
    .restart local v18    # "offsetType":I
    :goto_a
    new-instance v19, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2094
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2095
    .restart local v5    # "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_12

    .line 2096
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2104
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 2092
    .end local v5    # "addIndex":I
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_11
    const/16 v18, 0x2

    .restart local v18    # "offsetType":I
    goto :goto_a

    .line 2098
    .restart local v5    # "addIndex":I
    .restart local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_13

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2100
    const-string/jumbo v22, "AutomaticBrightnessController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[PAB] 4-change : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2102
    :cond_13
    const-string/jumbo v21, "AutomaticBrightnessController"

    const-string/jumbo v22, "[PAB] 4-2ERROR."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2108
    .end local v5    # "addIndex":I
    .end local v13    # "loopLux":F
    .end local v14    # "loopOffset":F
    .end local v15    # "loopOrgCd":F
    .end local v16    # "loopValue":F
    .end local v18    # "offsetType":I
    .end local v19    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_14
    return v8
.end method

.method private getIndex(Ljava/util/ArrayList;F)I
    .locals 5
    .param p2, "lux"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;F)I"
        }
    .end annotation

    .prologue
    .line 2152
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    const/4 v0, 0x0

    .line 2153
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2154
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2155
    .local v1, "listSize":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int v2, v2

    float-to-int v4, p2

    if-lt v2, v4, :cond_2

    .line 2160
    :cond_0
    if-le v0, v1, :cond_1

    .line 2161
    move v0, v1

    :cond_1
    monitor-exit v3

    .line 2164
    return v0

    .line 2155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    .end local v1    # "listSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getSlope(FFFF)F
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/4 v2, 0x0

    .line 2222
    const/4 v0, 0x0

    .line 2223
    .local v0, "slope":F
    cmpl-float v1, p1, p3

    if-eqz v1, :cond_2

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_2

    .line 2224
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    const p1, 0x3f7fbe77    # 0.999f

    .line 2225
    :cond_0
    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    const p3, 0x3f7fbe77    # 0.999f

    .line 2226
    :cond_1
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    .line 2228
    :cond_2
    return v0
.end method

.method private getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2276
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2277
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2278
    .local v1, "listSize":I
    const-string/jumbo v2, ""

    .line 2279
    .local v2, "strLuxList":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2281
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\n[PAB] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 2283
    return-object v2

    .line 2276
    .end local v0    # "i":I
    .end local v1    # "listSize":I
    .end local v2    # "strLuxList":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private init()V
    .locals 6

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1830
    :try_start_0
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1831
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    .line 1833
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1834
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1835
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[PAB] init : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1828
    return-void

    .line 1829
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private printOffsetList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2264
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    .local v0, "strLuxList":Ljava/lang/String;
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[PAB] Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .locals 7
    .param p1, "addedIndex"    # I

    .prologue
    const/4 v3, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    .line 1958
    if-gez p1, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1960
    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 3-[CHECK POINT] ERROR. index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void

    .line 1964
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1965
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    .line 1966
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1957
    :cond_1
    :goto_0
    return-void

    .line 1967
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 1968
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    .line 1970
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_9

    .line 1972
    if-eqz p1, :cond_4

    .line 1973
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1974
    .local v0, "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    .line 1975
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_5

    .line 1976
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 1977
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1992
    .end local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1993
    .local v1, "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_7

    .line 1995
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    .line 1980
    .end local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_5
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 1981
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 1985
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1986
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 1997
    .end local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_7
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_8

    .line 1998
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    .line 2000
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    .line 2004
    .end local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_9
    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 3-[CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    goto/16 :goto_0
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)I
    .locals 11
    .param p1, "addedIndex"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1905
    if-gez p1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1907
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-[CHECK POINT] ERROR. index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    return v9

    .line 1910
    :cond_0
    const/4 v0, 0x0

    .line 1912
    .local v0, "countRemovedSmallerThanAddedPoints":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1913
    .local v5, "latestOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v6, v7

    .line 1914
    .local v4, "latestCd":F
    if-lez p1, :cond_4

    .line 1915
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1916
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1917
    .local v3, "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    .line 1918
    .local v2, "iCd":F
    cmpl-float v6, v2, v4

    if-lez v6, :cond_1

    .line 1919
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v10, :cond_2

    .line 1920
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1922
    add-int/lit8 v0, v0, 0x1

    .line 1915
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1923
    :cond_2
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_3

    .line 1925
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float v6, v4, v6

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 1927
    :cond_3
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1934
    .end local v1    # "i":I
    .end local v2    # "iCd":F
    .end local v3    # "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-le v1, p1, :cond_9

    .line 1935
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1936
    .restart local v3    # "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    .line 1937
    .restart local v2    # "iCd":F
    cmpg-float v6, v2, v4

    if-gez v6, :cond_5

    .line 1938
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v10, :cond_6

    .line 1939
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1934
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1941
    :cond_6
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_8

    .line 1942
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_7

    .line 1943
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_3

    .line 1946
    :cond_7
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-ERROR.  i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", i.offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1949
    :cond_8
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1954
    .end local v2    # "iCd":F
    .end local v3    # "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_9
    return v0
.end method

.method private removeAllSubOffsetPointsLocked()V
    .locals 3

    .prologue
    .line 2144
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2145
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2144
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2143
    :cond_1
    return-void
.end method


# virtual methods
.method public addPoint(FI)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "cd"    # I

    .prologue
    .line 1843
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1844
    :cond_0
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[PAB] Do not add Point : lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-void

    .line 1849
    :cond_1
    if-gez p2, :cond_3

    .line 1850
    const/4 p2, 0x0

    .line 1855
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1856
    .local v2, "orgCd":F
    int-to-float v3, p2

    sub-float v1, v3, v2

    .line 1858
    .local v1, "offset":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1860
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    .line 1861
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addToListAfterBoundaryCheckLocked(FIF)I

    move-result v0

    .line 1862
    .local v0, "addedIndex":I
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllReverseUserOffsetPointsLocked(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1863
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->refreshFixedOffsetPointsLocked(I)V

    .line 1864
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addSubOffsetPointsIfNeededLocked(I)V

    .line 1866
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1841
    return-void

    .line 1851
    .end local v0    # "addedIndex":I
    .end local v1    # "offset":F
    .end local v2    # "orgCd":F
    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 1852
    const/16 p2, 0xff

    goto :goto_0

    .line 1858
    .restart local v1    # "offset":F
    .restart local v2    # "orgCd":F
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2269
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    .local v0, "strLuxList":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2271
    const-string/jumbo v1, "[PAB] Personal Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PAB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2268
    return-void
.end method

.method public getOffset(F)F
    .locals 12
    .param p1, "lux"    # F

    .prologue
    const/4 v9, 0x0

    .line 2179
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2180
    cmpg-float v6, p1, v9

    if-gtz v6, :cond_0

    .line 2181
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return v6

    .line 2182
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    monitor-exit v7

    .line 2183
    return v9

    .line 2184
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    .line 2185
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float p1, v6

    .line 2188
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    .line 2189
    .local v0, "index":I
    if-gtz v0, :cond_3

    .line 2190
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[PAB] getOffset: index error. index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return v6

    .line 2193
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_4

    .line 2194
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v1, "offset":F
    :goto_0
    monitor-exit v7

    .line 2218
    return v1

    .line 2196
    .end local v1    # "offset":F
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    .line 2197
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    .line 2198
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    .line 2199
    const/4 v1, 0x0

    .restart local v1    # "offset":F
    goto :goto_0

    .line 2201
    .end local v1    # "offset":F
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2202
    .local v5, "y2":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2203
    .local v4, "y1":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2204
    .local v3, "x2":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2205
    .local v2, "x1":F
    cmpl-float v6, v3, v2

    if-eqz v6, :cond_6

    cmpl-float v6, v5, v4

    if-nez v6, :cond_7

    .line 2206
    :cond_6
    move v1, v5

    .restart local v1    # "offset":F
    goto :goto_0

    .line 2209
    .end local v1    # "offset":F
    :cond_7
    cmpl-float v6, v2, v9

    if-nez v6, :cond_8

    const v2, 0x3f7fbe77    # 0.999f

    .line 2210
    :cond_8
    cmpl-float v6, p1, v9

    if-nez v6, :cond_9

    const p1, 0x3f7fbe77    # 0.999f

    .line 2211
    :cond_9
    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getSlope(FFFF)F

    move-result v6

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v1, v6, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 2179
    .end local v0    # "index":I
    .end local v1    # "offset":F
    .end local v2    # "x1":F
    .end local v3    # "x2":F
    .end local v4    # "y1":F
    .end local v5    # "y2":F
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getPersonalAutoBrightnessHighHysteresis(F)F
    .locals 2
    .param p1, "cd"    # F

    .prologue
    .line 2259
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v0

    .line 2260
    .local v0, "highHysteresis":F
    return v0
.end method

.method public getPersonalAutoBrightnessLowHysteresis(F)F
    .locals 2
    .param p1, "cd"    # F

    .prologue
    .line 2254
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v0

    .line 2255
    .local v0, "lowHysteresis":F
    return v0
.end method

.method public getPersonalScreenAutoBrightness(F)F
    .locals 8
    .param p1, "lux"    # F

    .prologue
    .line 2232
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2233
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 2234
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v7, v7, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-float/2addr v5, v7

    monitor-exit v6

    return v5

    .line 2237
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2238
    .local v3, "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v5, v7

    .line 2241
    .local v4, "prevValue":F
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 2242
    .local v2, "optBrightness":F
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2243
    .local v1, "offset":F
    add-float v0, v2, v1

    .line 2245
    .local v0, "currentValue":F
    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    :cond_1
    monitor-exit v6

    .line 2249
    return v0

    .line 2232
    .end local v0    # "currentValue":F
    .end local v1    # "offset":F
    .end local v2    # "optBrightness":F
    .end local v3    # "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .end local v4    # "prevValue":F
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public resetPersonalAutoBrightness()V
    .locals 4

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2170
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2171
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2172
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2167
    return-void

    .line 2168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
