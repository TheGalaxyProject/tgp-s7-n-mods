.class public Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardEffectViewVignetting"
.end annotation


# instance fields
.field private mBottomDimAlpha:I

.field private mDefaultColor:I

.field private mTopDimAlpha:I

.field private mVignettingBottomRatio:F

.field private mVignettingTopRatio:F

.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    .prologue
    const/16 v1, 0x6e

    .line 661
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const/16 v0, 0x4d

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    .line 653
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    .line 655
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    .line 656
    const v0, 0x3def9db2    # 0.117f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    .line 659
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    .line 662
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    .line 663
    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "init() isTabletDevice is ture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    .line 665
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    .line 666
    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    .line 667
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    .line 661
    :cond_0
    return-void
.end method

.method private calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "bitmapCropRect"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 774
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 775
    .local v0, "gradientAreaRect":Landroid/graphics/Rect;
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 777
    .local v1, "height":I
    packed-switch p2, :pswitch_data_0

    .line 795
    const/4 v0, 0x0

    .line 799
    .end local v0    # "gradientAreaRect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 780
    .restart local v0    # "gradientAreaRect":Landroid/graphics/Rect;
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 781
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 782
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 783
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 788
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 789
    int-to-float v2, v1

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 790
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 791
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAlphaValue(I)I
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 672
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 747
    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "getCenterCropRect()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 750
    .local v3, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 751
    .local v2, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 752
    .local v0, "bitmapHeight":I
    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    .line 753
    .local v4, "ratio":F
    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    .line 755
    .local v1, "bitmapRatio":F
    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    .line 758
    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "left and rigth are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 760
    .local v6, "targetWidth":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7, v9, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 769
    .end local v6    # "targetWidth":I
    :goto_0
    return-object v3

    .line 764
    :cond_0
    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "top and bottom are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    .line 766
    .local v5, "targetHeight":I
    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v9, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 40
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 806
    const-wide/16 v34, 0x0

    .line 807
    .local v34, "sumR":J
    const-wide/16 v32, 0x0

    .line 808
    .local v32, "sumG":J
    const-wide/16 v30, 0x0

    .line 809
    .local v30, "sumB":J
    const-wide/16 v26, 0x0

    .line 811
    .local v26, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 812
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 813
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 815
    .local v20, "lowestB":J
    const-wide/16 v10, 0x0

    .line 816
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 817
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 820
    .local v6, "curB":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 821
    .local v29, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 823
    .local v18, "h":I
    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    .line 824
    .local v28, "step":I
    :goto_0
    if-gtz v28, :cond_0

    .line 825
    const/16 v28, 0x1

    .line 828
    :cond_0
    const/16 v36, 0x0

    .local v36, "x":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 829
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    .local v37, "y":I
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    .line 831
    if-eqz v36, :cond_1

    if-nez v37, :cond_3

    .line 829
    :cond_1
    :goto_3
    add-int v37, v37, v28

    goto :goto_2

    .line 823
    .end local v28    # "step":I
    .end local v36    # "x":I
    .end local v37    # "y":I
    :cond_2
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    .line 834
    .restart local v28    # "step":I
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 836
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v10, v0

    .line 837
    add-long v34, v34, v10

    .line 839
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v8, v0

    .line 840
    add-long v32, v32, v8

    .line 842
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v6, v0

    .line 843
    add-long v30, v30, v6

    .line 845
    const-wide/16 v38, 0x1

    add-long v26, v26, v38

    .line 847
    cmp-long v38, v24, v10

    if-gtz v38, :cond_4

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_5

    .line 848
    :cond_4
    move-wide/from16 v24, v10

    .line 849
    :cond_5
    cmp-long v38, v22, v8

    if-gtz v38, :cond_6

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_7

    .line 850
    :cond_6
    move-wide/from16 v22, v8

    .line 851
    :cond_7
    cmp-long v38, v20, v6

    if-gtz v38, :cond_8

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_1

    .line 852
    :cond_8
    move-wide/from16 v20, v6

    goto :goto_3

    .line 828
    .end local v4    # "color":I
    :cond_9
    add-int v36, v36, v28

    goto :goto_1

    .line 856
    .end local v37    # "y":I
    :cond_a
    const/4 v14, 0x0

    .local v14, "everageR":I
    const/4 v12, 0x0

    .local v12, "everageB":I
    const/4 v13, 0x0

    .line 857
    .local v13, "everageG":I
    const/16 v17, 0x0

    .local v17, "finalR":I
    const/16 v16, 0x0

    .local v16, "finalG":I
    const/4 v15, 0x0

    .line 864
    .local v15, "finalB":I
    div-long v38, v34, v26

    move-wide/from16 v0, v38

    long-to-int v14, v0

    .line 865
    div-long v38, v32, v26

    move-wide/from16 v0, v38

    long-to-int v13, v0

    .line 866
    div-long v38, v30, v26

    move-wide/from16 v0, v38

    long-to-int v12, v0

    .line 868
    const/16 v19, 0x0

    .line 870
    .local v19, "ratio":F
    int-to-long v0, v14

    move-wide/from16 v38, v0

    cmp-long v38, v38, v24

    if-lez v38, :cond_f

    .line 871
    int-to-long v0, v14

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v14

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 804
    const/high16 v38, 0x3e800000    # 0.25f

    .line 872
    cmpl-float v38, v19, v38

    if-lez v38, :cond_b

    .line 804
    const/high16 v19, 0x3e800000    # 0.25f

    .line 875
    :cond_b
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_e

    .line 876
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v14

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v17, v0

    .line 883
    :goto_4
    int-to-long v0, v13

    move-wide/from16 v38, v0

    cmp-long v38, v38, v22

    if-lez v38, :cond_11

    .line 884
    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v13

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 804
    const/high16 v38, 0x3e800000    # 0.25f

    .line 885
    cmpl-float v38, v19, v38

    if-lez v38, :cond_c

    .line 804
    const/high16 v19, 0x3e800000    # 0.25f

    .line 888
    :cond_c
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_10

    .line 889
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v13

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v16, v0

    .line 896
    :goto_5
    int-to-long v0, v12

    move-wide/from16 v38, v0

    cmp-long v38, v38, v20

    if-lez v38, :cond_13

    .line 897
    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v12

    move/from16 v39, v0

    div-float v19, v38, v39

    .line 804
    const/high16 v38, 0x3e800000    # 0.25f

    .line 898
    cmpl-float v38, v19, v38

    if-lez v38, :cond_d

    .line 804
    const/high16 v19, 0x3e800000    # 0.25f

    .line 901
    :cond_d
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_12

    .line 902
    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v12

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v15, v0

    .line 909
    :goto_6
    const/16 v38, 0xc8

    move/from16 v0, v17

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    const/16 v38, 0xc8

    move/from16 v0, v16

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    const/16 v38, 0xc8

    move/from16 v0, v38

    if-le v15, v0, :cond_14

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v38, v0

    return v38

    .line 878
    :cond_e
    move/from16 v17, v14

    goto/16 :goto_4

    .line 880
    :cond_f
    move/from16 v17, v14

    goto/16 :goto_4

    .line 891
    :cond_10
    move/from16 v16, v13

    goto :goto_5

    .line 893
    :cond_11
    move/from16 v16, v13

    goto :goto_5

    .line 904
    :cond_12
    move v15, v12

    goto :goto_6

    .line 906
    :cond_13
    move v15, v12

    goto :goto_6

    .line 912
    :cond_14
    const/16 v38, 0xff

    move/from16 v0, v38

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    return v38

    .line 914
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

    .line 915
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v38, v0

    return v38
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 13
    .param p1, "bgBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 686
    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    const-string/jumbo v2, "applyBlendedFilter()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 688
    :cond_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget v1, v1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget v2, v2, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v9

    .line 693
    .local v9, "cropRect":Landroid/graphics/Rect;
    new-instance v11, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v11}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    .line 694
    .local v11, "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    const/16 v1, 0x34

    invoke-static {v1}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 695
    .local v0, "topFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    const/16 v1, 0x34

    invoke-static {v1}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 703
    .local v8, "bottomFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v12

    .line 704
    .local v12, "gradientAreaRect":Landroid/graphics/Rect;
    if-nez v12, :cond_2

    .line 705
    return-void

    .line 708
    :cond_2
    invoke-direct {p0, p1, v12}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    .line 709
    .local v10, "extractColor":I
    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extractedColor of top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 713
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 714
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v4, 0x14

    const/16 v6, 0x14

    invoke-static {v1, v2, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 712
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 713
    const/4 v4, 0x0

    .line 712
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 716
    const/4 v12, 0x0

    .line 717
    .local v12, "gradientAreaRect":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 720
    const/4 v1, 0x1

    invoke-direct {p0, v9, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v12

    .line 721
    .local v12, "gradientAreaRect":Landroid/graphics/Rect;
    if-nez v12, :cond_3

    .line 722
    return-void

    .line 724
    :cond_3
    invoke-direct {p0, p1, v12}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    .line 725
    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extractedColor of bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 728
    shr-int/lit8 v1, v10, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    .line 729
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 730
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v5, 0x14

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 729
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 739
    :goto_0
    invoke-virtual {v11, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 740
    invoke-virtual {v11, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 742
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 743
    invoke-virtual {p2, v11}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 685
    return-void

    .line 734
    :cond_4
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 735
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    .line 736
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 733
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 735
    const/4 v5, 0x0

    move-object v1, v8

    .line 732
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public resetBlendedFilter(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 676
    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "resetBlendedFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-nez p1, :cond_0

    .line 678
    return-void

    .line 681
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 682
    invoke-virtual {p1, v2}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 675
    return-void
.end method
