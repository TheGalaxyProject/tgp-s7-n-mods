.class public Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
.source "AppPermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalPermissionsFragment"
.end annotation


# instance fields
.field mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    .line 373
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 374
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    iget-object v1, v1, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    iget-object v2, v2, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->setHasOptionsMenu(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 393
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 391
    const/4 v0, 0x1

    return v0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->-wrap1(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->-wrap2(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    .line 380
    return-void
.end method
