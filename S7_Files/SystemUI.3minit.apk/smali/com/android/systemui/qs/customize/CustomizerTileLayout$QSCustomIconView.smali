.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
.super Lcom/android/systemui/qs/QSIconView;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QSCustomIconView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/CustomizerTileLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 615
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 614
    return-void
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 643
    .local v1, "contantState":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v5, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 644
    check-cast v5, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 645
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0204

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 646
    .local v4, "tileIconSizePx":I
    int-to-float v5, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 647
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 646
    mul-float v3, v5, v6

    .line 648
    .local v3, "scaleFactor":F
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 653
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "scaleFactor":F
    .end local v4    # "tileIconSizePx":I
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 654
    return-object p1

    .line 649
    .restart local v0    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 656
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 624
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    instance-of v1, v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v1, :cond_1

    .line 625
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 628
    :cond_1
    iget-boolean v1, p2, Lcom/android/systemui/qs/QSTile$State;->isCustomTile:Z

    if-eqz v1, :cond_3

    .line 629
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 618
    return-void

    .line 622
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 631
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
