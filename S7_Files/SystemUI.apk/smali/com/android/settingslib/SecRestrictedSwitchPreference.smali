.class public Lcom/android/settingslib/SecRestrictedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SecRestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 46
    sget v4, Lcom/android/settingslib/R$style;->SecRestrictedSwitchPreference:I

    invoke-direct {p0, p1, p2, v5, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    iput-boolean v5, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 42
    iput-object v6, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 47
    new-instance v4, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    .line 48
    if-eqz p2, :cond_2

    .line 50
    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    .line 49
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    .line 51
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 53
    .local v3, "useAdditionalSummary":Landroid/util/TypedValue;
    if-eqz v3, :cond_0

    .line 55
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 56
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 54
    :goto_0
    iput-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 60
    :cond_0
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    .line 59
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 61
    .local v2, "restrictedSwitchSummary":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 62
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 63
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 64
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_7

    .line 65
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    if-nez v1, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    .end local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 74
    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 76
    :cond_3
    iget-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_4

    .line 77
    invoke-virtual {p0, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 45
    :cond_4
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_5
    move v4, v5

    .line 56
    goto :goto_0

    :cond_6
    move v4, v5

    .line 55
    goto :goto_0

    .line 67
    .restart local v1    # "data":Ljava/lang/CharSequence;
    .restart local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    :cond_7
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_1

    .line 70
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 143
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 141
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 96
    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v4, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 97
    sget v4, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "restrictedIcon":Landroid/view/View;
    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, "switchWidget":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_1
    iget-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_6

    .line 107
    sget v4, Lcom/android/settingslib/R$id;->additional_summary:I

    .line 106
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "additionalSummaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    .end local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v6

    .line 100
    goto :goto_0

    :cond_4
    move v4, v5

    .line 103
    goto :goto_1

    .line 113
    .restart local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 117
    .end local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_6
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 155
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 1
    .param p1, "useSummary"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    .line 136
    return-void
.end method
