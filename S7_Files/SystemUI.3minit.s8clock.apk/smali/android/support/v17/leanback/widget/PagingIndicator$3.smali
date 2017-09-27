.class final Landroid/support/v17/leanback/widget/PagingIndicator$3;
.super Landroid/util/Property;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 78
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;
    .locals 1
    .param p1, "dot"    # Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dot"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    .end local p1    # "dot":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$3;->get(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V
    .locals 1
    .param p1, "dot"    # Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 86
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->setTranslationX(F)V

    .line 85
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "dot"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    .end local p1    # "dot":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;->set(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V

    return-void
.end method
