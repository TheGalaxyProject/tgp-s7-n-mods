.class public Lcom/android/settings/datausage/RestrictBackgroundDataPreference;
.super Lcom/android/settings/CustomDialogPreference;
.source "RestrictBackgroundDataPreference.java"


# instance fields
.field private mChecked:Z

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method private setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 56
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->notifyChanged()V

    .line 54
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings/CustomDialogPreference;->onAttached()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 44
    iget-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setChecked(Z)V

    .line 41
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 63
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "switchView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "switchView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 61
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setRestrictBackground(Z)V

    .line 93
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    const v0, 0x7f0b17e5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f0b17e7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 88
    :goto_0
    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    return-void

    .line 85
    :cond_0
    const v0, 0x7f0b17e6

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setRestrictBackground(Z)V

    .line 69
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->performClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setChecked(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;->refreshState()V

    .line 47
    return-void
.end method
