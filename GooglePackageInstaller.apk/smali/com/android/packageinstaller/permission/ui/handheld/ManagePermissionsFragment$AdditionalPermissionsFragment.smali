.class public Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;
.source "ManagePermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalPermissionsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->setLoading(ZZ)V

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->setLoading(ZZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0181

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

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
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->-wrap0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
