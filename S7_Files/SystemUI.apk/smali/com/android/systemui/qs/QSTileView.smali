.class public Lcom/android/systemui/qs/QSTileView;
.super Lcom/android/systemui/qs/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field dividerParam:Landroid/widget/LinearLayout$LayoutParams;

.field labelParam:Landroid/widget/LinearLayout$LayoutParams;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDefaultTextSize:F

.field private mDensityDpi:I

.field protected mDivider:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mPadLock:Landroid/widget/ImageView;

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    .line 57
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 71
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 75
    .local v0, "currentUser":I
    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mCurrentUser:I

    .line 77
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 81
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setId(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createDivider()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    .line 85
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setOrientation(I)V

    .line 86
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setGravity(I)V

    .line 64
    return-void
.end method

.method private updateTopPadding()V
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 118
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d020b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    .local v2, "padding":I
    const v4, 0x7f0d020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 120
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 121
    const v5, 0x3fa66666    # 1.3f

    .line 120
    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    .line 121
    const v5, 0x3e999998    # 0.29999995f

    .line 120
    div-float v0, v4, v5

    .line 122
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 123
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 124
    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 123
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/systemui/qs/QSTileView;->setPadding(IIII)V

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 116
    return-void
.end method


# virtual methods
.method protected createDivider()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04010b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1302f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method protected createLabel()V
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04010c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1302fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f1302fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->updateShowButtonBackground()V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/QSTileView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileView$1;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public dynamicallyReduceTextSize(ILandroid/widget/TextView;)V
    .locals 12
    .param p1, "cellWidth"    # I
    .param p2, "label"    # Landroid/widget/TextView;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    .line 221
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 223
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 224
    .local v4, "tw":I
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "enterIdx":I
    if-ne v0, v10, :cond_0

    .line 227
    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 230
    :cond_0
    if-ne v0, v10, :cond_3

    .line 231
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    .line 240
    :cond_1
    :goto_1
    if-lt p1, v4, :cond_4

    .line 219
    .end local v0    # "enterIdx":I
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "tw":I
    :cond_2
    return-void

    .line 233
    .restart local v0    # "enterIdx":I
    .restart local v2    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "tw":I
    :cond_3
    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    .line 234
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v5, v6

    .line 235
    .local v5, "tw2ndline":I
    if-ge v4, v5, :cond_1

    .line 236
    move v4, v5

    goto :goto_1

    .line 243
    .end local v5    # "tw2ndline":I
    :cond_4
    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {p2, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 185
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 189
    .local v3, "width":I
    if-lez v3, :cond_0

    .line 190
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    .line 192
    :cond_0
    const/4 v1, 0x0

    .line 193
    .local v1, "label":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v1, :cond_2

    .line 198
    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ","

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "label":Ljava/lang/String;
    const-string/jumbo v6, "-"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v1    # "label":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const v8, 0x7f0f044b

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "description":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v7, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    return-void

    .line 206
    :cond_4
    const/16 v5, 0x8

    goto :goto_0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "secondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0d0205

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 138
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    .line 133
    return-void
.end method

.method protected updateRippleSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v0

    .line 102
    .local v0, "icon":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eeb851f    # 0.46f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 103
    .local v1, "rad":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(III)V

    .line 100
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 5

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    iget v3, p0, Lcom/android/systemui/qs/QSTileView;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 212
    .local v0, "isShowButtonBg":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    if-eqz v0, :cond_1

    const v1, 0x7f02055c

    .line 212
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void

    .line 211
    .end local v0    # "isShowButtonBg":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isShowButtonBg":Z
    goto :goto_0

    .line 214
    :cond_1
    const v1, 0x7f020559

    goto :goto_1
.end method
