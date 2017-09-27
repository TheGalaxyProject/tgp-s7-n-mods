.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$EmptyView;
.super Landroid/view/View;
.source "AccessibilitySettingsHearing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyView"
.end annotation


# virtual methods
.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$EmptyView;->setMeasuredDimension(II)V

    .line 246
    return-void
.end method
