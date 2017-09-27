.class public Lcom/samsung/android/settings/SecSummaryPreference;
.super Landroid/preference/Preference;
.source "SecSummaryPreference.java"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mEndLabel:Ljava/lang/String;

.field private mLeft:I

.field private mLeftRatio:F

.field private mMiddle:I

.field private mMiddleRatio:F

.field private mRight:I

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const v0, 0x7f04027b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f0d0097

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    .line 46
    const v0, 0x7f0d0098

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f110633

    .line 87
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 89
    const v1, 0x7f110595

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 90
    .local v0, "colorBar":Lcom/android/settings/applications/LinearColorBar;
    iget v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeftRatio:F

    iget v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddleRatio:F

    iget v3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 91
    iget v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    iget v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddle:I

    iget v3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b13de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 53
    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 52
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "middle"    # I
    .param p3, "right"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    .line 80
    iput p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddle:I

    .line 81
    iput p3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    .line 78
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    .line 65
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "middle"    # F
    .param p3, "right"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeftRatio:F

    .line 73
    iput p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddleRatio:F

    .line 74
    iput p3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRightRatio:F

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    .line 71
    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 4
    .param p1, "units"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b13de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 61
    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 60
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method
