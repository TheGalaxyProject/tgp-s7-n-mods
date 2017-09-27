.class public Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;
.super Lcom/samsung/android/settings/SettingsSwitchPreference;
.source "DisplayDisabledAppearanceSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .local v0, "grp":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->enableView(Landroid/view/View;Z)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "grp":Landroid/view/ViewGroup;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    .line 31
    .local v0, "viewEnabled":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->enableView(Landroid/view/View;Z)V

    .line 27
    return-void

    .line 30
    .end local v0    # "viewEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->onClick()V

    .line 58
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

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
    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->notifyChanged()V

    .line 44
    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    .line 49
    return-void
.end method
