.class final Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAlignMultiple:[I

.field private mAlignX:I

.field private mAlignY:I

.field private mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

.field private mBottomInset:I

.field private mLeftInset:I

.field private mRightInset:I

.field private mTopInset:I


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    return v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 80
    return-void
.end method


# virtual methods
.method calculateItemAlignments(ILandroid/view/View;)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 162
    .local v0, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    array-length v2, v2

    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 163
    :cond_0
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    .line 165
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 166
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    .line 167
    aget-object v3, v0, v1

    .line 166
    invoke-static {p2, v3, p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v3

    aput v3, v2, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    if-nez p1, :cond_3

    .line 170
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v2, v2, v4

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    .line 160
    :goto_1
    return-void

    .line 172
    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v2, v2, v4

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_1
.end method

.method getAlignMultiple()[I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    return-object v0
.end method

.method getAlignX()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return v0
.end method

.method getAlignY()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return v0
.end method

.method getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-object v0
.end method

.method getOpticalHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeftInset()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalTopInset()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method getOpticalWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method setAlignX(I)V
    .locals 0
    .param p1, "alignX"    # I

    .prologue
    .line 145
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    .line 144
    return-void
.end method

.method setAlignY(I)V
    .locals 0
    .param p1, "alignY"    # I

    .prologue
    .line 149
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    .line 148
    return-void
.end method

.method setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V
    .locals 0
    .param p1, "facet"    # Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 152
    return-void
.end method

.method setOpticalInsets(IIII)V
    .locals 0
    .param p1, "leftInset"    # I
    .param p2, "topInset"    # I
    .param p3, "rightInset"    # I
    .param p4, "bottomInset"    # I

    .prologue
    .line 181
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 182
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 183
    iput p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 184
    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 180
    return-void
.end method
