.class public Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

.field private mLastBottom:I

.field private mLastRight:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mShouldEnableScreenRotation:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IWallpaperManager;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 84
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    .line 89
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 110
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 114
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    .line 105
    return-void
.end method

.method private checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z
    .locals 22
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "statusbarHeight"    # I
    .param p3, "needToCheckBody"    # Z

    .prologue
    .line 492
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [Z

    .local v9, "resultWhiteBG":[Z
    fill-array-data v9, :array_0

    .line 495
    if-nez p1, :cond_0

    .line 496
    return-object v9

    .line 500
    :cond_0
    const/4 v13, 0x0

    .local v13, "sumSaturation":F
    const/4 v14, 0x0

    .local v14, "sumValue":F
    const/4 v3, 0x0

    .local v3, "curSaturation":F
    const/4 v4, 0x0

    .line 501
    .local v4, "curValue":F
    const/16 v19, 0x3

    :try_start_0
    move/from16 v0, v19

    new-array v8, v0, [F

    .line 502
    .local v8, "pixelHSV":[F
    const/4 v10, 0x0

    .line 504
    .local v10, "sampleCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 505
    .local v16, "w":I
    move/from16 v6, p2

    .line 507
    .local v6, "h":I
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 508
    .local v12, "step":I
    :goto_0
    if-gtz v12, :cond_1

    .line 509
    const/4 v12, 0x1

    .line 511
    :cond_1
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 512
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 513
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 514
    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    .line 515
    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    .line 516
    add-int/lit8 v10, v10, 0x1

    .line 512
    add-int v18, v18, v12

    goto :goto_2

    .line 507
    .end local v12    # "step":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_0

    .line 511
    .restart local v12    # "step":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :cond_3
    add-int v17, v17, v12

    goto :goto_1

    .line 519
    .end local v18    # "y":I
    :cond_4
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    .line 520
    .local v11, "sat":F
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    .line 522
    .local v15, "val":F
    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_STATUS_BAR sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const v19, 0x3e4ccccd    # 0.2f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_5

    const v19, 0x3f733333    # 0.95f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_5

    .line 524
    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-boolean v19, v9, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    .end local v6    # "h":I
    .end local v8    # "pixelHSV":[F
    .end local v10    # "sampleCount":I
    .end local v11    # "sat":F
    .end local v12    # "step":I
    .end local v15    # "val":F
    .end local v16    # "w":I
    .end local v17    # "x":I
    :cond_5
    :goto_3
    if-eqz p3, :cond_a

    .line 532
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 533
    const/16 v19, 0x3

    :try_start_1
    move/from16 v0, v19

    new-array v8, v0, [F

    .line 534
    .restart local v8    # "pixelHSV":[F
    const/4 v10, 0x0

    .line 536
    .restart local v10    # "sampleCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 537
    .restart local v16    # "w":I
    move/from16 v7, p2

    .line 538
    .local v7, "m":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 540
    .restart local v6    # "h":I
    sub-int v19, v6, p2

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    sub-int v19, v6, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 541
    .restart local v12    # "step":I
    :goto_4
    if-gtz v12, :cond_6

    .line 542
    const/4 v12, 0x1

    .line 544
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "x":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 545
    move/from16 v18, p2

    .restart local v18    # "y":I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v6, :cond_8

    .line 546
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 547
    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    .line 548
    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    .line 549
    add-int/lit8 v10, v10, 0x1

    .line 545
    add-int v18, v18, v12

    goto :goto_6

    .line 540
    .end local v12    # "step":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_7
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_4

    .line 544
    .restart local v12    # "step":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :cond_8
    add-int v17, v17, v12

    goto :goto_5

    .line 552
    .end local v18    # "y":I
    :cond_9
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    .line 553
    .restart local v11    # "sat":F
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    .line 555
    .restart local v15    # "val":F
    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_BODY sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const v19, 0x3e99999a    # 0.3f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_a

    const v19, 0x3f6147ae    # 0.88f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_a

    .line 557
    const/16 v19, 0x1

    const/16 v20, 0x1

    aput-boolean v19, v9, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 562
    .end local v6    # "h":I
    .end local v7    # "m":I
    .end local v8    # "pixelHSV":[F
    .end local v10    # "sampleCount":I
    .end local v11    # "sat":F
    .end local v12    # "step":I
    .end local v15    # "val":F
    .end local v16    # "w":I
    .end local v17    # "x":I
    :cond_a
    :goto_7
    return-object v9

    .line 559
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto :goto_7

    .line 526
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 492
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    :cond_0
    const/4 v9, 0x0

    return-object v9

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 232
    .local v8, "widthOrigin":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 235
    .local v3, "heightOrigin":I
    const/4 v5, 0x0

    .local v5, "startX":F
    const/4 v6, 0x0

    .local v6, "startY":F
    div-int/lit8 v9, v8, 0x2

    int-to-float v0, v9

    .local v0, "centerX":F
    div-int/lit8 v9, v3, 0x2

    int-to-float v1, v9

    .line 236
    .local v1, "centerY":F
    const/4 v7, 0x0

    .local v7, "width":F
    const/4 v2, 0x0

    .line 239
    .local v2, "height":F
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    .line 240
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .line 244
    .local v4, "scale":F
    :goto_0
    iput v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    .line 247
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    .line 248
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    .line 250
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    .line 251
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    .line 252
    const/4 v5, 0x0

    .line 253
    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    .line 254
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3

    .line 255
    const/4 v6, 0x0

    .line 270
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    .line 271
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_5

    .line 272
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v9, 0x0

    return-object v9

    .line 242
    .end local v4    # "scale":F
    :cond_4
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .restart local v4    # "scale":F
    goto :goto_0

    .line 274
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    .line 275
    :cond_6
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v9, 0x0

    return-object v9

    .line 274
    :cond_7
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    .line 277
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_8

    .line 278
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_9

    .line 279
    :cond_8
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v9, 0x0

    return-object v9

    .line 282
    :cond_9
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 284
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 283
    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 394
    invoke-static {v4}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    .line 395
    .local v1, "omcWallpaper":Ljava/io/File;
    invoke-static {v4, v3}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v0

    .line 396
    .local v0, "cscWallpaper":Ljava/io/File;
    const/4 v2, 0x0

    .line 397
    .local v2, "operatorWallpaper":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 402
    .end local v2    # "operatorWallpaper":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v2

    .line 399
    .restart local v2    # "operatorWallpaper":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "operatorWallpaper":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private init()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 118
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "init()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mCache == null || mCache.isRecycled()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v5

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-ne v3, v4, :cond_2

    .line 125
    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    .line 126
    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    .line 127
    return v5

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    .line 132
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez v3, :cond_4

    .line 133
    :cond_3
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v5

    .line 137
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 138
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 142
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 144
    .local v1, "dy":F
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 145
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    .line 149
    .local v2, "scale":F
    :goto_0
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 150
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    .line 152
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    .line 154
    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    .line 156
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 157
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->invalidate()V

    .line 171
    const/4 v3, 0x1

    return v3

    .line 147
    .end local v2    # "scale":F
    :cond_5
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    .restart local v2    # "scale":F
    goto :goto_0
.end method

.method private setMDMFileObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 605
    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "observing path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-nez p1, :cond_0

    .line 608
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 612
    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 615
    :cond_1
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 604
    return-void
.end method

.method private updateVignettingEffect(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-nez v3, :cond_0

    .line 573
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-direct {v3, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    .line 576
    .local v1, "wallpaperTransparent":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 577
    if-nez v1, :cond_2

    .line 578
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v0, v2

    .line 579
    .local v0, "isEffectON":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 580
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p1, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 571
    :goto_2
    return-void

    .line 578
    .end local v0    # "isEffectON":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 576
    goto :goto_1

    .line 582
    .restart local v0    # "isEffectON":Z
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->resetBlendedFilter(Landroid/view/View;)V

    goto :goto_2
.end method

.method private updateWallpaper()V
    .locals 5

    .prologue
    .line 175
    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 178
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    .line 179
    .local v1, "selectedUser":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V

    .line 220
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 179
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->cleanUp()V

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 478
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 467
    return-void
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 23
    .param p1, "currentUserId"    # I
    .param p2, "selectedUser"    # Landroid/os/UserHandle;

    .prologue
    .line 302
    const/4 v7, 0x0

    .line 305
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isMDMWallpaperEnabled()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 306
    const-string/jumbo v18, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 307
    .local v18, "wallpaperPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v8, "file":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    .line 309
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 311
    :try_start_0
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 312
    .local v17, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v17, :cond_0

    .line 313
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 314
    .local v16, "wallpaper":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    if-eqz v21, :cond_0

    .line 315
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "load MDM wallpaper!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    return-object v21

    .line 319
    .end local v16    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v17    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v5

    .line 320
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "Can\'t load MDM wallpaper!"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "file problem!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v8    # "file":Ljava/io/File;
    .end local v18    # "wallpaperPath":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p2, :cond_8

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 332
    .local v10, "lockWallpaperUserId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 334
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    .line 335
    .local v9, "isOperatorWallpaper":Z
    if-eqz v7, :cond_9

    .line 336
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 349
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "wallpaper":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 351
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 360
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_3
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [Z

    .local v12, "newVal":[Z
    fill-array-data v12, :array_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v13

    .line 362
    .local v13, "oldValStatusBar":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v14

    .line 363
    .local v14, "oldValWallpaper":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    .line 364
    .local v4, "croppedStatusbarH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v19

    .line 365
    .local v19, "wallpaperTransparent":I
    sget-boolean v21, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    if-eqz v21, :cond_c

    move/from16 v20, v9

    .line 366
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    if-eqz v20, :cond_4

    .line 367
    :cond_3
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v11, 0x0

    .line 368
    .local v11, "needToCheckBody":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4, v11}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z

    move-result-object v12

    .line 370
    .end local v11    # "needToCheckBody":Z
    :cond_4
    const/16 v21, 0x0

    aget-boolean v21, v12, v21

    move/from16 v0, v21

    if-eq v13, v0, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v22

    .line 372
    const/16 v21, 0x0

    aget-boolean v21, v12, v21

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    .line 371
    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    .line 374
    :cond_5
    const/16 v21, 0x1

    aget-boolean v21, v12, v21

    move/from16 v0, v21

    if-eq v14, v0, :cond_6

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v22

    .line 376
    const/16 v21, 0x1

    aget-boolean v21, v12, v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    .line 375
    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    .line 380
    :cond_6
    if-eqz v16, :cond_10

    .line 381
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 389
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 381
    return-object v21

    .line 324
    .end local v4    # "croppedStatusbarH":I
    .end local v9    # "isOperatorWallpaper":Z
    .end local v10    # "lockWallpaperUserId":I
    .end local v12    # "newVal":[Z
    .end local v13    # "oldValStatusBar":Z
    .end local v14    # "oldValWallpaper":Z
    .end local v16    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v19    # "wallpaperTransparent":I
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/FileObserver;->stopWatching()V

    .line 326
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    goto/16 :goto_0

    .line 331
    :cond_8
    move/from16 v10, p1

    .restart local v10    # "lockWallpaperUserId":I
    goto/16 :goto_1

    .line 340
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "isOperatorWallpaper":Z
    :cond_9
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 341
    .restart local v16    # "wallpaper":Landroid/graphics/Bitmap;
    if-nez v16, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 343
    sget v22, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    .line 342
    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_2

    .line 345
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 352
    .restart local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_b
    if-eqz v16, :cond_2

    .line 353
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 365
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "croppedStatusbarH":I
    .restart local v12    # "newVal":[Z
    .restart local v13    # "oldValStatusBar":Z
    .restart local v14    # "oldValWallpaper":Z
    .restart local v19    # "wallpaperTransparent":I
    :cond_c
    const/16 v20, 0x0

    .local v20, "whiteOperatorWallpaper":Z
    goto/16 :goto_4

    .line 367
    .end local v20    # "whiteOperatorWallpaper":Z
    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 372
    :cond_e
    const/16 v21, 0x0

    goto :goto_6

    .line 376
    :cond_f
    const/16 v21, 0x0

    goto :goto_7

    .line 383
    :cond_10
    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    .line 389
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 383
    return-object v21

    .line 385
    .end local v4    # "croppedStatusbarH":I
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "isOperatorWallpaper":Z
    .end local v10    # "lockWallpaperUserId":I
    .end local v12    # "newVal":[Z
    .end local v13    # "oldValStatusBar":Z
    .end local v14    # "oldValWallpaper":Z
    .end local v16    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v19    # "wallpaperTransparent":I
    :catch_1
    move-exception v6

    .line 386
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "Can\'t decode file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    .line 389
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 387
    return-object v21

    .line 388
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v21

    .line 389
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    throw v21

    .line 360
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 638
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 640
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 635
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mCache == null || mCache.isRecycled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 428
    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_3

    .line 429
    :cond_2
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 433
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    iput-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 447
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 422
    return-void

    .line 434
    :cond_6
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 438
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    .line 439
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 407
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 409
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    .line 410
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    .line 411
    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    .line 413
    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    .line 414
    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 406
    :cond_1
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 457
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->update()V

    .line 458
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 459
    .local v0, "userId":I
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    .line 460
    const-string/jumbo v1, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    .line 456
    return-void
.end method
