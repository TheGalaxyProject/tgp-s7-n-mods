.class public Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
.super Lcom/android/settings/SecSettingsSwitchPreference;
.source "DisabledAppearanceSecSettingsSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEnabledAppearance:Z

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .local v0, "grp":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "grp":Landroid/view/ViewGroup;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public inEnabledAppearance()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    .line 27
    .local v0, "viewEnabled":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    .line 24
    return-void

    .line 26
    .end local v0    # "viewEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0}, Lcom/android/settings/SecSettingsSwitchPreference;->onClick()V

    .line 53
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setEnabledAppearance(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->notifyChanged()V

    .line 39
    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    .line 48
    return-void
.end method
