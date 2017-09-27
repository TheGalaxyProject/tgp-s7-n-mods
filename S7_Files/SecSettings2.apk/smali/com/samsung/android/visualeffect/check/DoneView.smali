.class public Lcom/samsung/android/visualeffect/check/DoneView;
.super Landroid/view/View;
.source "DoneView.java"


# instance fields
.field final RELATIVE_STARTX:F

.field final RELATIVE_STARTY:F

.field final RELATIVE_STROKE:F

.field final RELATIVE_X1:F

.field final RELATIVE_X2:F

.field final RELATIVE_Y1:F

.field final RELATIVE_Y2:F

.field final RELATIVE_Y2_ABSOLUTE:F

.field STARTX:F

.field STARTY:F

.field STROKE:F

.field X1:F

.field X2:F

.field Y1:F

.field Y2:F

.field Y2_ABSOLUTE:F

.field initialDraw:Z

.field mAnimator:Landroid/animation/ValueAnimator;

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field posX:F

.field posY:F

.field x1delta:F

.field x2delta:F

.field y1delta:F

.field y2delta:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x41d7851f    # 26.94f

    const v4, 0x41bc8f5c    # 23.57f

    const v3, 0x4191d70a    # 18.23f

    const v2, 0x409ccccd    # 4.9f

    const v1, 0x421feb85    # 39.98f

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    .line 25
    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    .line 27
    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    .line 28
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    .line 30
    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    .line 31
    const v0, -0x3de0147b    # -39.98f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    .line 32
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    .line 34
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    .line 37
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    .line 38
    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    .line 40
    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    .line 41
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    .line 43
    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    .line 44
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    .line 45
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    .line 52
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x41bc8f5c    # 23.57f

    const v5, 0x4191d70a    # 18.23f

    const v3, 0x409ccccd    # 4.9f

    const/4 v4, 0x1

    const v2, 0x421feb85    # 39.98f

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    .line 25
    const v1, 0x422c3333    # 43.05f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    .line 27
    iput v6, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    .line 28
    const v1, 0x41d7851f    # 26.94f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    .line 30
    const v1, 0x421fae14    # 39.92f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    .line 31
    const v1, -0x3de0147b    # -39.98f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    .line 32
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    .line 34
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    .line 37
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    .line 38
    const v1, 0x422c3333    # 43.05f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    .line 40
    iput v6, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    .line 41
    const v1, 0x41d7851f    # 26.94f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    .line 43
    const v1, 0x421fae14    # 39.92f

    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    .line 44
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    .line 45
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    .line 52
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    .line 65
    sget-object v1, Lcom/android/settings/R$styleable;->DoneView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    .line 74
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/check/DoneView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/check/DoneView$1;-><init>(Lcom/samsung/android/visualeffect/check/DoneView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/check/DoneView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/check/DoneView$2;-><init>(Lcom/samsung/android/visualeffect/check/DoneView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v5, 0x41d7851f    # 26.94f

    const v4, 0x41bc8f5c    # 23.57f

    const v3, 0x4191d70a    # 18.23f

    const v2, 0x409ccccd    # 4.9f

    const v1, 0x421feb85    # 39.98f

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTX:F

    .line 25
    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STARTY:F

    .line 27
    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X1:F

    .line 28
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y1:F

    .line 30
    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_X2:F

    .line 31
    const v0, -0x3de0147b    # -39.98f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2:F

    .line 32
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_Y2_ABSOLUTE:F

    .line 34
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->RELATIVE_STROKE:F

    .line 37
    iput v3, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    .line 38
    const v0, 0x422c3333    # 43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    .line 40
    iput v4, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    .line 41
    iput v5, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    .line 43
    const v0, 0x421fae14    # 39.92f

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    .line 44
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    .line 45
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    .line 52
    iput v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    .line 128
    return-void
.end method

.method private transformToAbsoluteCoordinate(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 165
    int-to-float v0, p1

    const v1, 0x4191d70a    # 18.23f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    .line 166
    int-to-float v0, p2

    const v1, 0x422c3333    # 43.05f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    .line 168
    int-to-float v0, p1

    const v1, 0x41bc8f5c    # 23.57f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    .line 169
    int-to-float v0, p2

    const v1, 0x41d7851f    # 26.94f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    .line 170
    int-to-float v0, p1

    const v1, 0x421fae14    # 39.92f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    .line 171
    int-to-float v0, p2

    const v1, -0x3de0147b    # -39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2:F

    .line 172
    int-to-float v0, p2

    const v1, 0x421feb85    # 39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    .line 174
    int-to-float v0, p1

    const v1, 0x409ccccd    # 4.9f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    .line 164
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/check/DoneView;->transformToAbsoluteCoordinate(II)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTX:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STARTY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 157
    iget v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    iget v2, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->STROKE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 134
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41bc8f5c    # 23.57f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41d7851f    # 26.94f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x421fae14    # 39.92f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/check/DoneView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, -0x3de0147b    # -39.98f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    .line 133
    :goto_0
    return-void

    .line 142
    :cond_0
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    .line 143
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    .line 144
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    .line 145
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    goto :goto_0
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    .line 179
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    .line 180
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    .line 181
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    .line 182
    iput v1, p0, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    .line 184
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 177
    return-void
.end method
