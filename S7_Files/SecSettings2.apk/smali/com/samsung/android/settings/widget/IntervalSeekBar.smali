.class public Lcom/samsung/android/settings/widget/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/IntervalSeekBar$1;,
        Lcom/samsung/android/settings/widget/IntervalSeekBar$2;,
        Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;,
        Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;,
        Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDisableAnimator:Landroid/animation/ValueAnimator;

.field public mDisableDuration:I

.field public mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEnableAnimator:Landroid/animation/ValueAnimator;

.field public mEnableDuration:I

.field public mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsAnimating:Ljava/lang/Boolean;

.field public mLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;",
            ">;"
        }
    .end annotation
.end field

.field public mMarkers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field public mPointer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/widget/IntervalSeekBar;F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animateMarkers(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x2

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 99
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    .line 100
    iput v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableDuration:I

    .line 102
    new-instance v0, Lcom/samsung/android/settings/widget/IntervalSeekBar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar$1;-><init>(Lcom/samsung/android/settings/widget/IntervalSeekBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 110
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDisableAnimator:Landroid/animation/ValueAnimator;

    .line 111
    iput v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDisableDuration:I

    .line 113
    new-instance v0, Lcom/samsung/android/settings/widget/IntervalSeekBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar$2;-><init>(Lcom/samsung/android/settings/widget/IntervalSeekBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 139
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f0204dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 49
    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateMarkers(F)V
    .locals 8
    .param p1, "ratio"    # F

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;

    .line 228
    .local v2, "tempMarker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    iget v4, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    iget v5, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mTargetMarkerX:F

    iget v6, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mMarkerX:F

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "tempMarker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;

    .line 233
    .local v1, "tempLine":Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;
    iget v4, v1, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mStartLineX:F

    iget v5, v1, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mTargetLineX:F

    iget v6, v1, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mStartLineX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mLineX:F

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "tempLine":Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 237
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;

    .line 238
    .local v3, "tempPointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    iget v4, v3, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    iget v5, v3, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mTargetPointerX:F

    iget v6, v3, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mPointerX:F

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    .end local v3    # "tempPointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    :cond_2
    float-to-double v4, p1

    const-wide v6, 0x3fee666666666666L    # 0.95

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 242
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->resetMarkers()V

    .line 225
    :cond_3
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 86
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawMarkers(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    add-int v11, v1, v2

    .line 199
    .local v11, "markerHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    add-int/2addr v1, v2

    int-to-float v3, v1

    .line 203
    .local v3, "lineHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 204
    .local v4, "lineWidth":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    const-string/jumbo v1, "IntervalSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drawMarkers canvas.getHeight() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", lineHeight : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mPaddingTop : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mPaddingBottom : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;

    .line 209
    .local v14, "tempLine":Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;
    iget v8, v14, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mLineX:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v4

    move v7, v3

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 212
    .end local v14    # "tempLine":Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;
    :cond_0
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;

    .line 214
    .local v16, "tempPointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 215
    .local v12, "markerRadius":I
    move-object/from16 v0, v16

    iget v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mPointerX:F

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 218
    .end local v12    # "markerRadius":I
    .end local v16    # "tempPointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    :cond_1
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;

    .line 220
    .local v15, "tempMarker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    iget v1, v15, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mMarkerX:F

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 194
    .end local v15    # "tempMarker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    .line 58
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 61
    .local v1, "tint_list":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 64
    .local v0, "strokeWidth":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    .line 69
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    const v3, 0x7f0d0159

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    .line 73
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    const v3, 0x1060125

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v2, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    return-void
.end method

.method private initEnableMarkers(Z)V
    .locals 14
    .param p1, "enable"    # Z

    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    const/4 v12, 0x0

    .line 144
    iget v10, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mWidth:I

    iget v11, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 149
    .local v9, "totalLength":F
    if-eqz p1, :cond_0

    .line 150
    const/4 v0, 0x6

    .line 151
    .local v0, "initialCount":I
    const/16 v7, 0xa

    .line 157
    .local v7, "targetCount":I
    :goto_0
    int-to-float v10, v0

    div-float v1, v9, v10

    .line 158
    .local v1, "initialDistance":F
    int-to-float v10, v7

    div-float v8, v9, v10

    .line 160
    .local v8, "targetDistance":F
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 161
    new-instance v4, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;

    invoke-direct {v4, v12}, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;-><init>(Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;)V

    .line 162
    .local v4, "marker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    iput v1, v4, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    iput v1, v4, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mMarkerX:F

    .line 163
    iput v8, v4, Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;->mTargetMarkerX:F

    .line 164
    iget-object v10, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "initialCount":I
    .end local v1    # "initialDistance":F
    .end local v4    # "marker":Lcom/samsung/android/settings/widget/IntervalSeekBar$Marker;
    .end local v5    # "n":I
    .end local v7    # "targetCount":I
    .end local v8    # "targetDistance":F
    :cond_0
    const/16 v0, 0xa

    .line 154
    .restart local v0    # "initialCount":I
    const/4 v7, 0x6

    .restart local v7    # "targetCount":I
    goto :goto_0

    .line 167
    .restart local v1    # "initialDistance":F
    .restart local v5    # "n":I
    .restart local v8    # "targetDistance":F
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;

    invoke-direct {v2, v12}, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;-><init>(Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;)V

    .line 168
    .local v2, "line":Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;
    if-eqz p1, :cond_2

    .line 169
    iput v9, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mStartLineX:F

    iput v9, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mLineX:F

    .line 170
    mul-float v10, v13, v8

    sub-float v10, v9, v10

    iput v10, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mTargetLineX:F

    .line 175
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v6, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;

    invoke-direct {v6, v12}, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;-><init>(Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;)V

    .line 178
    .local v6, "pointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    iget-object v10, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 179
    sget v3, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    .line 183
    .local v3, "mSelectedFontSize":I
    :goto_3
    int-to-float v10, v3

    mul-float/2addr v10, v1

    iput v10, v6, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    iput v10, v6, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mPointerX:F

    .line 184
    int-to-float v10, v3

    mul-float/2addr v10, v8

    iput v10, v6, Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;->mTargetPointerX:F

    .line 185
    iget-object v10, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    return-void

    .line 172
    .end local v3    # "mSelectedFontSize":I
    .end local v6    # "pointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    :cond_2
    mul-float v10, v13, v1

    sub-float v10, v9, v10

    iput v10, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mStartLineX:F

    iput v10, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mLineX:F

    .line 173
    iput v9, v2, Lcom/samsung/android/settings/widget/IntervalSeekBar$Line;->mTargetLineX:F

    goto :goto_2

    .line 181
    .restart local v6    # "pointer":Lcom/samsung/android/settings/widget/IntervalSeekBar$Pointer;
    :cond_3
    sget v3, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    .restart local v3    # "mSelectedFontSize":I
    goto :goto_3
.end method

.method private resetMarkers()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 188
    return-void
.end method


# virtual methods
.method public animationStart(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->initEnableMarkers(Z)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 251
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 248
    return-void

    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    add-int v3, v4, v5

    .line 260
    .local v3, "translate_dx":I
    iget v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingLeft:I

    iget-object v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    const-string/jumbo v4, "IntervalSeekBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDraw canvas.getHeight() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", translate_dx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mPaddingTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mPaddingBottom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getMax()I

    move-result v2

    .line 266
    .local v2, "num_of_interval":I
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "elite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 270
    .local v1, "interval":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mWidth:I

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 273
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    iget-object v4, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    .end local v0    # "i":I
    .end local v1    # "interval":F
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 277
    .restart local v0    # "i":I
    .restart local v1    # "interval":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "interval":F
    .end local v2    # "num_of_interval":I
    .end local v3    # "translate_dx":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setDrawable(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method
