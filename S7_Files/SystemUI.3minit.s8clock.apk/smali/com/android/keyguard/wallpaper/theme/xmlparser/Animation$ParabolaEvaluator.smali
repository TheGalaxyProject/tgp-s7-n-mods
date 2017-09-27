.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParabolaEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private key:F

.field private pX:F

.field private pY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "key"    # F
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->key:F

    .line 279
    iput p2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->pX:F

    .line 280
    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->pY:F

    .line 277
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "startValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 286
    .local v1, "startFloat":F
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 287
    .local v0, "endFloat":F
    sub-float v4, v0, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->pX:F

    add-float v2, v4, v5

    .line 288
    .local v2, "x":F
    iget v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->key:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$ParabolaEvaluator;->pY:F

    add-float v3, v4, v5

    .line 289
    .local v3, "y":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4
.end method
