.class public final Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "AllAppPermissionsFragment.java"


# instance fields
.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageItemInfo;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/PreferenceGroup;"
        }
    .end annotation

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    const v1, 0x7f030071

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getImmutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 3

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030079

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    new-instance v2, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v1
.end method

.method private getMutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    iget-object v4, p2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    aput-object v3, v0, v5

    new-instance v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f030079

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setLayoutResource(I)V

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    new-instance v3, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v2
.end method

.method private getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 2

    const-string/jumbo v1, "other_perms"

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "other_perms"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0d0192

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->isMutableGranularPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getMutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getImmutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private static getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const v1, 0x1010429

    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f02006b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMutableGranularPermission(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.READ_SMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
    .locals 3

    new-instance v1, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private updateUi()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "hideInfoButton"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "package"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v6, v13}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v13, :cond_6

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v13

    if-ge v4, v13, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v13, v13, v4

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    iget v13, v9, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v14, 0x40000000    # 2.0f

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    iget v13, v9, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v13, "AllAppPermissionsFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Can\'t get permission info for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v13, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    iget v13, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    if-eqz v3, :cond_3

    move-object v13, v3

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v12}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_3
    move-object v13, v9

    goto :goto_2

    :cond_4
    iget v13, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_5

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_6
    new-instance v13, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_7

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {v13, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0d0191

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    new-instance v5, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;)V

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

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

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onResume()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->updateUi()V

    return-void
.end method
