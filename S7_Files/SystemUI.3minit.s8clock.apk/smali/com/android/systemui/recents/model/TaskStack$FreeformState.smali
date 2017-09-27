.class public Lcom/android/systemui/recents/model/TaskStack$FreeformState;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeformState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static final LEFT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static final NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static final RIGHT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static final TOP:Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# instance fields
.field private expandedTouchFreeformArea:Landroid/graphics/RectF;

.field private freeformArea:Landroid/graphics/RectF;

.field public final freeformSide:I

.field private freeform_area_overlay_height:F

.field private freeform_area_overlay_width:F

.field private freeform_expanded_area_overlay_height:F

.field private freeform_expanded_area_overlay_width:F

.field private touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    const/16 v2, 0x50

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 608
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/4 v1, -0x1

    const/16 v3, 0xff

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 610
    new-instance v5, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 611
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 612
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v6, v14

    move v7, v2

    move v8, v4

    move v9, v14

    .line 610
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v5, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 613
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 614
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 615
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 613
    const/4 v1, 0x2

    move v3, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->TOP:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 616
    new-instance v5, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 617
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 618
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 616
    const/4 v6, 0x3

    move v7, v2

    move v8, v4

    move v9, v14

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v5, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 619
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 620
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 621
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 619
    const/4 v1, 0x4

    move v3, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->BOTTOM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 595
    return-void
.end method

.method constructor <init>(IIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "freeformSide"    # I
    .param p2, "freeformAreaAlpha"    # I
    .param p3, "hintTextAlpha"    # I
    .param p4, "hintTextOrientation"    # I
    .param p5, "touchArea"    # Landroid/graphics/RectF;
    .param p6, "freeformArea"    # Landroid/graphics/RectF;
    .param p7, "expandedTouchFreeformArea"    # Landroid/graphics/RectF;

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformSide:I

    .line 830
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    .line 831
    const v4, 0x7f0f045f

    .line 830
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;-><init>(IIIILcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    .line 832
    iput-object p6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    .line 833
    iput-object p5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    .line 834
    iput-object p7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    .line 828
    return-void
.end method


# virtual methods
.method public acceptsDrop(IIIIZ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isCurrentTarget"    # Z

    .prologue
    .line 624
    if-eqz p5, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    .line 624
    :goto_0
    return v0

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    goto :goto_0
.end method

.method public areaContainsPoint(Landroid/graphics/RectF;IIFF)Z
    .locals 7
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 887
    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 888
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 889
    .local v3, "top":I
    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 890
    .local v2, "right":I
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 891
    .local v0, "bottom":I
    int-to-float v5, v1

    cmpl-float v5, p4, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpl-float v5, p5, v5

    if-ltz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, p4, v5

    if-gtz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p5, v5

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public getFreeformedBounds(II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 907
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 908
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 907
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 909
    .local v0, "newWindowBounds":Landroid/graphics/Rect;
    return-object v0
.end method

.method public getPreFreeformedBounds(II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 898
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 899
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 898
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->update(Landroid/content/Context;)V

    .line 872
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 873
    const v1, 0x7f0d0303

    .line 872
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    .line 874
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 875
    const v1, 0x7f0d0304

    .line 874
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    .line 876
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 877
    const v1, 0x7f0d0307

    .line 876
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    .line 878
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 879
    const v1, 0x7f0d0308

    .line 878
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    .line 870
    return-void
.end method

.method public updateFreeformArea(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 838
    const/high16 v2, 0x40000000    # 2.0f

    .line 839
    .local v2, "posRatioVertical":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-nez v5, :cond_0

    .line 840
    const v2, 0x3faa3d71    # 1.33f

    .line 842
    :cond_0
    int-to-float v5, p1

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    int-to-float v6, p1

    div-float v1, v5, v6

    .line 843
    .local v1, "left":F
    int-to-float v5, p2

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    int-to-float v6, p2

    div-float v4, v5, v6

    .line 844
    .local v4, "top":F
    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    int-to-float v6, p1

    div-float/2addr v5, v6

    add-float v3, v1, v5

    .line 845
    .local v3, "right":F
    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    int-to-float v6, p2

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 847
    .local v0, "bottom":F
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 848
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    .line 849
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 850
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 852
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 853
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    .line 854
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 855
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 857
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    .line 858
    int-to-float v6, p1

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    int-to-float v7, p1

    div-float/2addr v6, v7

    .line 857
    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 859
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    .line 860
    int-to-float v6, p2

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v2

    int-to-float v7, p2

    div-float/2addr v6, v7

    .line 859
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 861
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 862
    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    int-to-float v8, p1

    div-float/2addr v7, v8

    .line 861
    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 863
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 864
    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 863
    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 837
    return-void
.end method
