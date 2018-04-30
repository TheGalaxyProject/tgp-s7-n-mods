.class public Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "PermissionAppsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemAppsFragment"
.end annotation


# instance fields
.field mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private static bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v2, 0x7f0d01aa

    invoke-virtual {p0, v2, v1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreferenceScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setLoading(ZZ)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setLoading(ZZ)V

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setPreferenceScreen()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-wrap1(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    goto :goto_0
.end method

.method public onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->setPreferenceScreen()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-wrap1(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    invoke-static {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    return-void
.end method
