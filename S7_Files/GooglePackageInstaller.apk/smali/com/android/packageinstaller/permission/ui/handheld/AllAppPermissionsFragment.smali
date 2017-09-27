.class public final Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
.source "AllAppPermissionsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/preference/PreferenceGroup;
    .locals 2
    .param p1, "group"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
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

    .prologue
    .line 176
    .local p3, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 177
    .local v0, "pref":Landroid/preference/PreferenceGroup;
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0    # "pref":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 179
    .restart local v0    # "pref":Landroid/preference/PreferenceGroup;
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_0
    return-object v0
.end method

.method private getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 168
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;
    .locals 5
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "group"    # Landroid/content/pm/PermissionGroupInfo;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 189
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v1, 0x0

    .line 191
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget v3, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010429

    invoke-static {v3, v1, v4}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p1, p3}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    .local v0, "desc":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    return-object v2

    .line 193
    .end local v0    # "desc":Ljava/lang/CharSequence;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p2, p3}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 196
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;-><init>()V

    .line 54
    .local v1, "instance":Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method private updateUi()V
    .locals 19

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 92
    :cond_0
    const/high16 v16, 0x7f070000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->addPreferencesFromResource(I)V

    .line 93
    const-string/jumbo v16, "other_perms"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 94
    .local v10, "otherGroup":Landroid/preference/PreferenceGroup;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v15, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 101
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x1000

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 103
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 104
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 105
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 106
    .local v9, "label":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 107
    .local v8, "infoIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 108
    const-string/jumbo v17, "hideInfoButton"

    const/16 v18, 0x0

    .line 107
    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_1

    .line 109
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v17, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 109
    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 112
    .end local v8    # "infoIntent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 114
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 115
    const/4 v5, 0x0

    .local v5, "i":I
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

    .line 118
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

    .line 125
    .local v11, "perm":Landroid/content/pm/PermissionInfo;
    :try_start_2
    iget v0, v11, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    and-int v16, v16, v17

    if-eqz v16, :cond_2

    .line 126
    iget v0, v11, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_4

    .line 115
    .end local v11    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v16, "AllAppPermissionsFragment"

    .line 121
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

    .line 120
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 141
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "i":I
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "label":Ljava/lang/CharSequence;
    :catch_1
    move-exception v3

    .line 142
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 145
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v16, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_7

    .line 162
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 161
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 130
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    .restart local v11    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_4
    :try_start_3
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 131
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    .line 133
    .local v4, "group":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v4, :cond_5

    move-object/from16 v16, v4

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v15}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/preference/PreferenceGroup;

    move-result-object v14

    .line 134
    .local v14, "pref":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .end local v14    # "pref":Landroid/preference/PreferenceGroup;
    :cond_5
    move-object/from16 v16, v11

    .line 133
    goto :goto_3

    .line 135
    .end local v4    # "group":Landroid/content/pm/PermissionGroupInfo;
    :cond_6
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 136
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    .line 137
    .restart local v4    # "group":Landroid/content/pm/PermissionGroupInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v13}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;Landroid/content/pm/PackageManager;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 88
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "group":Landroid/content/pm/PermissionGroupInfo;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v11    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->setHasOptionsMenu(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 66
    const v1, 0x7f0d0191

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->updateUi()V

    .line 72
    return-void
.end method
