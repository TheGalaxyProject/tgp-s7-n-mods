.class public final Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;
.super Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;
.source "AppPermissionsFragmentWear.java"


# instance fields
.field private mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mHasConfirmedRevoke:Z

.field private mToggledGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;-><init>()V

    return-void
.end method

.method private addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPermissionGroupIcon(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v1

    const-string/jumbo v3, "android.permission-group.CALENDAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_8

    const v2, 0x7f02006c

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "android.permission-group.CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_9

    const v2, 0x7f020070

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "android.permission-group.CONTACTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_a

    const v2, 0x7f020072

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.permission-group.LOCATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_b

    const v2, 0x7f020074

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_c

    const v2, 0x7f020076

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "android.permission-group.PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_d

    const v2, 0x7f02006e

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "android.permission-group.SENSORS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_e

    const v2, 0x7f020079

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "android.permission-group.SMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_f

    const v2, 0x7f02007d

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "android.permission-group.STORAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    const v2, 0x7f02007f

    goto :goto_0

    :cond_8
    const v2, 0x7f02006d

    goto :goto_0

    :cond_9
    const v2, 0x7f020071

    goto :goto_0

    :cond_a
    const v2, 0x7f020073

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f020075

    goto/16 :goto_0

    :cond_c
    const v2, 0x7f020077

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f02006f

    goto/16 :goto_0

    :cond_e
    const v2, 0x7f02007a

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f02007e

    goto/16 :goto_0

    :cond_10
    const v2, 0x7f020080

    goto/16 :goto_0

    :cond_11
    if-eqz v1, :cond_12

    const v2, 0x7f02007b

    goto/16 :goto_0

    :cond_12
    const v2, 0x7f02007c

    goto/16 :goto_0
.end method

.method private initializePermissionGroupList()V
    .locals 11

    iget-object v9, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v9}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v7, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v9}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-static {v1, v7}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v8, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getPermissionGroupIcon(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I

    move-result v10

    invoke-direct {v8, v9, v10, v3}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;-><init>(Ljava/lang/CharSequence;II)V

    iput-object v1, v8, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v9, v8}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->addSetting(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;)V

    goto :goto_1

    :cond_1
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    iget-object v9, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v9, v8}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->addSetting(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private logAndClearToggledGroups()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsToggled(Ljava/lang/String;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mToggledGroups:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;-><init>()V

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;

    return-object v0
.end method

.method private static setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private updatePermissionGroupSetting(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v2, p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->get(I)Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    move-result-object v1

    iget-object v0, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getPermissionGroupIcon(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->updateSetting(ILjava/lang/CharSequence;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    const/16 v3, 0xfc

    if-ne p1, v3, :cond_3

    if-ne p2, v4, :cond_2

    const-string/jumbo v3, "EXTRA_INDEX"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string/jumbo v3, "ManagePermsFragment"

    const-string/jumbo v4, "Warning confirmation request came back with no index."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v3, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->get(I)Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    move-result-object v2

    iget-object v0, v2, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasGrantedByDefaultPermission()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mHasConfirmedRevoke:Z

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->updatePermissionGroupSetting(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;->getPosition()I

    move-result v2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v5, v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->get(I)Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    move-result-object v4

    iget-object v1, v4, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    check-cast v1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    if-nez v1, :cond_0

    const-string/jumbo v5, "ManagePermsFragment"

    const-string/jumbo v6, "Error: AppPermissionGroup is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getApp()Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->showLocationDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->updatePermissionGroupSetting(I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasGrantedByDefaultPermission()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasRuntimePermission()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mHasConfirmedRevoke:Z

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    goto :goto_0

    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "EXTRA_WARNING_MESSAGE"

    if-eqz v0, :cond_6

    const v5, 0x7f0d018e

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "EXTRA_INDEX"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0xfc

    invoke-virtual {p0, v3, v5}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    const v5, 0x7f0d0185

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v8, v7, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const v0, 0x7f0d015d

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "ManagePermsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No package:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    new-instance v5, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear$1;-><init>(Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->initializePermissionGroupList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->logAndClearToggledGroups()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->onResume()V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/model/AppPermissions;->refresh()V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->updatePermissionGroupSetting(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/wear/TitledSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->initializeLayout(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mHeader:Landroid/widget/TextView;

    const v1, 0x7f0d0181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mDetails:Landroid/widget/TextView;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mAdapter:Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, v3}, Landroid/support/wearable/view/WearableListView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/AppPermissionsFragmentWear;->mWheel:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, v2}, Landroid/support/wearable/view/WearableListView;->setVisibility(I)V

    goto :goto_0
.end method
