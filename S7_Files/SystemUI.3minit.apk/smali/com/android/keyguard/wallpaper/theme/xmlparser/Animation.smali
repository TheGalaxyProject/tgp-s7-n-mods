.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;,
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluatorReverse;,
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluator;,
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluatorReverse;,
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluator;,
        Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field private elementDuration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field private preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->elementDuration:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->isAnimationStarted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->preSequence:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->isAnimationStarted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->preSequence:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startTime:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    .line 37
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    .line 38
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    .line 40
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->ra:F

    .line 41
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->rb:F

    .line 43
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    .line 44
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    .line 45
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    .line 47
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    .line 49
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    .line 50
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    .line 52
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    .line 59
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    .line 60
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    .line 62
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 63
    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    .line 64
    iput-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    .line 65
    iput-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    .line 66
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    .line 67
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    .line 68
    iput-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startTime:J

    .line 69
    iput-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->elementDuration:J

    .line 70
    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->preSequence:I

    .line 71
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->isAnimationStarted:Z

    .line 74
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    .line 34
    return-void
.end method


# virtual methods
.method public buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;
    .param p2, "animation"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v4, "round"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    iget-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 191
    iget-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 193
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 194
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    return-object v0

    .line 82
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const-string/jumbo v4, "ellipse"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 84
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-string/jumbo v4, "parabola"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 86
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    const-string/jumbo v4, "sinX"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 88
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    const-string/jumbo v4, "sinY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 90
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    const-string/jumbo v4, "ImageResource"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 91
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    new-array v2, v4, [I

    .line 92
    .local v2, "imageSetId":[I
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    new-array v3, v4, [I

    .line 93
    .local v3, "valueToAnimate":[I
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    new-array v4, v4, [I

    iput-object v4, p1, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mImageSetIds:[I

    .line 94
    iget-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    iget v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->elementDuration:J

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    if-ge v1, v4, :cond_5

    .line 97
    aput v1, v3, v1

    .line 98
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    aput v4, v2, v1

    .line 99
    iget-object v4, p1, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mImageSetIds:[I

    aget v5, v2, v1

    aput v5, v4, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;

    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$1;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;

    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "i":I
    .end local v2    # "imageSetId":[I
    .end local v3    # "valueToAnimate":[I
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto/16 :goto_0
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 220
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 222
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 223
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    .line 225
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 226
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$4;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 242
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 244
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v1, v2, v3, v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;-><init>(FFF)V

    .line 243
    new-array v2, v7, [Ljava/lang/Object;

    .line 244
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    .line 243
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 245
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$5;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    return-object v0

    .line 257
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v1, v2, v3, v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluatorReverse;-><init>(FFF)V

    .line 256
    new-array v2, v7, [Ljava/lang/Object;

    .line 257
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 258
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    .line 256
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 259
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$6;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    return-object v0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 200
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 202
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    .line 203
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    .line 205
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 206
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 317
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 318
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluator;

    .line 319
    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    .line 318
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluator;-><init>(FFFF)V

    new-array v2, v8, [Ljava/lang/Object;

    .line 319
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 318
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 320
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$7;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 329
    return-object v0

    .line 332
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinXEvaluatorReverse;-><init>(FFFF)V

    .line 331
    new-array v2, v8, [Ljava/lang/Object;

    .line 333
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 331
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 334
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$8;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 343
    return-object v0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 396
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 397
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluator;

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    .line 398
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    .line 397
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluator;-><init>(FFFF)V

    new-array v2, v8, [Ljava/lang/Object;

    .line 398
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 397
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 399
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$9;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    return-object v0

    .line 410
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    .line 411
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    .line 410
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$SinYEvaluatorReverse;-><init>(FFFF)V

    new-array v2, v8, [Ljava/lang/Object;

    .line 411
    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 410
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 412
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$10;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    return-object v0
.end method
