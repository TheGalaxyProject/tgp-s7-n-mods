.class public Lcom/samsung/android/settings/widget/BottomBarButton;
.super Landroid/widget/Button;
.source "BottomBarButton.java"


# instance fields
.field private isEnabledShowBtnBg:Z

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    iput v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/BottomBarButton;->setEnabled(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    if-eqz v0, :cond_1

    .line 36
    const v0, 0x7f02050a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setBackgroundResource(I)V

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setTextColor(I)V

    .line 42
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    const/high16 v1, 0x47000000    # 32768.0f

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setTextColor(I)V

    goto :goto_0
.end method
