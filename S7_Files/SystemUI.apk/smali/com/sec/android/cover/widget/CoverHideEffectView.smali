.class public Lcom/sec/android/cover/widget/CoverHideEffectView;
.super Landroid/opengl/GLSurfaceView;
.source "CoverHideEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;,
        Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mFadeWidthPx:F

.field private mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

.field private final mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/widget/CoverHideEffectView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    .line 33
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mAnimationDuration:I

    .line 46
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setEGLConfigChooser(IIIIII)V

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setEGLContextClientVersion(I)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 50
    new-instance v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;-><init>(Lcom/sec/android/cover/widget/CoverHideEffectView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    .line 51
    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setRenderMode(I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_hide_effect_width:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mFadeWidthPx:F

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_hide_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mAnimationDuration:I

    .line 43
    return-void
.end method


# virtual methods
.method public setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    .line 71
    return-void
.end method

.method public stopAnimation(Z)V
    .locals 1
    .param p1, "callCallback"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mRenderer:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->stopAnimation(Z)V

    .line 67
    return-void
.end method
