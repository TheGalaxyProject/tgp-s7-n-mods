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

    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "hideInfoButton"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "package"

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    :cond_0
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v7, 0x7f0d0181

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    return-void
.end method

.method private static getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

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

    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPreferences()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_1
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_2
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f020084

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setIcon(I)V

    const v10, 0x7f0d0184

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;

    invoke-direct {v8, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, p0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconPkg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconResId()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1010429

    invoke-static {v10, v6, v11}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getUserId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v8, v0}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const v10, 0x7f0d0127

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    :cond_4
    :goto_1
    invoke-virtual {v8, v13}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setPersistent(Z)V

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v7, :cond_6

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    const v10, 0x7f0d018f

    invoke-virtual {v8, v10}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    invoke-virtual {v8, v13}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    :cond_7
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_9

    new-instance v10, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$2;

    invoke-direct {v10, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)V

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    const/high16 v12, 0x7f0f0000

    invoke-virtual {v10, v12, v2, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-virtual {p0, v13, v14}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setLoading(ZZ)V

    return-void
.end method

.method private logToggledGroups()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsToggled(Ljava/lang/String;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mToggledGroups:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;-><init>()V

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPackageName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

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

.method private setPreferencesCheckedState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method private setPreferencesCheckedState(Landroid/preference/PreferenceScreen;)V
    .locals 7

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v5, v2, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setLoading(ZZ)V

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getPackageInfo(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const v0, 0x7f0d015d

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    new-instance v5, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->loadPreferences()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0191

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d01a2

    invoke-static {v0, p1, v2, v1}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v3

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/AllAppPermissionsFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "AllPerms"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onPause()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->logToggledGroups()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v3, v2}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    if-nez v1, :cond_0

    return v6

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->addToggledGroup(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getApp()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->showLocationDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v6

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v3, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_2
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasGrantedByDefaultPermission()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasRuntimePermission()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mHasConfirmedRevoke:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    const v3, 0x7f0d018e

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0142

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;Landroid/preference/Preference;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Z)V

    const v5, 0x7f0d017a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v6

    :cond_5
    const v3, 0x7f0d0185

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onResume()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->refresh()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->loadPreferences()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->setPreferencesCheckedState()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/handheld/SettingsWithHeader;Landroid/content/pm/PackageInfo;)V

    :cond_0
    return-void
.end method
