.class public Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dssScale"    # F

    .prologue
    .line 53
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 52
    :cond_0
    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .locals 5
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "dssScale"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 61
    iget v2, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v2

    .line 62
    .local v0, "offsetX":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v2

    .line 63
    .local v1, "offsetY":I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 64
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 65
    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 58
    return-void
.end method
