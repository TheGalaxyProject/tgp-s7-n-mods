.class public Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mSwitchWidgetResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->getWidgetLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mSwitchWidgetResId:I

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v1, :cond_1

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d0128

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0d0129

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_2

    const v1, 0x7f03007f

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mSwitchWidgetResId:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
