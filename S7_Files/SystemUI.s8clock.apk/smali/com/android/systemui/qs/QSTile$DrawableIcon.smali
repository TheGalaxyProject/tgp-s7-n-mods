.class public Lcom/android/systemui/qs/QSTile$DrawableIcon;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 669
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 670
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 669
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    const/4 v2, 0x0

    .line 685
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    .line 687
    :cond_1
    instance-of v1, p1, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 688
    check-cast v0, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    .line 689
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$DrawableIcon;
    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    return v2

    .line 691
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 693
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$DrawableIcon;
    :cond_4
    return v2
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 675
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 680
    .local p0, "this":Lcom/android/systemui/qs/QSTile$DrawableIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.DrawableIcon;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
