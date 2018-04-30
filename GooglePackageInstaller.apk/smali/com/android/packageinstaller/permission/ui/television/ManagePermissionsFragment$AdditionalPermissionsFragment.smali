.class public Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "ManagePermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalPermissionsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private static bindPermissionUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->setLoading(ZZ)V

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->setLoading(ZZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0181

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;->bindPermissionUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/view/View;)V

    return-void
.end method
