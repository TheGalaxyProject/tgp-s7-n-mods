.class public Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;
.super Landroid/widget/FrameLayout;
.source "SettingsAdapter.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsItem"
.end annotation


# instance fields
.field protected final mImage:Landroid/support/wearable/view/CircledImageView;

.field protected final mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    .local p1, "this$0":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    const/4 v4, -0x1

    .line 227
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;

    .line 228
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-static {p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->-get1(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const v2, 0x7f11004e

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/view/CircledImageView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    .line 236
    const v2, 0x7f110122

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mText:Landroid/widget/TextView;

    .line 227
    return-void
.end method


# virtual methods
.method public getCurrentProximityValue()F
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressedPercent()F

    move-result v0

    return v0
.end method

.method public getProximityMaxValue()F
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->-get2(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)F

    move-result v0

    return v0
.end method

.method public getProximityMinValue()F
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->this$0:Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->-get0(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)F

    move-result v0

    return v0
.end method

.method public onCenterPosition(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 262
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CircledImageView;->setAlpha(F)V

    .line 263
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 261
    return-void
.end method

.method public onNonCenterPosition(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    const/high16 v1, 0x3f000000    # 0.5f

    .line 268
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CircledImageView;->setAlpha(F)V

    .line 269
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 267
    return-void
.end method

.method public setScalingAnimatorValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 256
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItem;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircledImageView;->setCircleRadiusPercent(F)V

    .line 257
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;->mImage:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircledImageView;->setCircleRadiusPressedPercent(F)V

    .line 255
    return-void
.end method
