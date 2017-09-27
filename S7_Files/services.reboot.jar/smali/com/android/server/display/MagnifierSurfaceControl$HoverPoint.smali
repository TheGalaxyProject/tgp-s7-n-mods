.class Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverPoint"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Point"


# instance fields
.field private final DEBUG:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointFxSession:Landroid/view/SurfaceSession;

.field final mPointLock:Ljava/lang/Object;

.field private mPointSurface:Landroid/view/Surface;

.field private mPointSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->DEBUG:Z

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    .line 505
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 506
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    .line 507
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 509
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    .line 510
    const-string/jumbo v2, "OverlayMagnifierPoint"

    const/4 v5, -0x2

    .line 511
    const v6, -0x7ffffffc

    move v3, p3

    move v4, p3

    .line 509
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    .line 512
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 513
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 514
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e8480

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 522
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 523
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v9, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 525
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 526
    .local v7, "c":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 504
    return-void

    .line 516
    .end local v7    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v8

    .line 517
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    invoke-virtual {v8}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 518
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    .line 519
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 518
    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 568
    const-string/jumbo v0, "Magnifier.Point"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 575
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 566
    return-void

    .line 577
    :catchall_0
    move-exception v0

    .line 578
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 577
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 553
    const-string/jumbo v0, "Magnifier.Point"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 559
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 551
    return-void

    .line 560
    :catchall_0
    move-exception v0

    .line 561
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 560
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 555
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 530
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 538
    const-string/jumbo v0, "Magnifier.Point"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 544
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 536
    return-void

    .line 545
    :catchall_0
    move-exception v0

    .line 546
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 545
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 540
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
