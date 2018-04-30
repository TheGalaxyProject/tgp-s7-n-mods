.class public final Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;
.source "ManagePermissionsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$AdditionalPermissionsFragment;
    }
.end annotation


# instance fields
.field private mExtraScreen:Landroid/preference/PreferenceScreen;

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
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->bindPermissionUi(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method private static bindPermissionUi(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public static newInstance()Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;-><init>()V

    return-object v0
.end method

.method private updatePermissionsUi()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->getGroups()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_1
    new-instance v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_3

    new-instance v9, Landroid/preference/Preference;

    invoke-direct {v9, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x1010429

    invoke-static {v1, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    if-eqz v8, :cond_4

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_1
    move-object v4, v9

    new-instance v11, Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;

    invoke-direct {v14, p0, v4}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;Landroid/preference/Preference;)V

    invoke-direct {v11, v12, v13, v14, v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-nez v11, :cond_5

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    :cond_5
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-lez v11, :cond_7

    const-string/jumbo v11, "extra_prefs_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-nez v11, :cond_7

    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "extra_prefs_key"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v11, 0x7f02006a

    const v12, 0x1010429

    invoke-static {v1, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v11, 0x7f0d0184

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v11, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$2;

    invoke-direct {v11, p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)V

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/high16 v13, 0x7f0f0000

    invoke-virtual {v11, v13, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->setLoading(ZZ)V

    :cond_8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->setLoading(ZZ)V

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;)V

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPermissionGroupsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->updatePermissionsUi()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v4, v3}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->getGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_PERMISSION_APPS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

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

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onResume()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->mPermissions:Lcom/android/packageinstaller/permission/model/PermissionGroups;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->refresh()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->updatePermissionsUi()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->bindPermissionUi(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
