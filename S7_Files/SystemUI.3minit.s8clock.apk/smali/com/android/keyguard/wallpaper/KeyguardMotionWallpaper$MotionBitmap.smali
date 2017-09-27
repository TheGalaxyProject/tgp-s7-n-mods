.class Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionBitmap"
.end annotation


# instance fields
.field private alpha:I

.field private bitmapLoaded:Z

.field private calculatedSum:F

.field private image:Landroid/graphics/Bitmap;

.field private isBackground:Z

.field private matrix:Landroid/graphics/Matrix;

.field private path:Ljava/lang/String;

.field private prevAlpha:I

.field private stayPoint1:I

.field private stayPoint2:I

.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

.field private type:I


# direct methods
.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return v0
.end method

.method public constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    .prologue
    const/4 v1, 0x0

    .line 906
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 908
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 909
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 906
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    .line 1068
    .local v0, "cb":Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return v0
.end method

.method public getBitmapLoaded()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevAlpha()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 914
    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 912
    return-void
.end method

.method public isBackground()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 918
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 920
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 917
    :cond_0
    return-void
.end method

.method public setAlpha(FF)V
    .locals 9
    .param p1, "prevAngularSum"    # F
    .param p2, "angularSum"    # F

    .prologue
    const/4 v8, -0x3

    const/high16 v7, 0x437f0000    # 255.0f

    const/16 v6, 0xff

    const/4 v5, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 964
    cmpg-float v2, p1, p2

    if-gez v2, :cond_3

    const/4 v0, 0x1

    .line 967
    .local v0, "isClockwise":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    rem-float v2, p2, v2

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 968
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 969
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 978
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    .line 979
    iput-boolean v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 1009
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz v2, :cond_9

    .line 1010
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1038
    :goto_3
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    if-le v2, v6, :cond_2

    .line 1039
    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1042
    :cond_2
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    rsub-int v2, v2, 0xff

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 961
    return-void

    .line 964
    .end local v0    # "isClockwise":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isClockwise":Z
    goto :goto_0

    .line 970
    :cond_4
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    const/high16 v3, -0x3fc00000    # -3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 971
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    goto :goto_1

    .line 982
    :cond_5
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz v2, :cond_6

    .line 983
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 985
    :cond_6
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v1, v2

    .line 987
    .local v1, "tempAngle":F
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    if-ne v2, v8, :cond_7

    .line 988
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 991
    :cond_7
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    add-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 992
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v2, :cond_1

    .line 993
    if-eqz v0, :cond_1

    .line 994
    iput-boolean v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    .line 997
    :cond_8
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float v3, v1, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 998
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v2, :cond_1

    .line 999
    if-nez v0, :cond_1

    .line 1000
    iput-boolean v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    .line 1013
    .end local v1    # "tempAngle":F
    :cond_9
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v1, v2

    .line 1015
    .restart local v1    # "tempAngle":F
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    if-ne v2, v8, :cond_a

    .line 1016
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 1019
    :cond_a
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    add-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 1021
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v4

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto/16 :goto_3

    .line 1025
    :cond_b
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_c

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float v3, v1, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1027
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v4

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto/16 :goto_3

    .line 1032
    :cond_c
    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto/16 :goto_3
.end method

.method public setBitmapLoaded(Z)V
    .locals 0
    .param p1, "bitmapLoaded"    # Z

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 945
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 1058
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0
    .param p1, "prevAlpha"    # I

    .prologue
    .line 1051
    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    .line 1050
    return-void
.end method

.method public setStayPoint(I)V
    .locals 1
    .param p1, "centerPoint"    # I

    .prologue
    .line 925
    add-int/lit8 v0, p1, -0x3

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    .line 926
    add-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 924
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 930
    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->type:I

    .line 929
    return-void
.end method
