.class public Lcom/android/systemui/DessertCaseView$RescalingContainer;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalingContainer"
.end annotation


# instance fields
.field private mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 512
    const/16 v0, 0x1606

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setSystemUiVisibility(I)V

    .line 509
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 528
    sub-int v6, p4, p2

    int-to-float v4, v6

    .line 529
    .local v4, "w":F
    sub-int v6, p5, p3

    int-to-float v2, v6

    .line 530
    .local v2, "h":F
    const/high16 v6, 0x3e800000    # 0.25f

    div-float v6, v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 531
    .local v5, "w2":I
    const/high16 v6, 0x3e800000    # 0.25f

    div-float v6, v2, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 532
    .local v3, "h2":I
    int-to-float v6, p2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 533
    .local v0, "cx":I
    int-to-float v6, p3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 534
    .local v1, "cy":I
    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    sub-int v7, v0, v5

    sub-int v8, v1, v3

    add-int v9, v0, v5

    add-int v10, v1, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/systemui/DessertCaseView;->layout(IIII)V

    .line 527
    return-void
.end method

.method public setView(Lcom/android/systemui/DessertCaseView;)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->addView(Landroid/view/View;)V

    .line 523
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    .line 521
    return-void
.end method
