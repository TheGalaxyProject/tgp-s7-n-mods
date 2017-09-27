.class public final Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
.source "AppPermissionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$AdditionalPermissionsFragment;
    }
.end annotation


# instance fields
.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mExtraScreen:Landroid/preference/PreferenceScreen;

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
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mHasConfirmedRevoke:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "fragment"    # Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V
    .locals 11
    .param p0, "fragment"    # Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v10, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 163
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 164
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 166
    .local v4, "infoIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "hideInfoButton"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 167
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v8, "package"

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 171
    .end local v4    # "infoIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 173
    .local v5, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 175
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 177
    const v7, 0x7f0d0181

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 161
    :cond_1
    return-void
.end method

.method private static getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 360
    const/16 v2, 0x1000

    .line 359
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "ManagePermsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPreferences()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 183
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 188
    .local v9, "screen":Landroid/preference/PreferenceScreen;
    if-nez v9, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 190
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 193
    :cond_1
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 195
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_2

    .line 196
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 199
    :cond_2
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 200
    .local v3, "extraPerms":Landroid/preference/Preference;
    const v10, 0x7f020084

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setIcon(I)V

    .line 201
    const v10, 0x7f0d0184

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 203
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "group$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 204
    .local v4, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 208
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 210
    .local v7, "isPlatform":Z
    new-instance v8, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;

    invoke-direct {v8, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 211
    .local v8, "preference":Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;
    invoke-virtual {v8, p0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 214
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconPkg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconResId()I

    move-result v12

    .line 213
    invoke-static {v10, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 215
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 216
    const v11, 0x1010429

    .line 215
    invoke-static {v10, v6, v11}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 220
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getUserId()I

    move-result v11

    .line 219
    invoke-static {v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 221
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_5

    .line 222
    invoke-virtual {v8, v0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 223
    const v10, 0x7f0d0127

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    .line 229
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    :goto_1
    invoke-virtual {v8, v13}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 230
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setChecked(Z)V

    .line 232
    if-eqz v7, :cond_6

    .line 233
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 225
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_5
    const v10, 0x7f0d018f

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    .line 226
    invoke-virtual {v8, v13}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 235
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_6
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-nez v10, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    .line 238
    :cond_7
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 242
    .end local v4    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "isPlatform":Z
    .end local v8    # "preference":Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;
    :cond_8
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_9

    .line 243
    new-instance v10, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$2;

    invoke-direct {v10, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)V

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 256
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 257
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    const/high16 v12, 0x7f0f0000

    .line 257
    invoke-virtual {v10, v12, v2, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    .end local v2    # "count":I
    :cond_9
    invoke-virtual {p0, v13, v14}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setLoading(ZZ)V

    .line 181
    return-void
.end method

.method private logToggledGroups()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 331
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsToggled(Ljava/lang/String;Ljava/util/List;)V

    .line 332
    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    .line 328
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;-><init>()V

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    return-object v0
.end method

.method private static setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object p0
.end method

.method private setPreferencesCheckedState()V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V

    .line 338
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V

    .line 336
    :cond_0
    return-void
.end method

.method private setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 345
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 346
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 347
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v5, v2, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 348
    check-cast v4, Landroid/preference/SwitchPreference;

    .line 349
    .local v4, "switchPref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v0

    .line 350
    .local v0, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 345
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v4    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setLoading(ZZ)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setHasOptionsMenu(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 94
    .local v6, "ab":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 100
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1, v7}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 101
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 102
    const v0, 0x7f0d015d

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 104
    return-void

    .line 107
    :cond_1
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    new-instance v5, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 113
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->loadPreferences()V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    const v0, 0x7f0d0191

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 157
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 157
    const v2, 0x7f0d01a2

    invoke-static {v0, p1, v2, v1}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 128
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 129
    return v3

    .line 134
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    move-result-object v0

    .line 135
    .local v0, "frag":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 136
    const v2, 0x1020002

    .line 135
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "AllPerms"

    .line 135
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 139
    return v3

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onPause()V

    .line 313
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->logToggledGroups()V

    .line 311
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "groupName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v3, v2}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    .line 270
    .local v1, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    if-nez v1, :cond_0

    .line 271
    return v6

    .line 274
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    .line 276
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getApp()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->showLocationDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 278
    return v6

    .line 280
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v3, :cond_2

    .line 281
    invoke-virtual {v1, v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    .line 307
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 283
    :cond_2
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasGrantedByDefaultPermission()Z

    move-result v0

    .line 284
    .local v0, "grantedByDefault":Z
    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasRuntimePermission()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mHasConfirmedRevoke:Z

    if-eqz v3, :cond_4

    .line 303
    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    goto :goto_0

    .line 285
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    if-eqz v0, :cond_5

    const v3, 0x7f0d018e

    .line 285
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 288
    const v4, 0x7f0d0142

    .line 285
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 290
    new-instance v4, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;Landroid/preference/Preference;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Z)V

    .line 289
    const v5, 0x7f0d017a

    .line 285
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return v6

    .line 287
    :cond_5
    const v3, 0x7f0d0185

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->refresh()V

    .line 120
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->loadPreferences()V

    .line 121
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState()V

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    .line 146
    :cond_0
    return-void
.end method
