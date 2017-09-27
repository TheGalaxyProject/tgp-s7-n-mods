.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
.super Landroid/view/View;
.source "Donut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;
    }
.end annotation


# instance fields
.field private addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

.field private afterPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private backDonutPaint:Landroid/graphics/Paint;

.field private bmp:Landroid/graphics/Bitmap;

.field private cleanAnimator:Landroid/animation/ValueAnimator;

.field private cleanSweepAngle:F

.field private deltaAnimator:Landroid/animation/ValueAnimator;

.field private donutBitmap:Landroid/graphics/Bitmap;

.field private donutBottom:I

.field private donutCanvas:Landroid/graphics/Canvas;

.field private donutLeft:I

.field private donutPaint:Landroid/graphics/Paint;

.field private donutRadius:I

.field private donutRight:I

.field private donutTop:I

.field private drawBackgroundCircle:Z

.field private foldAnimator:Landroid/animation/ValueAnimator;

.field private isAnimateClean:Z

.field private isCleanPiePhase:Z

.field private isFoldReverse:Z

.field private isFoldnSpread:Z

.field private isLineAnimatorCanceled:Z

.field private isSpreadReverse:Z

.field private lineAnimator:Landroid/animation/ValueAnimator;

.field private lineBottom:I

.field private lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

.field private lineColor:Ljava/lang/String;

.field private lineLeft:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineRight:I

.field private lineTop:I

.field private lineValue:F

.field private lineWidth:F

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mIsDirectionRTL:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLinePath:Landroid/graphics/Path;

.field private final mirrorCanvas:Landroid/graphics/Canvas;

.field private mirroredBmp:Landroid/graphics/Bitmap;

.field private pointAnimator:Landroid/animation/ValueAnimator;

.field private pointPaint:Landroid/graphics/Paint;

.field private pointRadius:F

.field private pointValue:F

.field private rectf:Landroid/graphics/RectF;

.field private spreadAnimator:Landroid/animation/ValueAnimator;

.field private thisPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private xf:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonutDelta(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V
    .locals 0
    .param p1, "targetPie"    # Ljava/util/ArrayList;
    .param p2, "value"    # F
    .param p3, "isSpreadReverse"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonut(Ljava/util/ArrayList;FZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0
    .param p1, "arriveAngle"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->animateCleanPie(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLineCallback()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    .line 64
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    .line 66
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    .line 68
    const-string/jumbo v0, "#105E7A"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 80
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    .line 82
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    .line 84
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    .line 108
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "Donut(context, left, top, radius)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    .line 111
    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    .line 112
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    .line 113
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    .line 114
    iput p4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0606

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0607

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    .line 118
    mul-int/lit8 v0, p4, 0x2

    mul-int/lit8 v1, p4, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    mul-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    .line 125
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    .line 126
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 127
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    .line 128
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 129
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    .line 130
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLayerType(ILandroid/graphics/Paint;)V

    .line 146
    mul-int/lit8 v0, p4, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->loadImageDrawable(Landroid/content/Context;I)V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V

    .line 149
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 150
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    .line 106
    return-void
.end method

.method private AnimateDonut(Ljava/util/ArrayList;FZ)V
    .locals 7
    .param p2, "value"    # F
    .param p3, "isSpreadReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;FZ)V"
        }
    .end annotation

    .prologue
    .local p1, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/high16 v6, 0x3f000000    # 0.5f

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 191
    if-eqz p3, :cond_1

    .line 192
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    .line 193
    .local v0, "finalStartAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    .line 199
    .local v1, "finalSweepAngle":F
    :goto_1
    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    .line 201
    add-float/2addr v1, v6

    .line 209
    :cond_0
    :goto_2
    mul-float v3, p2, v0

    .line 210
    .local v3, "startAngle":F
    mul-float v4, p2, v1

    .line 212
    .local v4, "sweepAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 213
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "finalStartAngle":F
    .end local v1    # "finalSweepAngle":F
    .end local v3    # "startAngle":F
    .end local v4    # "sweepAngle":F
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseStartAngle()F

    move-result v0

    .line 196
    .restart local v0    # "finalStartAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseSweepAngle()F

    move-result v1

    .restart local v1    # "finalSweepAngle":F
    goto :goto_1

    .line 204
    :cond_2
    if-eqz v2, :cond_0

    .line 205
    sub-float/2addr v1, v6

    goto :goto_2

    .line 183
    .end local v0    # "finalStartAngle":F
    .end local v1    # "finalSweepAngle":F
    :cond_3
    return-void
.end method

.method private AnimateDonutDelta(F)V
    .locals 12
    .param p1, "value"    # F

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    .line 165
    .local v2, "finalSweepAngle":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v0

    .line 167
    .local v0, "finalFromSweepAngle":F
    sub-float v6, v10, p1

    sub-float v7, v0, v2

    mul-float/2addr v6, v7

    add-float v4, v2, v6

    .line 169
    .local v4, "sweepAngle":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 171
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    .line 173
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v3

    .line 174
    .local v3, "finalSweepAngle2":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    .line 176
    .local v1, "finalFromSweepAngle2":F
    sub-float v6, v10, p1

    sub-float v7, v1, v3

    mul-float/2addr v6, v7

    add-float v5, v3, v6

    .line 178
    .local v5, "sweepAngle2":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 179
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 159
    .end local v1    # "finalFromSweepAngle2":F
    .end local v3    # "finalSweepAngle2":F
    .end local v5    # "sweepAngle2":F
    :cond_0
    return-void
.end method

.method private animateCleanPie(F)V
    .locals 1
    .param p1, "arriveAngle"    # F

    .prologue
    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    .line 220
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setFinalSweepAngle(F)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 217
    return-void
.end method

.method private calculateLineInvalidate()V
    .locals 4

    .prologue
    .line 775
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aThisPie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 776
    .local v0, "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    if-le v2, v3, :cond_1

    .line 777
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    .line 779
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    if-ge v2, v3, :cond_2

    .line 780
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    .line 782
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    if-le v2, v3, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    goto :goto_0

    .line 774
    .end local v0    # "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_3
    return-void
.end method

.method private cancelAllAnimator()V
    .locals 2

    .prologue
    .line 652
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    .line 654
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 656
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 657
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 658
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 660
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    .line 651
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 645
    :cond_0
    return-void
.end method

.method private cancelPointnLineAnimator()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 665
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 666
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    .line 663
    return-void
.end method

.method private drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pie"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .prologue
    .line 690
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    .line 691
    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 690
    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 689
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v8, v2, v3

    .line 736
    .local v8, "center_x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v9, v2, v3

    .line 737
    .local v9, "center_y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v11

    .line 738
    .local v11, "line_x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v12

    .line 740
    .local v12, "line_y":I
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v2

    .line 742
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 741
    add-int/2addr v2, v3

    .line 742
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    .line 741
    add-int v8, v2, v3

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v2

    .line 744
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 743
    add-int/2addr v2, v3

    .line 744
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    .line 743
    add-int v9, v2, v3

    .line 747
    :cond_0
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2

    .line 734
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 750
    :cond_2
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 752
    .local v16, "theta":D
    int-to-float v2, v8

    sub-int v3, v12, v9

    int-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v13, v2, v3

    .line 753
    .local v13, "slope_x":F
    int-to-float v14, v12

    .line 754
    .local v14, "slope_y":F
    sub-int v2, v11, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v2, v3

    int-to-float v3, v8

    add-float v5, v2, v3

    .line 756
    .local v5, "drawLine_x":F
    if-lt v12, v9, :cond_3

    .line 757
    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v6, v2, v3

    .line 762
    .local v6, "drawLine_y":F
    :goto_2
    cmpg-float v2, v5, v13

    if-gez v2, :cond_4

    .line 763
    int-to-float v3, v8

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 759
    .end local v6    # "drawLine_y":F
    :cond_3
    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    sub-float v6, v2, v3

    .restart local v6    # "drawLine_y":F
    goto :goto_2

    .line 765
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v8

    int-to-float v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v12

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 721
    .end local v5    # "drawLine_x":F
    .end local v6    # "drawLine_y":F
    .end local v8    # "center_x":I
    .end local v9    # "center_y":I
    .end local v11    # "line_x":I
    .end local v12    # "line_y":I
    .end local v13    # "slope_x":F
    .end local v14    # "slope_y":F
    .end local v16    # "theta":D
    :cond_5
    return-void
.end method

.method private drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "aTargetPie$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 696
    .local v6, "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    .line 697
    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p1

    .line 696
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 694
    .end local v6    # "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_0
    return-void
.end method

.method private drawPoint(Ljava/lang/String;)V
    .locals 9
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42f00000    # 120.0f

    .line 702
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 704
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 703
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    .line 708
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    .line 709
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v1

    .line 710
    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 709
    add-int/2addr v1, v3

    int-to-float v3, v1

    .line 711
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v1

    .line 712
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 711
    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 712
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    .line 708
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 714
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    .line 715
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    .line 716
    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    .line 714
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 701
    :cond_3
    return-void
.end method

.method private initializeDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 671
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    .line 672
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    .line 669
    return-void
.end method

.method private loadImageDrawable(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimension"    # I

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020433

    .line 154
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {v0, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method private playFoldAnimator()V
    .locals 4

    .prologue
    .line 626
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "playFoldAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 628
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 625
    return-void
.end method

.method private playSpreadAnimator()V
    .locals 4

    .prologue
    .line 619
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "playSpreadAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 621
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 622
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 618
    return-void
.end method

.method private setAnimator()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    .line 237
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "setAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    .line 349
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 379
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    .line 409
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    return-void

    .line 239
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 278
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 316
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 348
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 376
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 408
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBackgroundDonut(Z)V
    .locals 3
    .param p1, "isReverse"    # Z

    .prologue
    .line 677
    if-eqz p1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    .line 679
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 678
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setLineCallback()V
    .locals 3

    .prologue
    .line 789
    const-string/jumbo v0, "secVisualEffect_Donut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lineCallbackListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;->onLineFinished()V

    .line 788
    :cond_0
    return-void
.end method

.method private startAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 639
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 638
    return-void
.end method


# virtual methods
.method public drawDonutWithoutAnimation(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const-string/jumbo v4, "secVisualEffect_Donut"

    const-string/jumbo v5, "drawDonutWithoutAnimation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 603
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 604
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 608
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aTargetPie$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 609
    .local v0, "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v2

    .line 610
    .local v2, "finalStartAngle":F
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v3

    .line 612
    .local v3, "finalSweepAngle":F
    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 613
    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    goto :goto_0

    .line 615
    .end local v0    # "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    .end local v2    # "finalStartAngle":F
    .end local v3    # "finalSweepAngle":F
    :cond_0
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 600
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 836
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    if-eqz v0, :cond_4

    .line 838
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 839
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 840
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    .line 845
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 851
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    :cond_2
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 857
    .local v5, "m":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 859
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 858
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    .line 860
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 835
    .end local v5    # "m":Landroid/graphics/Matrix;
    :goto_1
    return-void

    .line 854
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 863
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 864
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_5

    .line 865
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 867
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    .line 869
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_6

    .line 870
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    .line 873
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 875
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playPointAnimator()V
    .locals 5

    .prologue
    .line 544
    const-string/jumbo v3, "secVisualEffect_Donut"

    const-string/jumbo v4, "playPointAnimator"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, "count":I
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aThisPie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 547
    .local v0, "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine()Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 554
    :cond_2
    return-void

    .line 552
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->calculateLineInvalidate()V

    .line 559
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 543
    return-void
.end method

.method public registerLineCallbackListener(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    .line 795
    return-void
.end method

.method public setDirectionRTL(Z)V
    .locals 0
    .param p1, "isDirectionRTL"    # Z

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    .line 830
    return-void
.end method

.method public setLayoutDimension(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 824
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    .line 825
    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    .line 826
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    .line 827
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 823
    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V
    .locals 4
    .param p3, "isReverse"    # Z
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .local p1, "firstPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    .local p2, "secondPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 448
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "startAnimatorFoldnSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 452
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 468
    iput-object p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 469
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setBackgroundDonut(Z)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 476
    if-eqz p3, :cond_0

    .line 477
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 478
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 484
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playFoldAnimator()V

    .line 447
    return-void

    .line 480
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 481
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    goto :goto_0
.end method

.method public startAnimatorSpread(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "firstPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v4, 0x0

    .line 515
    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "startAnimatorSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 519
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 520
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 521
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 524
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playSpreadAnimator()V

    .line 514
    return-void
.end method
