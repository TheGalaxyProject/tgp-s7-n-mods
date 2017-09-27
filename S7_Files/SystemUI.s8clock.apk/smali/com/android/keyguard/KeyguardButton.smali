.class public Lcom/android/keyguard/KeyguardButton;
.super Landroid/widget/Button;
.source "KeyguardButton.java"


# instance fields
.field private mFontScale:F

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    .line 46
    return-void
.end method

.method private updateFontSizeInKeyguardBoundary(F)V
    .locals 4
    .param p1, "newFontScale"    # F

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 67
    .local v0, "newFontScaleInBoundary":F
    iget v1, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    .line 69
    iget v1, p0, Lcom/android/keyguard/KeyguardButton;->mOriginalFontSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardButton;->mFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardButton;->setTextSize(IF)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardButton;->setButtonTextColorOnTheme()V

    .line 62
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardButton;->updateFontSizeInKeyguardBoundary(F)V

    .line 59
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 53
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardButton;->mOriginalFontSize:F

    .line 54
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardButton;->setButtonTextColorOnTheme()V

    .line 55
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardButton;->updateFontSizeInKeyguardBoundary(F)V

    .line 51
    return-void
.end method

.method protected setButtonTextColorOnTheme()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardButton;->setTextColor(I)V

    .line 73
    :cond_0
    return-void
.end method
