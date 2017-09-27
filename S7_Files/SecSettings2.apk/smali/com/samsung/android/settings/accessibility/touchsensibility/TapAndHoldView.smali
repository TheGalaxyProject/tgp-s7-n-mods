.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static touch_time:J


# instance fields
.field private blockLongPress:Z

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isActivityFront:Z

.field private isLongPressDone:Z

.field private isStartCounting:Z

.field private isTouchBeforeResume:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 23
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 29
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 31
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 23
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 29
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 31
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 23
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 29
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 31
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0200cd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 63
    .local v4, "tapStandBydrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0200cc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    .local v3, "tapConfirmdrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0200c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, "holdStandBydrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0200c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "holdConfirmdrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    .line 69
    check-cast v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v4    # "tapStandBydrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    instance-of v5, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    .line 74
    check-cast v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v3    # "tapConfirmdrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 77
    :cond_1
    instance-of v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_2

    .line 79
    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v1    # "holdStandBydrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 82
    :cond_2
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    .line 84
    check-cast v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v0    # "holdConfirmdrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 86
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 60
    return-void
.end method


# virtual methods
.method public checkAndSaveState()V
    .locals 6

    .prologue
    .line 203
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    if-eqz v2, :cond_1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "uptime":J
    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 206
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 207
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 210
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 202
    .end local v0    # "uptime":J
    :cond_1
    return-void
.end method

.method public checkLongPressStatus()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public checkTouchBeforeResume()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v1, :pswitch_data_0

    .line 118
    const-string/jumbo v1, "TapAndHoldView"

    const-string/jumbo v2, "Unknown Tap and Hold State"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 90
    return-void

    .line 94
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 104
    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 105
    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 109
    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 110
    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 114
    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 115
    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method public isCountingLongPressTime()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "uptime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 131
    iput v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 132
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 133
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 134
    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 135
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_0

    .line 136
    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    .line 151
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_1

    .line 152
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    .line 154
    :cond_1
    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    if-eqz v2, :cond_7

    .line 157
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 158
    return v5

    .line 138
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 139
    sget-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 140
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-eqz v2, :cond_5

    .line 141
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 142
    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 148
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    goto :goto_0

    .line 143
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    if-nez v2, :cond_4

    .line 144
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isTouchBeforeResume:Z

    if-nez v2, :cond_6

    .line 145
    iput v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 146
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    goto :goto_2

    .line 154
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    if-nez v2, :cond_2

    .line 155
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    goto :goto_1
.end method

.method public refresh()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 192
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 193
    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 194
    sput-wide v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 195
    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 196
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 198
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 190
    return-void
.end method

.method public setActivityState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->isActivityFront:Z

    .line 186
    return-void
.end method

.method public updateRunningHoldStandby()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 161
    return-void
.end method
