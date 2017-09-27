.class final Lcom/android/systemui/qs/TouchAnimator$1;
.super Landroid/util/FloatProperty;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/qs/TouchAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/qs/TouchAnimator;)Ljava/lang/Float;
    .locals 1
    .param p1, "touchAnimator"    # Lcom/android/systemui/qs/TouchAnimator;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/android/systemui/qs/TouchAnimator;->-get1(Lcom/android/systemui/qs/TouchAnimator;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "touchAnimator"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Lcom/android/systemui/qs/TouchAnimator;

    .end local p1    # "touchAnimator":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator$1;->get(Lcom/android/systemui/qs/TouchAnimator;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/qs/TouchAnimator;F)V
    .locals 0
    .param p1, "touchAnimator"    # Lcom/android/systemui/qs/TouchAnimator;
    .param p2, "value"    # F

    .prologue
    .line 82
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 81
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "touchAnimator"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 81
    check-cast p1, Lcom/android/systemui/qs/TouchAnimator;

    .end local p1    # "touchAnimator":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/TouchAnimator$1;->setValue(Lcom/android/systemui/qs/TouchAnimator;F)V

    return-void
.end method
