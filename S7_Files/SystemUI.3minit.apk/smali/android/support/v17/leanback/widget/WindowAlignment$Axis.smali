.class public Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingHigh:I

.field private mPaddingLow:I

.field private mReversedFlow:Z

.field private mScrollCenter:F

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/WindowAlignment$Axis;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 62
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 75
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    .line 76
    iput-object p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 163
    const/high16 v0, -0x31000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mScrollCenter:F

    .line 164
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 165
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 162
    return-void
.end method


# virtual methods
.method public final getClientSize()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingHigh:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMaxEdge()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return v0
.end method

.method public final getMaxScroll()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return v0
.end method

.method public final getMinEdge()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    return v0
.end method

.method public final getMinScroll()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return v0
.end method

.method public final getPaddingHigh()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingHigh:I

    return v0
.end method

.method public final getPaddingLow()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    return v0
.end method

.method public final getSystemScrollPos(IZZ)I
    .locals 9
    .param p1, "scrollCenter"    # I
    .param p2, "isAtMin"    # Z
    .param p3, "isAtMax"    # Z

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 207
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_5

    .line 208
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v5, :cond_4

    .line 209
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v4, v5, v6

    .line 213
    .local v4, "middlePosition":I
    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    .line 214
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 226
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v1

    .line 227
    .local v1, "clientSize":I
    sub-int v0, v1, v4

    .line 228
    .local v0, "afterMiddlePosition":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v3

    .line 229
    .local v3, "isMinUnknown":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v2

    .line 230
    .local v2, "isMaxUnknown":Z
    if-nez v3, :cond_1

    if-eqz v2, :cond_7

    .line 239
    :cond_1
    if-nez v3, :cond_a

    .line 240
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_9

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    .line 242
    :cond_2
    if-nez p2, :cond_3

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v5, p1, v5

    if-gt v5, v4, :cond_a

    .line 245
    :cond_3
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, v6

    return v5

    .line 211
    .end local v0    # "afterMiddlePosition":I
    .end local v1    # "clientSize":I
    .end local v2    # "isMaxUnknown":Z
    .end local v3    # "isMinUnknown":Z
    .end local v4    # "middlePosition":I
    :cond_4
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v4, v5, v6

    .restart local v4    # "middlePosition":I
    goto :goto_0

    .line 217
    .end local v4    # "middlePosition":I
    :cond_5
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v5, :cond_6

    .line 218
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v4, v5, v6

    .line 222
    .restart local v4    # "middlePosition":I
    :goto_2
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    .line 223
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    goto :goto_1

    .line 220
    .end local v4    # "middlePosition":I
    :cond_6
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int v4, v5, v6

    .restart local v4    # "middlePosition":I
    goto :goto_2

    .line 231
    .restart local v0    # "afterMiddlePosition":I
    .restart local v1    # "clientSize":I
    .restart local v2    # "isMaxUnknown":Z
    .restart local v3    # "isMinUnknown":Z
    :cond_7
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 232
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int/2addr v5, v6

    if-gt v5, v1, :cond_1

    .line 235
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-eqz v5, :cond_8

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    :goto_3
    return v5

    .line 236
    :cond_8
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, v6

    goto :goto_3

    .line 241
    :cond_9
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 248
    :cond_a
    if-nez v2, :cond_e

    .line 249
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_d

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    .line 251
    :cond_b
    if-nez p3, :cond_c

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int/2addr v5, p1

    if-gt v5, v0, :cond_e

    .line 254
    :cond_c
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    return v5

    .line 250
    :cond_d
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_b

    .line 258
    :cond_e
    sub-int v5, p1, v4

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    sub-int/2addr v5, v6

    return v5
.end method

.method public final invalidateScrollMax()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 153
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 154
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 152
    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 130
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 131
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 129
    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMaxEdge(I)V
    .locals 0
    .param p1, "maxEdge"    # I

    .prologue
    .line 136
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 135
    return-void
.end method

.method public final setMaxScroll(I)V
    .locals 0
    .param p1, "maxScroll"    # I

    .prologue
    .line 145
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 144
    return-void
.end method

.method public final setMinEdge(I)V
    .locals 0
    .param p1, "minEdge"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 112
    return-void
.end method

.method public final setMinScroll(I)V
    .locals 0
    .param p1, "minScroll"    # I

    .prologue
    .line 122
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 121
    return-void
.end method

.method public final setPadding(II)V
    .locals 0
    .param p1, "paddingLow"    # I
    .param p2, "paddingHigh"    # I

    .prologue
    .line 185
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingLow:I

    .line 186
    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingHigh:I

    .line 184
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    .line 261
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 177
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 176
    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0
    .param p1, "windowAlignment"    # I

    .prologue
    .line 84
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mScrollCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, " max:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
