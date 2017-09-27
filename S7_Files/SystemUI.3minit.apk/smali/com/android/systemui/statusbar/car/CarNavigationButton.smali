.class public Lcom/android/systemui/statusbar/car/CarNavigationButton;
.super Landroid/widget/RelativeLayout;
.source "CarNavigationButton.java"


# instance fields
.field private mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

.field private mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    .prologue
    const v2, 0x106000d

    const/4 v1, 0x0

    const v3, 0x3f333333    # 0.7f

    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f1300d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setBackgroundColor(I)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 48
    const v0, 0x7f1300d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 41
    return-void
.end method

.method public setResources(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 3
    .param p1, "selected"    # Z
    .param p2, "showMoreIcon"    # Z

    .prologue
    const/4 v0, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    if-eqz p1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    .line 60
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    goto :goto_0
.end method
