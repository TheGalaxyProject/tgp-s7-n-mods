.class public final Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "AllAppPermissionsFragment.java"


# instance fields
.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/support/v7/preference/PreferenceGroup;
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
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/PreferenceGroup;"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 207
    .local v0, "pref":Landroid/support/v7/preference/PreferenceGroup;
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    .end local v0    # "pref":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 209
    .restart local v0    # "pref":Landroid/support/v7/preference/PreferenceGroup;
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 210
    const v1, 0x7f030071

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 215
    :cond_0
    return-object v0
.end method

.method private getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 198
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getImmutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 3
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "group"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    const v2, 0x7f030079

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 264
    new-instance v2, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$4;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 275
    return-object v1
.end method

.method private getMutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 6
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "group"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    const/4 v5, 0x0

    .line 227
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    iget-object v4, p2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    .line 228
    .local v1, "permGroup":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 231
    .local v0, "filterPermissions":[Ljava/lang/String;
    new-instance v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, "pref":Landroid/support/v14/preference/SwitchPreference;
    const v3, 0x7f030079

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setLayoutResource(I)V

    .line 233
    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 238
    new-instance v3, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$3;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    return-object v2
.end method

.method private getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v1, "other_perms"

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 118
    .local v0, "otherGroup":Landroid/support/v7/preference/PreferenceGroup;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    .end local v0    # "otherGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v0    # "otherGroup":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v1, "other_perms"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 121
    const v1, 0x7f0d0192

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 124
    :cond_0
    return-object v0
.end method

.method private getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "group"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 219
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->isMutableGranularPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getMutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getImmutablePreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private static getTintedPermissionIcon(Landroid/content/Context;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "group"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 281
    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    const v1, 0x1010429

    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 283
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 286
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v1, 0x7f02006b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static isMutableGranularPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 292
    sget-boolean v0, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 295
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

    .line 304
    return v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v1, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;-><init>()V

    .line 66
    .local v1, "instance":Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method

.method private updateUi()V
    .locals 17

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 130
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v12, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 133
    .local v10, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 134
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 135
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 136
    .local v7, "label":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 137
    .local v6, "infoIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 138
    const-string/jumbo v14, "hideInfoButton"

    const/4 v15, 0x0

    .line 137
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 139
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v14, "package"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 139
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    .line 142
    .end local v6    # "infoIntent":Landroid/content/Intent;
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v6, v13}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 145
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v13

    if-ge v4, v13, :cond_6

    .line 148
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

    .line 155
    .local v9, "perm":Landroid/content/pm/PermissionInfo;
    iget v13, v9, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v14, 0x40000000    # 2.0f

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    .line 156
    iget v13, v9, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_2

    .line 145
    .end local v9    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "AllAppPermissionsFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Can\'t get permission info for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v15, v15, v4

    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 160
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v13, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getGroup(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    .line 161
    .local v3, "group":Landroid/content/pm/PermissionGroupInfo;
    iget v13, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 162
    if-eqz v3, :cond_3

    move-object v13, v3

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v12}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->findOrCreate(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v11

    .line 163
    .local v11, "pref":Landroid/support/v7/preference/PreferenceGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .end local v11    # "pref":Landroid/support/v7/preference/PreferenceGroup;
    :cond_3
    move-object v13, v9

    .line 162
    goto :goto_2

    .line 164
    :cond_4
    iget v13, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v13, :cond_1

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v8

    .line 166
    .local v8, "otherGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_5

    .line 167
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getOtherGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getPreference(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionGroupInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 175
    .end local v3    # "group":Landroid/content/pm/PermissionGroupInfo;
    .end local v4    # "i":I
    .end local v8    # "otherGroup":Landroid/support/v7/preference/PreferenceGroup;
    .end local v9    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_6
    new-instance v13, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_7

    .line 192
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {v13, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 127
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->setHasOptionsMenu(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 77
    .local v6, "ab":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 78
    const v0, 0x7f0d0191

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 85
    const/16 v1, 0x1000

    .line 84
    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 91
    new-instance v5, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;)V

    .line 90
    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 73
    return-void

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/AllAppPermissionsFragment;->updateUi()V

    .line 100
    return-void
.end method
