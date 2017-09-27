.class public abstract Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "OpenThemeSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mIsScreenOn:Z

.field private mMinInterval:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    .line 32
    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 34
    return-void
.end method

.method private startDraw()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 94
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    iput v1, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->start()V

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    .line 104
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_0
.end method

.method private stopDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->interrupt()V

    .line 114
    iput-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->stopDraw()V

    .line 62
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    .line 49
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    .line 41
    :cond_0
    return-void
.end method

.method public setMinInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    .line 57
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 70
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->startDraw()V

    .line 75
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    .line 82
    :cond_0
    return-void
.end method
