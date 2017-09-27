.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWallpaperView.java"


# static fields
.field static COLOR_LIMIT_RATIO:F

.field static DEFAULT_BLENDING_ALPHA:F

.field static WHITE_IMAGE_DEFAULT_COLOR:I

.field static WHITE_IMAGE_THRESHOLD:I


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mBlendingColor:I

.field private mCurWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 35
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    .line 36
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    .line 37
    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    .line 38
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 46
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 50
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 46
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 55
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 46
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 60
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 58
    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;)I
    .locals 40
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const/16 v38, 0x0

    return v38

    .line 199
    :cond_0
    const-wide/16 v34, 0x0

    .line 200
    .local v34, "sumR":J
    const-wide/16 v32, 0x0

    .line 201
    .local v32, "sumG":J
    const-wide/16 v30, 0x0

    .line 202
    .local v30, "sumB":J
    const-wide/16 v26, 0x0

    .line 204
    .local v26, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 205
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 206
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 208
    .local v20, "lowestB":J
    const-wide/16 v10, 0x0

    .line 209
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 210
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 213
    .local v6, "curB":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 214
    .local v29, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 217
    .local v18, "h":I
    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    .line 218
    .local v28, "step":I
    :goto_0
    if-gtz v28, :cond_1

    .line 219
    const/16 v28, 0x1

    .line 222
    :cond_1
    const/16 v36, 0x0

    .local v36, "x":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 223
    const/16 v37, 0x0

    .local v37, "y":I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 224
    if-eqz v36, :cond_2

    if-nez v37, :cond_4

    .line 223
    :cond_2
    :goto_3
    add-int v37, v37, v28

    goto :goto_2

    .line 217
    .end local v28    # "step":I
    .end local v36    # "x":I
    .end local v37    # "y":I
    :cond_3
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    .line 226
    .restart local v28    # "step":I
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 227
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v10, v0

    .line 228
    add-long v34, v34, v10

    .line 229
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v8, v0

    .line 230
    add-long v32, v32, v8

    .line 231
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v6, v0

    .line 232
    add-long v30, v30, v6

    .line 233
    const-wide/16 v38, 0x1

    add-long v26, v26, v38

    .line 235
    cmp-long v38, v24, v10

    if-gtz v38, :cond_5

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_6

    :cond_5
    move-wide/from16 v24, v10

    .line 236
    :cond_6
    cmp-long v38, v22, v8

    if-gtz v38, :cond_7

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_8

    :cond_7
    move-wide/from16 v22, v8

    .line 237
    :cond_8
    cmp-long v38, v20, v6

    if-gtz v38, :cond_9

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_2

    :cond_9
    move-wide/from16 v20, v6

    goto :goto_3

    .line 222
    .end local v4    # "color":I
    :cond_a
    add-int v36, v36, v28

    goto :goto_1

    .line 241
    .end local v37    # "y":I
    :cond_b
    const/4 v14, 0x0

    .local v14, "everageR":I
    const/4 v12, 0x0

    .local v12, "everageB":I
    const/4 v13, 0x0

    .line 242
    .local v13, "everageG":I
    const/16 v17, 0x0

    .local v17, "finalR":I
    const/16 v16, 0x0

    .local v16, "finalG":I
    const/4 v15, 0x0

    .line 244
    .local v15, "finalB":I
    div-long v38, v34, v26

    move-wide/from16 v0, v38

    long-to-int v14, v0

    .line 245
    div-long v38, v32, v26

    move-wide/from16 v0, v38

    long-to-int v13, v0

    .line 246
    div-long v38, v30, v26

    move-wide/from16 v0, v38

    long-to-int v12, v0

    .line 248
    const/16 v19, 0x0

    .line 250
    .local v19, "ratio":F
    int-to-long v0, v14

    move-wide/from16 v38, v0

    cmp-long v38, v38, v24

    if-lez v38, :cond_10

    .line 251
    int-to-long v0, v14

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v14

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 252
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_c

    .line 253
    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 256
    :cond_c
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_f

    .line 257
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v14

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v17, v0

    .line 265
    :goto_4
    int-to-long v0, v13

    move-wide/from16 v38, v0

    cmp-long v38, v38, v22

    if-lez v38, :cond_12

    .line 266
    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v13

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 267
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_d

    .line 268
    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 271
    :cond_d
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_11

    .line 272
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v13

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v16, v0

    .line 280
    :goto_5
    int-to-long v0, v12

    move-wide/from16 v38, v0

    cmp-long v38, v38, v20

    if-lez v38, :cond_14

    .line 281
    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v12

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 282
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_e

    .line 283
    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 286
    :cond_e
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_13

    .line 287
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v12

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v15, v0

    .line 295
    :goto_6
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v17

    move/from16 v1, v38

    if-le v0, v1, :cond_15

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v38

    if-le v0, v1, :cond_15

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v38

    if-le v15, v0, :cond_15

    .line 296
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    return v38

    .line 259
    :cond_f
    move/from16 v17, v14

    goto :goto_4

    .line 262
    :cond_10
    move/from16 v17, v14

    goto :goto_4

    .line 274
    :cond_11
    move/from16 v16, v13

    goto :goto_5

    .line 277
    :cond_12
    move/from16 v16, v13

    goto :goto_5

    .line 289
    :cond_13
    move v15, v12

    goto :goto_6

    .line 292
    :cond_14
    move v15, v12

    goto :goto_6

    .line 299
    :cond_15
    const/16 v38, 0xff

    move/from16 v0, v38

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    return v38

    .line 300
    .end local v12    # "everageB":I
    .end local v13    # "everageG":I
    .end local v14    # "everageR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    .end local v18    # "h":I
    .end local v19    # "ratio":F
    .end local v28    # "step":I
    .end local v29    # "w":I
    .end local v36    # "x":I
    :catch_0
    move-exception v5

    .line 301
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v38, "SViewCoverWallpaperView"

    const-string/jumbo v39, "Exception in getDominentColor"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    return v38
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->addView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method private static isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 14
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 313
    const/4 v6, 0x0

    .local v6, "sumSaturation":F
    const/4 v7, 0x0

    .line 314
    .local v7, "sumValue":F
    const/4 v12, 0x3

    :try_start_0
    new-array v2, v12, [F

    .line 315
    .local v2, "pixelHSV":[F
    const/4 v3, 0x0

    .line 317
    .local v3, "sampleCount":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 318
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 320
    .local v1, "h":I
    if-le v9, v1, :cond_1

    int-to-float v12, v1

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-int v5, v12

    .line 321
    .local v5, "step":I
    :goto_0
    if-gtz v5, :cond_0

    .line 322
    const/4 v5, 0x1

    .line 324
    :cond_0
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v9, :cond_3

    .line 325
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_2
    if-ge v11, v1, :cond_2

    .line 326
    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-static {v12, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 327
    const/4 v12, 0x1

    aget v12, v2, v12

    add-float/2addr v6, v12

    .line 328
    const/4 v12, 0x2

    aget v12, v2, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v7, v12

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 325
    add-int/2addr v11, v5

    goto :goto_2

    .line 320
    .end local v5    # "step":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_1
    int-to-float v12, v9

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-int v5, v12

    goto :goto_0

    .line 324
    .restart local v5    # "step":I
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_2
    add-int/2addr v10, v5

    goto :goto_1

    .line 332
    .end local v11    # "y":I
    :cond_3
    int-to-float v12, v3

    div-float v4, v6, v12

    .line 333
    .local v4, "sat":F
    int-to-float v12, v3

    div-float v8, v7, v12

    .line 335
    .local v8, "val":F
    const v12, 0x3cf5c28f    # 0.03f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_4

    const v12, 0x3f6147ae    # 0.88f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_4

    .line 336
    const/4 v12, 0x1

    return v12

    .line 338
    .end local v1    # "h":I
    .end local v2    # "pixelHSV":[F
    .end local v3    # "sampleCount":I
    .end local v4    # "sat":F
    .end local v5    # "step":I
    .end local v8    # "val":F
    .end local v9    # "w":I
    .end local v10    # "x":I
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "SViewCoverWallpaperView"

    const-string/jumbo v13, "Exception in isWhiteCoverWallpaper"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v12, 0x0

    return v12
.end method

.method private setUserWallpaperImage()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 75
    const-string/jumbo v3, "SViewCoverWallpaperView"

    const-string/jumbo v5, "setUserWallpaperImage"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 78
    .local v2, "isWhite":Z
    if-nez v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 85
    .local v2, "isWhite":Z
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "white_cover_wallpaper"

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 87
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 74
    return-void

    :cond_1
    move v3, v4

    .line 85
    goto :goto_0
.end method


# virtual methods
.method public setAlphaBlending()V
    .locals 14

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/16 v12, 0x6e

    .line 156
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    new-instance v9, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v9}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    .line 159
    .local v9, "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    const/16 v3, 0x34

    .line 158
    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 161
    .local v8, "filterAll":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    const/16 v3, 0x34

    .line 160
    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 164
    .local v0, "filterTop":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v11, v3

    .line 165
    .local v11, "r":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v10, v3

    .line 166
    .local v10, "g":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v7, v3

    .line 168
    .local v7, "b":F
    div-float/2addr v11, v13

    .line 169
    div-float/2addr v10, v13

    .line 170
    div-float/2addr v7, v13

    .line 172
    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    invoke-virtual {v8, v11, v10, v7, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setColor(FFFF)V

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 176
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_0

    .line 178
    const/16 v3, 0x73

    invoke-static {v3, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 180
    const/4 v4, 0x0

    invoke-static {v4, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    .line 177
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 188
    :goto_0
    invoke-virtual {v9, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 189
    invoke-virtual {v9, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 155
    return-void

    .line 183
    :cond_0
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v12, 0x73

    invoke-static {v12, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 185
    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13, v4, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public setEmergencyModeWallpaperImage(Z)V
    .locals 4
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x4

    .line 124
    const-string/jumbo v0, "SViewCoverWallpaperView"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmergencyModeWallpaperImage : Use emergency mode wallpaper - Current wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-nez p1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v0, v3, :cond_1

    .line 130
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 132
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 123
    :cond_1
    return-void
.end method

.method public setKidsModeWallpaperImage(Z)V
    .locals 9
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 91
    const-string/jumbo v4, "SViewCoverWallpaperView"

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKidsModeWallpaperImage : Use kids mode wallpaper - Current wallpaper type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    iget v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez p1, :cond_0

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v4, v8, :cond_3

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    .line 97
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 101
    .local v3, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 102
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 105
    .local v3, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 113
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 114
    .local v2, "isWhite":Z
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "white_cover_wallpaper"

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 119
    .end local v2    # "isWhite":Z
    :cond_2
    iput v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 90
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_3
    return-void

    .line 106
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "SViewCoverWallpaperView"

    const-string/jumbo v6, "IOException InputStream is null "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "isWhite":Z
    :cond_4
    move v4, v5

    .line 114
    goto :goto_1
.end method

.method public setProperWallpaper(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 141
    .local v1, "isPreLoadWallpaper":Z
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setEmergencyModeWallpaperImage(Z)V

    .line 150
    :goto_0
    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setAlphaBlending()V

    .line 136
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setKidsModeWallpaperImage(Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setUserWallpaperImage()V

    .line 147
    const/4 v1, 0x1

    goto :goto_0
.end method
