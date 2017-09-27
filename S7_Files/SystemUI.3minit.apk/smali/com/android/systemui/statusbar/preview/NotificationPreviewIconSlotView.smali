.class public Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;
.super Landroid/widget/LinearLayout;
.source "NotificationPreviewIconSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIconBackground:Landroid/graphics/drawable/Drawable;

.field private mIconPadding:I

.field private mIconSize:I

.field private mInitialY:I

.field private mPressedView:Landroid/view/View;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private mTouchSlop:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 62
    return-void
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private getSelectedChildView(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .local v2, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 194
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    return-object v0

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private init()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f0d03e8

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    const v1, 0x7f0d03ea

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v1, 0x7f020336

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method private isIconInContainer(Landroid/view/View;)Z
    .locals 3
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    .line 224
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v0

    .line 226
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 228
    const/4 v2, 0x1

    return v2

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isInContentArea(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    return v0
.end method

.method private setChildProperty(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    iget v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 107
    iget v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 84
    move-object v0, p1

    .line 85
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    .line 86
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 91
    move-object v0, p1

    .line 92
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 90
    return-void
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    .line 214
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    .line 67
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    .line 115
    return v1

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isInContentArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 135
    .local v2, "eventType":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 136
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 137
    .local v6, "y":I
    packed-switch v2, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 186
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v8, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_1
    return v7

    .line 139
    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "downView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    .line 142
    iput-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 143
    iput v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    goto :goto_0

    .line 147
    .end local v1    # "downView":Landroid/view/View;
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 148
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 151
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 152
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 155
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    if-le v8, v9, :cond_0

    .line 156
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;->goToLockShade()V

    .line 158
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 159
    .local v0, "cancellation":Landroid/view/MotionEvent;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 160
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 161
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 166
    .end local v0    # "cancellation":Landroid/view/MotionEvent;
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 167
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 168
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 169
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 174
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v4

    .line 175
    .local v4, "upView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-ne v8, v4, :cond_3

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    .line 178
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 179
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 180
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performIconScaleAnim(Landroid/view/View;Z)V
    .locals 9
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isIconInContainer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    if-eqz p2, :cond_1

    const v1, 0x3fc3d70a    # 1.53f

    .line 238
    .local v1, "toScale":F
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 239
    .local v0, "player":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 241
    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    .line 242
    aput v1, v4, v7

    .line 241
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    .line 244
    aput v1, v4, v7

    .line 243
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    new-instance v2, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;ZLandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    .end local v0    # "player":Landroid/animation/AnimatorSet;
    .end local v1    # "toScale":F
    :cond_0
    return-void

    .line 237
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "toScale":F
    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .line 205
    return-void
.end method

.method public setOnClickEvent(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 201
    return-void
.end method
