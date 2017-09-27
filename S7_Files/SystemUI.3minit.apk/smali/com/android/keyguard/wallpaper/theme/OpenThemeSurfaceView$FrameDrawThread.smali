.class Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "OpenThemeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 123
    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 124
    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 125
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 128
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 127
    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 203
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 202
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 139
    .local v14, "startTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v5, :cond_7

    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 143
    .local v12, "startT":J
    monitor-enter p0

    .line 145
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v5, :cond_3

    .line 146
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 153
    .end local v2    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 156
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    monitor-exit p0

    .line 159
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 160
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 161
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-ne v5, v0, :cond_2

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 164
    .local v8, "endTime":J
    sub-long v16, v8, v14

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x42374876e8000000L    # 1.0E11

    div-double v16, v18, v16

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v18

    .line 163
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 164
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 163
    div-double v10, v16, v18

    .line 165
    .local v10, "fps":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->-get0(Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;

    move-result-object v5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "fps: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-wide v14, v8

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 171
    .end local v8    # "endTime":J
    .end local v10    # "fps":D
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 178
    .local v6, "endT":J
    sub-long v16, v6, v12

    :try_start_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    cmp-long v5, v16, v18

    if-gez v5, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v6

    const-wide/16 v18, 0x96

    cmp-long v5, v16, v18

    if-lez v5, :cond_6

    .line 182
    const-wide/16 v16, 0x64

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "endT":J
    .restart local v2    # "c":Landroid/graphics/Canvas;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 151
    .local v2, "c":Landroid/graphics/Canvas;
    if-eqz v2, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :cond_4
    if-eqz v2, :cond_1

    .line 156
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 143
    .end local v2    # "c":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 154
    :catchall_1
    move-exception v5

    .line 155
    if-eqz v2, :cond_5

    .line 156
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 154
    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    .restart local v6    # "endT":J
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 133
    .end local v6    # "endT":J
    .end local v12    # "startT":J
    :cond_7
    return-void
.end method

.method public suspendThread()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 193
    return-void
.end method
