.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mAppLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createDivider()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected createLabel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 41
    return-void
.end method

.method public customTileHandleStateChange(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 93
    return-void
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 0
    .param p1, "showAppLabel"    # Z

    .prologue
    .line 64
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
