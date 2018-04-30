.class public Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "AppPermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalPermissionsFragment"
.end annotation


# instance fields
.field mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private static bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "hideInfoButton"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "package"

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const v6, 0x7f0d01a9

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v3, v6}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->mOuterFragment:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

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
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

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
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->-wrap1(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
