.class public Lcom/android/systemui/recents/tv/views/TaskCardView;
.super Landroid/widget/LinearLayout;
.source "TaskCardView.java"


# static fields
.field public static isTvmode:Z


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCornerRadius:I

.field private mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

.field private mDismissIconView:Landroid/view/View;

.field private mDismissState:Z

.field private mInfoFieldView:Landroid/view/View;

.field private mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mThumbnailView:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTouchExplorationEnabled:Z

.field private mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/views/TaskCardView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mCornerRadius:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 85
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setLayoutDirection(I)V

    .line 87
    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v4, "uimode"

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 89
    .local v1, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    .line 81
    return-void
.end method

.method public static getNumberOfVisibleTasks(Landroid/content/Context;)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 400
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v9, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 401
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 402
    .local v3, "display":Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 403
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 404
    iget v5, v6, Landroid/graphics/Point;->x:I

    .line 405
    .local v5, "screenWidth":I
    const v9, 0x7f0d03fd

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 406
    .local v2, "cardWidth":I
    const v9, 0x7f0d040b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 407
    .local v7, "spacing":I
    int-to-double v10, v5

    int-to-double v12, v2

    int-to-double v14, v7

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    double-to-int v9, v10

    return v9
.end method

.method private setAsBannerView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bannerView"    # Landroid/widget/ImageView;

    .prologue
    .line 366
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 368
    const v2, 0x7f0d0400

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 370
    const v2, 0x7f0d0401

    .line 369
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 371
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-void
.end method

.method private setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 378
    const v2, 0x7f0d0402

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 380
    const v2, 0x7f0d0403

    .line 379
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 382
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void
.end method

.method private setAsScreenShotView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "screenshotView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, -0x1

    .line 350
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 352
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 354
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 356
    new-instance v1, Lcom/android/systemui/recents/tv/views/TaskCardView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView$1;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 362
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    return-void
.end method

.method private setDismissState(Z)V
    .locals 1
    .param p1, "dismissState"    # Z

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    if-eq v0, p1, :cond_0

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startEnterAnimation()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startExitAnimation()V

    goto :goto_0
.end method

.method private setThumbnailView()V
    .locals 7

    .prologue
    .line 327
    const v4, 0x7f13032a

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 328
    .local v3, "screenshotView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 329
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsScreenShotView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 326
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_1

    .line 335
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v0, :cond_2

    .line 338
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsBannerView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "TaskCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 340
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setDismissState(Z)V

    .line 266
    return v1

    .line 271
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setDismissState(Z)V

    .line 278
    :cond_1
    :goto_0
    return v1

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->requestPipControlsFocus()V

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    return v1

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDismissIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 136
    return-void
.end method

.method public getFocusedThumbnailRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 143
    return-object v0
.end method

.method public getInfoFieldView()Landroid/view/View;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    return-object v0
.end method

.method public getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getThumbnailView()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    return-object v0
.end method

.method public getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mBadgeView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setThumbnailView()V

    .line 125
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->reset()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->reset()V

    .line 120
    return-void
.end method

.method public isInDismissState()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    const v1, 0x7f130329

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    .line 97
    const v1, 0x7f130324

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    .line 98
    const v1, 0x7f130326

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTitleTextView:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f130325

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mBadgeView:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f130327

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    .line 101
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    .line 102
    sget-boolean v1, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    const v2, 0x7f0d033d

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mCornerRadius:I

    .line 109
    :goto_0
    new-instance v1, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    .line 110
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 111
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    .line 112
    iget-boolean v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_1
    new-instance v1, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    .line 94
    return-void

    .line 106
    .end local v0    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 107
    const v2, 0x7f0d0315

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mCornerRadius:I

    goto :goto_0

    .line 113
    .restart local v0    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startDismissTaskAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 315
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startDismissAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    return-void
.end method
