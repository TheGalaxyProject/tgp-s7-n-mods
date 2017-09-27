.class Lcom/android/systemui/volume/SecVolumeDialog$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const v11, 0x7f0d0340

    const/4 v10, 0x0

    const v9, 0x7f0d0344

    .line 2329
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->-set20(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2331
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap17(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 2332
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2333
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 2335
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get34(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 2337
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2338
    .local v3, "newConfig":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 2339
    .local v0, "density":I
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v6

    if-eq v0, v6, :cond_1

    .line 2340
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DENSITY CHANGED from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-set8(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    .line 2342
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2343
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 2346
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2347
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "desktopmode"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {v7, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-set9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2349
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    .line 2351
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get20()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get21()Z

    move-result v6

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eq v6, v7, :cond_4

    .line 2352
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2353
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2354
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2355
    .local v4, "res":Landroid/content/res/Resources;
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-set14(Z)Z

    .line 2356
    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog;->-set13(Z)Z

    .line 2358
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v6, :cond_6

    .line 2359
    const/16 v6, 0x55

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2360
    const v6, 0x7f0d0349

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2361
    const v6, 0x7f0d034a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2362
    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2371
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "window":Landroid/view/Window;
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2372
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string/jumbo v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2374
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2375
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2376
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2328
    :cond_5
    :goto_1
    return-void

    .line 2364
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "window":Landroid/view/Window;
    :cond_6
    const/16 v6, 0x31

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2365
    const v6, 0x7f0d02d6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2366
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2367
    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 2379
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "window":Landroid/view/Window;
    .restart local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 2381
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2382
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2383
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2384
    :cond_8
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 2386
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2387
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2388
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 2308
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 2323
    return-void
.end method

.method public onPlaySound()V
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    .line 2413
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 2303
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 2408
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 2401
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2395
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 2394
    :cond_0
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap14(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 2430
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 2318
    return-void
.end method

.method public onStopSound()V
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    .line 2418
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    .line 2424
    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->ZenModeChanged()V

    .line 2435
    return-void
.end method
