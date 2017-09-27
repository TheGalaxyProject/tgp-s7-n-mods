.class public Lcom/android/keyguard/KeyguardTextView;
.super Landroid/widget/TextView;
.source "KeyguardTextView.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mFontScale:F

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 40
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 45
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 50
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 55
    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(F)F
    .locals 3
    .param p0, "scale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    return v2

    .line 92
    :cond_1
    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    .line 62
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 59
    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 71
    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(F)V
    .locals 4
    .param p1, "newFontScale"    # F

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 77
    .local v0, "newFontScaleInBoundary":F
    iget v1, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    .line 79
    iget v1, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardTextView;->setTextSize(IF)V

    .line 75
    :cond_0
    return-void
.end method
