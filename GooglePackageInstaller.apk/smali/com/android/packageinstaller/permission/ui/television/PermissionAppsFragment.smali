.class public final Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;
.super Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;
.source "PermissionAppsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$SystemAppsFragment;
    }
.end annotation


# instance fields
.field private mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mHasConfirmedRevoke:Z

.field private mHideSystemMenu:Landroid/view/MenuItem;

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

.field private mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

.field private mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;

.field private mToggledGroups:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mHasConfirmedRevoke:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setOnPermissionsLoadedListener(Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;-><init>()V

    return-void
.end method

.method private addToggledGroup(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v3, 0x7f0d01a8

    invoke-virtual {p0, v3, v2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v4, v4, v2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->setHeader(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private logToggledGroups()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v1}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsToggled(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mToggledGroups:Landroid/support/v4/util/ArrayMap;

    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;
    .locals 1

    new-instance v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;-><init>()V

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    return-object v0
.end method

.method private setOnPermissionsLoadedListener(Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    return-void
.end method

.method private static setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
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

    const-string/jumbo v1, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private updateMenu()V
    .locals 2

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setLoading(ZZ)V

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v2, v4}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0d0188

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0d0189

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->updateMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v0

    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystem:Z

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->updateMenu()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onPause()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->logToggledGroups()V

    return-void
.end method

.method public onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {v5}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v17

    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    :goto_0
    if-ge v8, v13, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    :goto_1
    if-ge v8, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    invoke-static {v3}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v10, :cond_7

    :cond_5
    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v18

    if-eqz v18, :cond_6

    const v18, 0x7f0d018f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    instance-of v0, v6, Landroid/support/v14/preference/SwitchPreference;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mShowSystem:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    if-eqz v6, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_8
    const/16 v18, 0x1

    goto :goto_3

    :cond_9
    new-instance v14, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v14, v5}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getLabel()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v18

    if-eqz v18, :cond_a

    const v18, 0x7f0d018f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_c
    const/16 v18, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    const-string/jumbo v18, "_showSystem"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v18, "_showSystem"

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    if-nez v15, :cond_f

    new-instance v15, Landroid/support/v7/preference/Preference;

    invoke-direct {v15, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v18, "_showSystem"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const v18, 0x7f020084

    const v19, 0x1010429

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v18, 0x7f0d01a5

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    new-instance v18, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_f
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    :goto_5
    if-ge v8, v13, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_10

    add-int/lit8 v7, v7, 0x1

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    const v19, 0x7f0d0187

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_13
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_14

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mExtraScreen:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    :cond_15
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->setLoading(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    :cond_16
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v4, v3}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApp(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    move-result-object v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->showLocationDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v7

    :cond_1
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPermissionGroup()Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->addToggledGroup(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isReviewRequired()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->startActivity(Landroid/content/Intent;)V

    return v7

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->grantRuntimePermissions()V

    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->hasGrantedByDefaultPermissions()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->hasRuntimePermissions()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mHasConfirmedRevoke:Z

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->revokeRuntimePermissions()V

    goto :goto_0

    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_6

    const v4, 0x7f0d018e

    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0142

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Landroid/support/v7/preference/Preference;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Z)V

    const v6, 0x7f0d017a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v7

    :cond_6
    const v4, 0x7f0d0185

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onResume()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    return-void
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x7f0d018b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->bindUi(Lcom/android/packageinstaller/permission/ui/television/SettingsWithHeader;Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    return-void
.end method
