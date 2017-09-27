.class public Lcom/android/systemui/recents/misc/RectFEvaluator;
.super Ljava/lang/Object;
.source "RectFEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/RectFEvaluator;->mRect:Landroid/graphics/RectF;

    .line 24
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/RectF;
    .param p3, "endValue"    # Landroid/graphics/RectF;

    .prologue
    .line 45
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v1, v4, v5

    .line 46
    .local v1, "left":F
    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v3, v4, v5

    .line 47
    .local v3, "top":F
    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v2, v4, v5

    .line 48
    .local v2, "right":F
    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v0, v4, v5

    .line 49
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RectFEvaluator;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    iget-object v4, p0, Lcom/android/systemui/recents/misc/RectFEvaluator;->mRect:Landroid/graphics/RectF;

    return-object v4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p2, Landroid/graphics/RectF;

    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/RectF;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/misc/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
