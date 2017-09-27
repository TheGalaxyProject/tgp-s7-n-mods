.class public Lcom/android/systemui/egg/MLand;
.super Landroid/widget/FrameLayout;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/MLand$Building;,
        Lcom/android/systemui/egg/MLand$Cactus;,
        Lcom/android/systemui/egg/MLand$Cloud;,
        Lcom/android/systemui/egg/MLand$GameView;,
        Lcom/android/systemui/egg/MLand$Mountain;,
        Lcom/android/systemui/egg/MLand$Obstacle;,
        Lcom/android/systemui/egg/MLand$Params;,
        Lcom/android/systemui/egg/MLand$Player;,
        Lcom/android/systemui/egg/MLand$Pop;,
        Lcom/android/systemui/egg/MLand$Scenery;,
        Lcom/android/systemui/egg/MLand$Star;,
        Lcom/android/systemui/egg/MLand$Stem;
    }
.end annotation


# static fields
.field static final ANTENNAE:[I

.field static final CACTI:[I

.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field static final EYES:[I

.field static final MOUNTAINS:[I

.field static final MOUTHS:[I

.field private static PARAMS:Lcom/android/systemui/egg/MLand$Params;

.field private static final SKIES:[[I

.field private static dp:F

.field static final hsv:[F

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdown:I

.field private mCurrentPipeId:I

.field private mFlipped:Z

.field private mFrozen:Z

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerTracePaint:Landroid/graphics/Paint;

.field private mPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Player;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScene:I

.field private mScoreFields:Landroid/view/ViewGroup;

.field private mSplash:Landroid/view/View;

.field private mTaps:I

.field private mTimeOfDay:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/egg/MLand$Params;
    .locals 1

    sget-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/egg/MLand;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/egg/MLand;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/egg/MLand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    return p1
.end method

.method static synthetic -wrap0(I)F
    .locals 1
    .param p0, "bgcolor"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->luma(I)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/egg/MLand;JJ)V
    .locals 1
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/MLand;->step(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, -0xfffff0

    const/4 v3, 0x3

    .line 60
    const-string/jumbo v0, "MLand"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    .line 77
    const-string/jumbo v0, "MLand.iddqd"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 164
    const v1, -0x3f3f01

    const v2, -0x5f5f01

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 165
    const/high16 v1, -0x1000000

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 166
    const v1, -0xffffc0

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 167
    const v1, -0x5f7fe0

    const v2, -0xdfbf80

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    .line 163
    sput-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 297
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/egg/MLand;->hsv:[F

    .line 1003
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/egg/MLand;->sTmpRect:Landroid/graphics/Rect;

    .line 1233
    const v0, 0x7f020317

    const v1, 0x7f020318

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    .line 1234
    const v0, 0x7f020319

    const v1, 0x7f02031a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->EYES:[I

    .line 1235
    const v0, 0x7f02031c

    const v1, 0x7f02031d

    .line 1236
    const v2, 0x7f02031e

    const v3, 0x7f02031f

    .line 1235
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    .line 1400
    const v0, 0x7f020056

    const v1, 0x7f020057

    const v2, 0x7f020058

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->CACTI:[I

    .line 1411
    const v0, 0x7f020321

    const v1, 0x7f020322

    const v2, 0x7f020323

    .line 1410
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    .line 57
    return-void

    .line 297
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v2, -0x7f000001

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 141
    const/16 v1, 0xe

    .line 140
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    .line 156
    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    .line 193
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    .line 194
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    .line 195
    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setFocusable(Z)V

    .line 196
    new-instance v0, Lcom/android/systemui/egg/MLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    .line 197
    sget-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    .line 198
    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/egg/MLand;->dp:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->setLayoutDirection(I)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "egg_mland_create"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "MLand"

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void

    .line 67
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 5
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/TextView;

    .line 314
    .local v0, "scoreField":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    .line 316
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 317
    const/4 v3, -0x2

    .line 318
    const/4 v4, -0x1

    .line 316
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 315
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static final clamp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 637
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "f":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private clearPlayers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public static final frand()F
    .locals 2

    .prologue
    .line 641
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 645
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 649
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 5
    .param p0, "dev"    # Landroid/view/InputDevice;

    .prologue
    const v4, 0x1000010

    const/4 v1, 0x1

    .line 258
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    .line 261
    .local v0, "sources":I
    and-int/lit16 v2, v0, 0x401

    const/16 v3, 0x401

    if-eq v2, v3, :cond_0

    .line 262
    and-int v2, v0, v4

    if-ne v2, v4, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 629
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private static luma(I)F
    .locals 3
    .param p0, "bgcolor"    # I

    .prologue
    .line 300
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    const/high16 v1, 0x4b7f0000    # 1.671168E7f

    div-float/2addr v0, v1

    .line 301
    const v1, 0xff00

    and-int/2addr v1, p0

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    const/high16 v2, 0x477f0000    # 65280.0f

    div-float/2addr v1, v2

    .line 300
    add-float/2addr v0, v1

    .line 302
    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 300
    add-float/2addr v0, v1

    return v0
.end method

.method public static pick([I)I
    .locals 2
    .param p0, "l"    # [I

    .prologue
    .line 653
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method private poke(I)V
    .locals 1
    .param p1, "playerIndex"    # I

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 903
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    .line 902
    return-void
.end method

.method private poke(IFF)V
    .locals 6
    .param p1, "playerIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 907
    const-string/jumbo v1, "poke(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-eqz v1, :cond_0

    return-void

    .line 909
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v1, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 912
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v1, :cond_3

    .line 913
    invoke-virtual {p0, v5}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 906
    :cond_2
    :goto_0
    return-void

    .line 915
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    .line 916
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    if-nez v0, :cond_4

    return-void

    .line 917
    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    .line 918
    iget v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 919
    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 920
    iget v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 921
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private realignPlayers()V
    .locals 7

    .prologue
    .line 333
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 334
    .local v0, "N":I
    iget v4, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/lit8 v5, v0, -0x1

    sget-object v6, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 335
    .local v3, "x":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    .line 337
    .local v2, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Player;->setX(F)V

    .line 338
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v2    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    return-void
.end method

.method private removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 2
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->removeView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/egg/MLand$Player;->-get2(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 324
    :cond_0
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2
    .param p0, "v"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 633
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private step(JJ)V
    .locals 31
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J

    .prologue
    .line 657
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    .line 658
    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    .line 660
    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 661
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    .line 662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    .line 666
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v2

    .line 667
    .local v2, "N":I
    const/4 v12, 0x0

    .line 668
    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_2

    .line 669
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 670
    .local v29, "v":Landroid/view/View;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v29

    .line 671
    check-cast v3, Lcom/android/systemui/egg/MLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/egg/MLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/egg/MLand$GameView;->step(JJFF)V

    .line 668
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 675
    .end local v29    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_c

    .line 676
    const/16 v17, 0x0

    .line 677
    .local v17, "livingPlayers":I
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    .line 678
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v21

    .line 680
    .local v21, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get0(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 682
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 683
    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_6

    .line 684
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->poke(I)V

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    .line 694
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 695
    .local v18, "maxPassedStem":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "j":I
    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_3
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    if-lez v16, :cond_8

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/egg/MLand$Obstacle;

    .line 697
    .local v19, "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->intersects(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_7

    .line 701
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->cleared(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 702
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Stem;

    if-eqz v3, :cond_5

    .line 703
    check-cast v19, Lcom/android/systemui/egg/MLand$Stem;

    .end local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    :cond_5
    :goto_4
    move/from16 v16, v15

    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto :goto_3

    .line 687
    .end local v16    # "j":I
    .end local v18    # "maxPassedStem":I
    :cond_6
    const-string/jumbo v3, "player %d hit the floor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    .line 689
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_2

    .line 698
    .restart local v15    # "j":I
    .restart local v18    # "maxPassedStem":I
    .restart local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    :cond_7
    const-string/jumbo v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    .line 700
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_4

    .line 708
    .end local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    :cond_8
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get1(Lcom/android/systemui/egg/MLand$Player;)I

    move-result v3

    move/from16 v0, v18

    if-le v0, v3, :cond_9

    .line 709
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->-wrap0(Lcom/android/systemui/egg/MLand$Player;I)V

    .line 713
    .end local v15    # "j":I
    .end local v18    # "maxPassedStem":I
    :cond_9
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get0(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v17, v17, 0x1

    .line 677
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 716
    .end local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_b
    if-nez v17, :cond_c

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_taps"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 720
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 722
    .local v25, "playerCount":I
    const/16 v24, 0x0

    .local v24, "pi":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/egg/MLand$Player;

    .line 724
    .restart local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_score"

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->getScore()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 722
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 731
    .end local v12    # "i":I
    .end local v17    # "livingPlayers":I
    .end local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    .end local v24    # "pi":I
    .end local v25    # "playerCount":I
    .local v13, "i":I
    :goto_6
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-lez v13, :cond_e

    .line 732
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 733
    .restart local v29    # "v":Landroid/view/View;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;

    if-eqz v3, :cond_d

    .line 734
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v29    # "v":Landroid/view/View;
    :cond_c
    :goto_7
    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_6

    .line 738
    .end local v13    # "i":I
    .restart local v12    # "i":I
    .restart local v29    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Scenery;

    if-eqz v3, :cond_c

    move-object/from16 v26, v29

    .line 739
    check-cast v26, Lcom/android/systemui/egg/MLand$Scenery;

    .line 740
    .local v26, "s":Lcom/android/systemui/egg/MLand$Scenery;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7

    .line 747
    .end local v26    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    .end local v29    # "v":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    .line 748
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    .line 749
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    .line 751
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 752
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    .line 751
    add-int v20, v3, v4

    .line 754
    .local v20, "obstacley":I
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    .line 755
    .local v14, "inset":I
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v30, v3, 0x2

    .line 757
    .local v30, "yinset":I
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v10

    .line 758
    .local v10, "d1":I
    new-instance v27, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v20, v30

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    .line 759
    .local v27, "s1":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 760
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    .line 761
    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    .line 762
    const/16 v6, 0x33

    .line 759
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 764
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 765
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 766
    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 767
    const/4 v4, 0x0

    .line 766
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 768
    int-to-long v4, v10

    .line 766
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 769
    const-wide/16 v4, 0xfa

    .line 766
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v22, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 773
    .local v22, "p1":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 774
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    .line 775
    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    .line 776
    const/16 v6, 0x33

    .line 773
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 778
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 779
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 780
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    .line 781
    const/high16 v3, -0x41800000    # -0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    .line 782
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 783
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    .line 782
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 784
    const/high16 v4, 0x3f800000    # 1.0f

    .line 782
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 785
    const/high16 v4, -0x40800000    # -1.0f

    .line 782
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 786
    int-to-long v4, v10

    .line 782
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 787
    const-wide/16 v4, 0xfa

    .line 782
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v11

    .line 791
    .local v11, "d2":I
    new-instance v28, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 792
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int v4, v4, v20

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v30

    int-to-float v4, v4

    .line 793
    const/4 v5, 0x1

    .line 791
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    .line 794
    .local v28, "s2":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 795
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    .line 796
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    .line 797
    const/16 v6, 0x33

    .line 794
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 799
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    add-int v3, v3, v30

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 800
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 801
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 802
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    .line 801
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 803
    int-to-long v4, v11

    .line 801
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 804
    const-wide/16 v4, 0x190

    .line 801
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v23, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 808
    .local v23, "p2":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 809
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    .line 810
    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    .line 811
    const/16 v6, 0x33

    .line 808
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 813
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 814
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 815
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    .line 816
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    .line 817
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 818
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v30

    int-to-float v5, v0

    sub-float/2addr v4, v5

    .line 817
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 819
    const/high16 v4, 0x3f800000    # 1.0f

    .line 817
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 820
    const/high16 v4, 0x3f800000    # 1.0f

    .line 817
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 821
    int-to-long v4, v11

    .line 817
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 822
    const-wide/16 v4, 0x190

    .line 817
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v14    # "inset":I
    .end local v20    # "obstacley":I
    .end local v22    # "p1":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v23    # "p2":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v27    # "s1":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v28    # "s2":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v30    # "yinset":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->invalidate()V

    .line 656
    return-void
.end method

.method private thump(IJ)V
    .locals 6
    .param p1, "playerIndex"    # I
    .param p2, "ms"    # J

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    .local v0, "controllerId":I
    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 377
    .local v1, "dev":Landroid/view/InputDevice;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    .line 379
    long-to-float v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    .line 380
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 378
    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 381
    return-void

    .line 384
    .end local v0    # "controllerId":I
    .end local v1    # "dev":Landroid/view/InputDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p2, p3, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 369
    return-void
.end method

.method private unpoke(I)V
    .locals 5
    .param p1, "playerIndex"    # I

    .prologue
    .line 927
    const-string/jumbo v1, "unboost(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v1, :cond_0

    .line 929
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    .line 930
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    if-nez v0, :cond_1

    return-void

    .line 928
    .end local v0    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    return-void

    .line 931
    .restart local v0    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    .line 926
    return-void
.end method


# virtual methods
.method public addPlayer()V
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    .line 355
    return-void
.end method

.method public getControllerPlayer(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "player":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return v3

    .line 282
    :cond_1
    return v0
.end method

.method public getGameControllers()Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 267
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 268
    .local v2, "deviceIds":[I
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 269
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 270
    .local v0, "dev":Landroid/view/InputDevice;
    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "dev":Landroid/view/InputDevice;
    .end local v1    # "deviceId":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    return-object v3
.end method

.method public getGameTime()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    return v0
.end method

.method public getNumPlayers()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlayer(I)Lcom/android/systemui/egg/MLand$Player;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSplash()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 560
    new-instance v1, Lcom/android/systemui/egg/MLand$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$3;-><init>(Lcom/android/systemui/egg/MLand;)V

    .line 559
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 556
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 218
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 936
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/egg/MLand$Player;

    .line 940
    .local v9, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get3(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget v7, v9, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v11, -0x7f000001

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget v7, v9, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v11, -0x7f000001

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get3(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v3

    .line 944
    .local v3, "x1":F
    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get4(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v4

    .line 945
    .local v4, "y1":F
    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 946
    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getX()F

    move-result v2

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getPivotX()F

    move-result v7

    add-float v5, v2, v7

    .line 947
    .local v5, "x2":F
    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getY()F

    move-result v2

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getPivotY()F

    move-result v7

    add-float v6, v2, v7

    .line 948
    .local v6, "y2":F
    sub-float v2, v5, v3

    float-to-double v12, v2

    sub-float v2, v6, v4

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    double-to-float v2, v12

    const v7, 0x3fc90fdb

    sub-float v8, v7, v2

    .line 949
    .local v8, "angle":F
    float-to-double v12, v3

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v3, v12

    .line 950
    float-to-double v12, v4

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v4, v12

    .line 951
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 956
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v8    # "angle":F
    .end local v9    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 898
    const-string/jumbo v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 866
    const-string/jumbo v1, "keyDown: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    sparse-switch p1, :sswitch_data_0

    .line 877
    return v4

    .line 873
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    .line 874
    .local v0, "player":I
    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->poke(I)V

    .line 875
    return v5

    .line 867
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 882
    const-string/jumbo v1, "keyDown: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    sparse-switch p1, :sswitch_data_0

    .line 893
    return v4

    .line 889
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    .line 890
    .local v0, "player":I
    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    .line 891
    return v5

    .line 883
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 831
    const-string/jumbo v4, "touch: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 833
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 834
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 835
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 836
    .local v1, "playerIndex":I
    iget-boolean v4, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v1, v4, v1

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 847
    :pswitch_0
    return v7

    .line 840
    :pswitch_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    .line 841
    return v6

    .line 844
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    .line 845
    return v6

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 852
    const-string/jumbo v0, "trackball: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 861
    return v2

    .line 855
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->poke(I)V

    .line 856
    return v3

    .line 858
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    .line 859
    return v3

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removePlayer()V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    .line 364
    return-void
.end method

.method public reset()V
    .locals 30

    .prologue
    .line 388
    const-string/jumbo v25, "reset"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance v21, Landroid/graphics/drawable/GradientDrawable;

    .line 390
    sget-object v25, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 391
    sget-object v26, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    .line 389
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 393
    .local v21, "sky":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_1

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    .line 397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const/16 v25, -0x1

    :goto_1
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setScaleX(F)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v10

    .local v10, "i":I
    move v11, v10

    .line 400
    .end local v10    # "i":I
    .local v11, "i":I
    :goto_2
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    if-lez v11, :cond_3

    .line 401
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 402
    .local v23, "v":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$GameView;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    :cond_0
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .line 396
    .end local v11    # "i":I
    .end local v23    # "v":Landroid/view/View;
    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    .line 397
    :cond_2
    const/16 v25, 0x1

    goto :goto_1

    .line 407
    .restart local v10    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 408
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mWidth:I

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getHeight()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mHeight:I

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpl-double v25, v26, v28

    if-lez v25, :cond_9

    const/16 v25, 0x1

    :goto_3
    move/from16 v20, v25

    .line 414
    .local v20, "showingSun":Z
    :goto_4
    if-eqz v20, :cond_5

    .line 415
    new-instance v22, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 416
    .local v22, "sun":Lcom/android/systemui/egg/MLand$Star;
    const v25, 0x7f0206fe

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d042a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 418
    .local v24, "w":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 420
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3f28f5c3    # 0.66f

    mul-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 421
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 428
    :goto_5
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    .end local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_5
    if-nez v20, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v8, 0x1

    .line 432
    .local v8, "dark":Z
    :goto_6
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v9

    .line 433
    .local v9, "ff":F
    if-eqz v8, :cond_d

    const/high16 v25, 0x3f400000    # 0.75f

    cmpg-float v25, v9, v25

    if-gez v25, :cond_d

    .line 434
    :goto_7
    new-instance v14, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 435
    .local v14, "moon":Lcom/android/systemui/egg/MLand$Star;
    const v25, 0x7f020320

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    .line 436
    invoke-virtual {v14}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-eqz v8, :cond_e

    const/16 v25, 0xff

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 437
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v25, v26, v28

    if-lez v25, :cond_f

    const/16 v25, -0x1

    :goto_9
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setScaleX(F)V

    .line 438
    invoke-virtual {v14}, Lcom/android/systemui/egg/MLand$Star;->getScaleX()F

    move-result v25

    const/high16 v26, 0x40a00000    # 5.0f

    const/high16 v27, 0x41f00000    # 30.0f

    invoke-static/range {v26 .. v27}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setRotation(F)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d042a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 440
    .restart local v24    # "w":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    .line 441
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 442
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    .end local v8    # "dark":Z
    .end local v9    # "ff":F
    .end local v14    # "moon":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    div-int/lit8 v13, v25, 0x6

    .line 447
    .local v13, "mh":I
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpg-double v25, v26, v28

    if-gez v25, :cond_10

    const/4 v7, 0x1

    .line 448
    .local v7, "cloudless":Z
    :goto_a
    const/16 v4, 0x14

    .line 449
    .local v4, "N":I
    const/4 v10, 0x0

    :goto_b
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v10, v0, :cond_17

    .line 450
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v18

    .line 452
    .local v18, "r1":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fd3333333333333L    # 0.3

    cmpg-double v25, v26, v28

    if-gez v25, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 453
    new-instance v19, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 481
    .local v19, "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_8
    :goto_c
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Building;

    move/from16 v25, v0

    if-eqz v25, :cond_15

    .line 483
    const/16 v25, 0x50

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 495
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setTranslationX(F)V

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 413
    .end local v4    # "N":I
    .end local v7    # "cloudless":Z
    .end local v12    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "mh":I
    .end local v18    # "r1":F
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    .end local v20    # "showingSun":Z
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 423
    .restart local v20    # "showingSun":Z
    .restart local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .restart local v24    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f28f5c3    # 0.66f

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 424
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 425
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const v26, -0x3f008000    # -7.984375f

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_5

    .line 431
    .end local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "dark":Z
    goto/16 :goto_6

    .line 433
    .restart local v9    # "ff":F
    :cond_d
    const/high16 v25, 0x3f000000    # 0.5f

    cmpg-float v25, v9, v25

    if-gez v25, :cond_7

    goto/16 :goto_7

    .line 436
    .restart local v14    # "moon":Lcom/android/systemui/egg/MLand$Star;
    :cond_e
    const/16 v25, 0x80

    goto/16 :goto_8

    .line 437
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_9

    .line 447
    .end local v8    # "dark":Z
    .end local v9    # "ff":F
    .end local v14    # "moon":Lcom/android/systemui/egg/MLand$Star;
    .restart local v13    # "mh":I
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "cloudless":Z
    goto/16 :goto_a

    .line 454
    .restart local v4    # "N":I
    .restart local v18    # "r1":F
    :cond_11
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe3333333333333L    # 0.6

    cmpg-double v25, v26, v28

    if-gez v25, :cond_12

    if-eqz v7, :cond_14

    .line 457
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 466
    new-instance v19, Lcom/android/systemui/egg/MLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 469
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :goto_e
    int-to-float v0, v10

    move/from16 v25, v0

    const/high16 v26, 0x41a00000    # 20.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    .line 472
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v25, v0

    const v26, 0x3f59999a    # 0.85f

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    if-nez v25, :cond_13

    .line 474
    const v25, -0x777778

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setBackgroundColor(I)V

    .line 475
    sget-object v25, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v0, v13}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    .line 477
    :cond_13
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v6, v0

    .line 478
    .local v6, "c":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/egg/MLand$Scenery;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 479
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_8

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_c

    .line 455
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "c":I
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_14
    new-instance v19, Lcom/android/systemui/egg/MLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cloud;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 454
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto/16 :goto_c

    .line 459
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :pswitch_0
    new-instance v19, Lcom/android/systemui/egg/MLand$Mountain;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Mountain;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 460
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto/16 :goto_e

    .line 462
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :pswitch_1
    new-instance v19, Lcom/android/systemui/egg/MLand$Cactus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cactus;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 463
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto/16 :goto_e

    .line 485
    .restart local v12    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_15
    const/16 v25, 0x30

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v17

    .line 487
    .local v17, "r":F
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Star;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 488
    mul-float v25, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_d

    .line 490
    :cond_16
    mul-float v25, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v25, v26, v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_d

    .line 499
    .end local v12    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "r":F
    .end local v18    # "r1":F
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "p$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/egg/MLand$Player;

    .line 500
    .local v15, "p":Lcom/android/systemui/egg/MLand$Player;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;)V

    .line 501
    invoke-virtual {v15}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    goto :goto_f

    .line 504
    .end local v15    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/animation/TimeAnimator;->cancel()V

    .line 509
    :cond_19
    new-instance v25, Landroid/animation/TimeAnimator;

    invoke-direct/range {v25 .. v25}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/egg/MLand$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$1;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 387
    return-void

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScoreFieldHolder(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    .line 240
    if-eqz p1, :cond_0

    .line 241
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 242
    .local v0, "lt":Landroid/animation/LayoutTransition;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 243
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 245
    .end local v0    # "lt":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    .line 246
    .local v1, "p":Lcom/android/systemui/egg/MLand$Player;
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->-get2(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v4

    .line 247
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    const/4 v6, -0x2

    .line 249
    const/4 v7, -0x1

    .line 247
    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 246
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 238
    .end local v1    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    .line 253
    return-void
.end method

.method public setupPlayers(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->clearPlayers()V

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 351
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method public showSplash()V
    .locals 8

    .prologue
    const v7, 0x7f130266

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 576
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f130267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f130268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 570
    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 9
    .param p1, "startPlaying"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 519
    const-string/jumbo v5, "start(startPlaying=%s)"

    new-array v6, v8, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo v4, "true"

    :goto_0
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    if-gtz v4, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    .line 523
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 525
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130267

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 526
    .local v2, "playImage":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130268

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 528
    .local v3, "playText":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 529
    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 531
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    .line 532
    new-instance v4, Lcom/android/systemui/egg/MLand$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/egg/MLand$2;-><init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->post(Ljava/lang/Runnable;)Z

    .line 546
    .end local v2    # "playImage":Landroid/view/View;
    .end local v3    # "playText":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    .line 547
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    goto :goto_1

    .line 519
    .end local v0    # "p":Lcom/android/systemui/egg/MLand$Player;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v4, "false"

    goto :goto_0

    .line 550
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v4, :cond_3

    .line 551
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->start()V

    .line 552
    iput-boolean v8, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    .line 518
    :cond_3
    return-void
.end method

.method public startPlaying()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 584
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    .line 586
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/egg/MLand;->t:F

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getGameTime()F

    move-result v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->hideSplash()V

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 593
    iput v6, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 595
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 596
    .local v0, "N":I
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_players"

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 597
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 598
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    .line 599
    .local v2, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v2, v6}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    .line 600
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    .line 601
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->start()V

    .line 602
    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    .line 603
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->cancel()V

    .line 610
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 611
    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    .line 612
    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    .line 613
    sget-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    .line 614
    const/4 v2, 0x3

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    .line 615
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    .line 616
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    .line 617
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_0

    .line 619
    .end local v0    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    new-instance v2, Lcom/android/systemui/egg/MLand$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/egg/MLand$4;-><init>(Lcom/android/systemui/egg/MLand;)V

    .line 624
    const-wide/16 v4, 0xfa

    .line 619
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/egg/MLand;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
