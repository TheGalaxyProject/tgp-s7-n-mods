.class public final Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "ManagePermissionsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$AdditionalPermissionsFragment;
    }
.end annotation


# instance fields
.field private mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mLauncherPkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private static bindPermissionUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/view/View;)V
    .locals 2
    .param p0, "fragment"    # Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 125
    :cond_1
    const v0, 0x7f0d01a7

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public static newInstance()Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;-><init>()V

    return-object v0
.end method

.method private updatePermissionsUi()V
    .locals 15

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->getGroups()Ljava/util/List;

    move-result-object v7

    .line 135
    .local v7, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionGroup;>;"
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    .line 139
    .local v10, "screen":Landroid/support/v7/preference/PreferenceScreen;
    new-instance v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;-><init>(Landroid/content/pm/PackageManager;)V

    .line 140
    .local v0, "cache":Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    .line 141
    .local v5, "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 143
    .local v8, "isSystemPermission":Z
    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 144
    .local v9, "preference":Landroid/support/v7/preference/Preference;
    if-nez v9, :cond_1

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v11, :cond_1

    .line 145
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 147
    :cond_1
    if-nez v9, :cond_2

    .line 148
    new-instance v9, Landroid/support/v7/preference/Preference;

    .end local v9    # "preference":Landroid/support/v7/preference/Preference;
    invoke-direct {v9, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 149
    .restart local v9    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v9, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 152
    const v12, 0x1010429

    .line 151
    invoke-static {v1, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 157
    if-eqz v8, :cond_3

    .line 158
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    :cond_2
    :goto_1
    move-object v4, v9

    .line 168
    .local v4, "finalPref":Landroid/support/v7/preference/Preference;
    new-instance v11, Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$1;

    invoke-direct {v14, p0, v4}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;Landroid/support/v7/preference/Preference;)V

    invoke-direct {v11, v12, v13, v14, v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;)V

    .line 179
    const/4 v12, 0x0

    .line 168
    invoke-virtual {v11, v12}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    goto :goto_0

    .line 160
    .end local v4    # "finalPref":Landroid/support/v7/preference/Preference;
    :cond_3
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v11, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 163
    :cond_4
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 182
    .end local v5    # "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    .end local v8    # "isSystemPermission":Z
    .end local v9    # "preference":Landroid/support/v7/preference/Preference;
    :cond_5
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-lez v11, :cond_6

    .line 183
    const-string/jumbo v11, "extra_prefs_key"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    if-nez v11, :cond_6

    .line 184
    new-instance v3, Landroid/support/v7/preference/Preference;

    invoke-direct {v3, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    .local v3, "extraScreenPreference":Landroid/support/v7/preference/Preference;
    const-string/jumbo v11, "extra_prefs_key"

    invoke-virtual {v3, v11}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 187
    const v11, 0x7f02006a

    .line 188
    const v12, 0x1010429

    .line 186
    invoke-static {v1, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const v11, 0x7f0d0184

    invoke-virtual {v3, v11}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 190
    new-instance v11, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;

    invoke-direct {v11, p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;)V

    invoke-virtual {v3, v11}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 203
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/high16 v13, 0x7f0f0000

    .line 203
    invoke-virtual {v11, v13, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v10, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 207
    .end local v2    # "count":I
    .end local v3    # "extraScreenPreference":Landroid/support/v7/preference/Preference;
    :cond_6
    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-eqz v11, :cond_7

    .line 208
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->setLoading(ZZ)V

    .line 128
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->setLoading(ZZ)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->setHasOptionsMenu(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    .line 70
    new-instance v1, Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;)V

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPermissionGroupsChanged()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->updatePermissionsUi()V

    .line 110
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v4, v3}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->getGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionGroup;

    move-result-object v1

    .line 94
    .local v1, "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    if-nez v1, :cond_0

    .line 95
    const/4 v4, 0x0

    return v4

    .line 98
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_PERMISSION_APPS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v5, "android.intent.extra.PERMISSION_NAME"

    .line 98
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "ManagePermissionsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No app to handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->refresh()V

    .line 77
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->updatePermissionsUi()V

    .line 74
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/ManagePermissionsFragment;->bindPermissionUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Landroid/view/View;)V

    .line 115
    return-void
.end method
