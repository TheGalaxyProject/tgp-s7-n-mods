.class Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "NavigationBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/NavigationBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintedDrawable"
.end annotation


# instance fields
.field private mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 122
    return-void
.end method

.method private updateState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 148
    .local v0, "color":I
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    .end local v0    # "color":I
    :cond_0
    return v3
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 114
    instance-of v0, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    if-eqz v0, :cond_0

    .line 115
    check-cast p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    return-object p0

    .line 117
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public setState([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    move-result v0

    .line 134
    .local v0, "needsInvalidate":Z
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result v1

    .line 135
    .local v1, "needsInvalidateForState":Z
    if-nez v0, :cond_0

    .end local v1    # "needsInvalidateForState":Z
    :goto_0
    return v1

    .restart local v1    # "needsInvalidateForState":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setTintListCompat(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 140
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->invalidateSelf()V

    .line 138
    :cond_0
    return-void
.end method
