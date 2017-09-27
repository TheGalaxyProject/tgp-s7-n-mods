.class public Landroid/support/v17/leanback/widget/ImageCardView;
.super Landroid/support/v17/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 282
    sget v0, Landroid/support/v17/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    sget v0, Landroid/support/v17/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v17/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyle"    # I

    .prologue
    .line 161
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 162
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 165
    .local v11, "inflater":Landroid/view/LayoutInflater;
    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view:I

    move-object/from16 v0, p0

    invoke-virtual {v11, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 167
    sget-object v15, Landroid/support/v17/leanback/R$styleable;->lbImageCardView:[I

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 169
    .local v4, "cardAttrs":Landroid/content/res/TypedArray;
    sget v14, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    const/4 v15, 0x0

    .line 168
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 171
    .local v5, "cardType":I
    if-nez v5, :cond_1

    const/4 v9, 0x1

    .line 172
    .local v9, "hasImageOnly":Z
    :goto_0
    and-int/lit8 v14, v5, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v10, 0x1

    .line 173
    .local v10, "hasTitle":Z
    :goto_1
    and-int/lit8 v14, v5, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    const/4 v6, 0x1

    .line 174
    .local v6, "hasContent":Z
    :goto_2
    and-int/lit8 v14, v5, 0x4

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    const/4 v8, 0x1

    .line 176
    .local v8, "hasIconRight":Z
    :goto_3
    if-nez v8, :cond_5

    and-int/lit8 v14, v5, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    const/4 v7, 0x1

    .line 178
    .local v7, "hasIconLeft":Z
    :goto_4
    sget v14, Landroid/support/v17/leanback/R$id;->main_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_0
    sget v14, Landroid/support/v17/leanback/R$id;->info_field:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    .line 184
    if-eqz v9, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->removeView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void

    .line 171
    .end local v6    # "hasContent":Z
    .end local v7    # "hasIconLeft":Z
    .end local v8    # "hasIconRight":Z
    .end local v9    # "hasImageOnly":Z
    .end local v10    # "hasTitle":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "hasImageOnly":Z
    goto :goto_0

    .line 172
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "hasTitle":Z
    goto :goto_1

    .line 173
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "hasContent":Z
    goto :goto_2

    .line 174
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 176
    .restart local v8    # "hasIconRight":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "hasIconLeft":Z
    goto :goto_4

    .line 190
    :cond_6
    if-eqz v10, :cond_7

    .line 191
    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_title:I

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    .line 191
    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    :cond_7
    if-eqz v6, :cond_8

    .line 197
    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_content:I

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    .line 197
    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    :cond_8
    if-nez v8, :cond_9

    if-eqz v7, :cond_b

    .line 203
    :cond_9
    sget v12, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    .line 204
    .local v12, "layoutId":I
    if-eqz v7, :cond_a

    .line 205
    sget v12, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    .line 207
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    .end local v12    # "layoutId":I
    :cond_b
    if-eqz v10, :cond_c

    if-eqz v6, :cond_14

    .line 225
    :cond_c
    :goto_5
    if-eqz v6, :cond_f

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .local v13, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v10, :cond_d

    .line 229
    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    :cond_d
    if-eqz v7, :cond_e

    .line 233
    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 234
    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x11

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .end local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_11

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .restart local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v6, :cond_16

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getId()I

    move-result v14

    const/16 v15, 0x8

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .end local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11
    sget v14, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 258
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_12

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_13

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :cond_13
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    return-void

    .line 212
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_c

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    .restart local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v7, :cond_15

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x11

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 219
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x10

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7

    .line 245
    :cond_16
    if-eqz v10, :cond_10

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getId()I

    move-result v14

    const/16 v15, 0x8

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6
.end method

.method private fadeIn()V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 460
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 462
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 461
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 458
    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onAttachedToWindow()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 475
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ImageCardView;->fadeIn()V

    .line 472
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 483
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 484
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 485
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    .line 481
    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_0
    return-void
.end method
