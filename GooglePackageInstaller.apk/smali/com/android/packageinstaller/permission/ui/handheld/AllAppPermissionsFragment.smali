.class public final Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
.source "AllAppPermissionsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/preference/PreferenceGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageItemInfo;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)",
            "Landroid/preference/PreferenceGroup;"
        }
    .end annotation

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

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

.method private getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;
    .locals 5

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iget v3, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v3, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010429

    invoke-static {v3, v1, v4}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v3, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v3, :cond_1

    invoke-virtual {p2, p3}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;
    .locals 3

    new-instance v1, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private updateUi()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const/high16 v16, 0x7f070000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v16, "other_perms"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v16, 0x1000

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string/jumbo v17, "hideInfoButton"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_1

    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v17, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    const/4 v5, 0x0

    :goto_0
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    :try_start_1
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    :try_start_2
    iget v0, v11, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    and-int v16, v16, v17

    if-eqz v16, :cond_2

    iget v0, v11, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_4

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v16, "AllAppPermissionsFragment"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Can\'t get permission info for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v16, "AllAppPermissionsFragment"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Problem getting package info for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance v16, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_7

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :try_start_3
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v16, v4

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v15}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/preference/PreferenceGroup;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v11

    goto :goto_3

    :cond_6
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_2

    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0d0191

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

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

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onResume()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->updateUi()V

    return-void
.end method
