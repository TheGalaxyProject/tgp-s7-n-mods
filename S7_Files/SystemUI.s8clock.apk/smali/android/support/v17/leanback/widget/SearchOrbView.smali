.class public Landroid/support/v17/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchOrbView$1;,
        Landroid/support/v17/leanback/widget/SearchOrbView$2;,
        Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mColorAnimationEnabled:Z

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFocusedZ:F

.field private final mFocusedZoom:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPulseDurationMs:I

.field private mRootView:Landroid/view/View;

.field private final mScaleDurationMs:I

.field private mSearchOrbView:Landroid/view/View;

.field private mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field private final mUnfocusedZ:F

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/SearchOrbView;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/widget/SearchOrbView;F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    sget v0, Landroid/support/v17/leanback/R$attr;->searchOrbViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 131
    new-instance v8, Landroid/support/v17/leanback/widget/SearchOrbView$1;

    invoke-direct {v8, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$1;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    .line 130
    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 142
    new-instance v8, Landroid/support/v17/leanback/widget/SearchOrbView$2;

    invoke-direct {v8, p0}, Landroid/support/v17/leanback/widget/SearchOrbView$2;-><init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V

    .line 141
    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 168
    .local v7, "res":Landroid/content/res/Resources;
    const-string/jumbo v8, "layout_inflater"

    .line 167
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 169
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v8

    invoke-virtual {v6, v8, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 170
    iget-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v9, Landroid/support/v17/leanback/R$id;->search_orb:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 171
    iget-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v9, Landroid/support/v17/leanback/R$id;->icon:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 174
    sget v9, Landroid/support/v17/leanback/R$fraction;->lb_search_orb_focused_zoom:I

    .line 173
    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 176
    sget v9, Landroid/support/v17/leanback/R$integer;->lb_search_orb_pulse_duration_ms:I

    .line 175
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 178
    sget v9, Landroid/support/v17/leanback/R$integer;->lb_search_orb_scale_duration_ms:I

    .line 177
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 180
    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_focused_z:I

    .line 179
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 182
    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_search_orb_unfocused_z:I

    .line 181
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 184
    sget-object v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView:[I

    invoke-virtual {p1, p2, v8, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIcon:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 188
    .local v5, "img":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 189
    sget v8, Landroid/support/v17/leanback/R$drawable;->lb_ic_in_app_search:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 191
    :cond_0
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget v8, Landroid/support/v17/leanback/R$color;->lb_default_search_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 194
    .local v3, "defColor":I
    sget v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbColor:I

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 196
    .local v2, "color":I
    sget v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbBrightColor:I

    .line 195
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 197
    .local v1, "brightColor":I
    sget v8, Landroid/support/v17/leanback/R$styleable;->lbSearchOrbView_searchOrbIconColor:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 198
    .local v4, "iconColor":I
    new-instance v8, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v8, v2, v1, v4}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 199
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/SearchOrbView;->setFocusable(Z)V

    .line 202
    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/SearchOrbView;->setClipChildren(Z)V

    .line 203
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSoundEffectsEnabled(Z)V

    .line 205
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    .line 208
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget v10, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    invoke-virtual {v8, v9, v10}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    .line 162
    return-void
.end method

.method private setOrbViewColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 362
    :cond_0
    return-void
.end method

.method private setSearchOrbZ(F)V
    .locals 5
    .param p1, "fraction"    # F

    .prologue
    .line 150
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 151
    iget v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    iget v3, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZ:F

    iget v4, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ShadowHelper;->setZ(Landroid/view/View;F)V

    .line 149
    return-void
.end method

.method private startShadowFocusAnimation(ZI)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    :cond_0
    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 233
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColorAnimator()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 349
    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 351
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 354
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 353
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 355
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 356
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 346
    :cond_1
    return-void
.end method


# virtual methods
.method animateOnFocus(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 252
    .local v0, "zoom":F
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    iget v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    invoke-direct {p0, p1, v1}, Landroid/support/v17/leanback/widget/SearchOrbView;->startShadowFocusAnimation(ZI)V

    .line 254
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    .line 250
    return-void

    .line 251
    .end local v0    # "zoom":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "zoom":F
    goto :goto_0
.end method

.method public enableOrbColorAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 343
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 341
    return-void
.end method

.method getFocusedZoom()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mFocusedZoom:F

    return v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .prologue
    .line 212
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_orb:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 372
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 369
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 225
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 379
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 380
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 376
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 247
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    .line 245
    return-void
.end method

.method scaleOrbViewOnly(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 215
    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 279
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    .line 278
    return-void
.end method

.method public setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 2
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .prologue
    .line 315
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 316
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v1, v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    .line 314
    :goto_0
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    goto :goto_0
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 262
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method
