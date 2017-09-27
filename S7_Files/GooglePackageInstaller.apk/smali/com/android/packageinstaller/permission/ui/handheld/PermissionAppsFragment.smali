.class public final Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;
.super Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;
.source "PermissionAppsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$SystemAppsFragment;
    }
.end annotation


# instance fields
.field private mExtraScreen:Landroid/preference/PreferenceScreen;

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

.field private mToggledGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mHasConfirmedRevoke:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Fragment;Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissionApps"    # Lcom/android/packageinstaller/permission/model/PermissionApps;

    .prologue
    invoke-static {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->bindUi(Landroid/app/Fragment;Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setOnPermissionsLoadedListener(Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method private addToggledGroup(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static bindUi(Landroid/app/Fragment;Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissionApps"    # Lcom/android/packageinstaller/permission/model/PermissionApps;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 154
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 156
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v4, 0x7f0d018a

    invoke-virtual {p0, v4, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    return-void
.end method

.method private logToggledGroups()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 380
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    if-eqz v4, :cond_1

    .line 381
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 382
    .local v0, "groupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 383
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/AppPermissionGroup;>;"
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v3, v1}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsToggled(Ljava/lang/String;Ljava/util/List;)V

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/AppPermissionGroup;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iput-object v5, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mToggledGroups:Landroid/util/ArrayMap;

    .line 379
    .end local v0    # "groupCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;
    .locals 1
    .param p0, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;-><init>()V

    invoke-static {v0, p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    return-object v0
.end method

.method private setOnPermissionsLoadedListener(Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    .line 160
    return-void
.end method

.method private static setPermissionName(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
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
    .line 69
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object p0
.end method

.method private updateMenu()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setLoading(ZZ)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setHasOptionsMenu(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    .line 100
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.PERMISSION_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "groupName":Ljava/lang/String;
    new-instance v2, Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    .line 102
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v2, v4}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x1

    .line 114
    const v1, 0x7f0d0188

    .line 113
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 115
    const/4 v0, 0x2

    .line 116
    const v1, 0x7f0d0189

    .line 115
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    .line 117
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    const v2, 0x7f0d01a2

    invoke-static {v0, p1, v2, v1}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 119
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->updateMenu()V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 137
    :goto_0
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 127
    return v0

    .line 130
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystem:Z

    .line 131
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->updateMenu()V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onPause()V

    .line 364
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->logToggledGroups()V

    .line 362
    return-void
.end method

.method public onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 23
    .param p1, "permissionApps"    # Lcom/android/packageinstaller/permission/model/PermissionApps;

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 168
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    invoke-static {v5}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v12

    .line 173
    .local v12, "isTelevision":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 174
    .local v19, "screen":Landroid/preference/PreferenceScreen;
    if-nez v19, :cond_1

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 179
    :cond_1
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 180
    .local v18, "preferencesToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    .local v15, "n":I
    :goto_0
    if-ge v9, v15, :cond_2

    .line 181
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 183
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 184
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    :goto_1
    if-ge v9, v15, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "app$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .line 190
    .local v3, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    invoke-static {v3}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 194
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 197
    .local v7, "existingPref":Landroid/preference/Preference;
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 201
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mLauncherPkgs:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v11

    .line 202
    .local v11, "isSystemApp":Z
    if-eqz v11, :cond_6

    if-eqz v12, :cond_7

    .line 209
    :cond_6
    if-eqz v7, :cond_d

    .line 211
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v10

    .line 213
    .local v10, "isPolicyFixed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getUserId()I

    move-result v21

    .line 212
    invoke-static/range {v20 .. v21}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    .line 214
    .local v6, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v12, :cond_a

    instance-of v0, v7, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v20, v7

    .line 215
    check-cast v20, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;

    .line 216
    if-eqz v10, :cond_8

    .line 215
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 217
    if-eqz v10, :cond_9

    .line 218
    const v20, 0x7f0d0127

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 217
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 225
    instance-of v0, v7, Landroid/preference/SwitchPreference;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 226
    check-cast v7, Landroid/preference/SwitchPreference;

    .line 227
    .end local v7    # "existingPref":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v20

    .line 226
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 202
    .end local v10    # "isPolicyFixed":Z
    .restart local v7    # "existingPref":Landroid/preference/Preference;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mShowSystem:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 203
    if-eqz v7, :cond_4

    .line 204
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 216
    .restart local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v10    # "isPolicyFixed":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 218
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_9
    const/16 v20, 0x0

    goto :goto_4

    .line 220
    .restart local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_a
    if-eqz v10, :cond_b

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    if-eqz v10, :cond_c

    .line 222
    const v20, 0x7f0d018f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 221
    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 220
    :cond_b
    const/16 v20, 0x1

    goto :goto_6

    .line 222
    :cond_c
    const/16 v20, 0x0

    goto :goto_7

    .line 232
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v10    # "isPolicyFixed":Z
    :cond_d
    new-instance v17, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 233
    .local v17, "pref":Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getLabel()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getUserId()I

    move-result v21

    .line 237
    invoke-static/range {v20 .. v21}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    .line 239
    .restart local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isPolicyFixed()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 240
    if-nez v12, :cond_10

    if-eqz v6, :cond_10

    .line 241
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 242
    const v20, 0x7f0d0127

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    .line 248
    :cond_e
    :goto_8
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 249
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setChecked(Z)V

    .line 251
    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    .line 255
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 244
    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 245
    const v20, 0x7f0d018f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 257
    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 261
    .end local v3    # "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .end local v6    # "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v7    # "existingPref":Landroid/preference/Preference;
    .end local v11    # "isSystemApp":Z
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "pref":Lcom/android/packageinstaller/permission/ui/handheld/RestrictedSwitchPreference;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 262
    const-string/jumbo v20, "_showSystem"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v20, "_showSystem"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 265
    .local v16, "pref":Landroid/preference/Preference;
    if-nez v16, :cond_13

    .line 266
    new-instance v16, Landroid/preference/Preference;

    .end local v16    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v16    # "pref":Landroid/preference/Preference;
    const-string/jumbo v20, "_showSystem"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 268
    const v20, 0x7f020084

    .line 269
    const v21, 0x1010429

    .line 268
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    const v20, 0x7f0d01a5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 271
    new-instance v20, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 284
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_13
    const/4 v8, 0x0

    .line 288
    .local v8, "grantedCount":I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    :goto_9
    if-ge v9, v15, :cond_15

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 290
    add-int/lit8 v8, v8, 0x1

    .line 288
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 293
    :cond_15
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 294
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 293
    const v21, 0x7f0d0187

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    .end local v8    # "grantedCount":I
    .end local v16    # "pref":Landroid/preference/Preference;
    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :cond_17
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 298
    .restart local v13    # "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 299
    .restart local v16    # "pref":Landroid/preference/Preference;
    if-eqz v16, :cond_18

    .line 300
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 301
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 303
    if-eqz v16, :cond_17

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mExtraScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 309
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "pref":Landroid/preference/Preference;
    :cond_19
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->setLoading(ZZ)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mOnPermissionsLoadedListener:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    .line 165
    :cond_1a
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v3, v2}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApp(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    move-result-object v0

    .line 321
    .local v0, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    if-nez v0, :cond_0

    .line 322
    return v6

    .line 325
    :cond_0
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPermissionGroup()Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->addToggledGroup(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    .line 327
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getGroupName()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->showLocationDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 330
    return v6

    .line 332
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v3, :cond_2

    .line 333
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->grantRuntimePermissions()V

    .line 358
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 335
    :cond_2
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->hasGrantedByDefaultPermissions()Z

    move-result v1

    .line 336
    .local v1, "grantedByDefault":Z
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->hasRuntimePermissions()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mHasConfirmedRevoke:Z

    if-eqz v3, :cond_4

    .line 355
    :cond_3
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->revokeRuntimePermissions()V

    goto :goto_0

    .line 337
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    if-eqz v1, :cond_5

    const v3, 0x7f0d018e

    .line 337
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 340
    const v4, 0x7f0d0142

    .line 337
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 342
    new-instance v4, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;Landroid/preference/Preference;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Z)V

    .line 341
    const v5, 0x7f0d017a

    .line 337
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 353
    return v6

    .line 339
    :cond_5
    const v3, 0x7f0d0185

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->refresh(Z)V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->mPermissionApps:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->bindUi(Landroid/app/Fragment;Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    .line 146
    return-void
.end method
