.class final Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PermissionGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/model/PermissionGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method private loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-lez v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 217
    invoke-static {v1, v2, v3}, Lcom/android/packageinstaller/permission/utils/Utils;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    :cond_1
    return-object v0
.end method

.method private loadItemInfoLabel(Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 209
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 211
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v11, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionGroup;>;"
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 110
    .local v22, "seenPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 111
    .local v18, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v7

    .line 113
    .local v7, "groupInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "groupInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 115
    .local v5, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->isLoadInBackgroundCanceled()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    return-object v23

    .line 122
    :cond_1
    :try_start_0
    iget-object v0, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 127
    .local v10, "groupPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v12, 0x0

    .line 130
    .local v12, "hasRuntimePermissions":Z
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "groupPermission$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 131
    .local v8, "groupPermission":Landroid/content/pm/PermissionInfo;
    iget-object v0, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget v0, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 133
    iget v0, v8, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 134
    iget v0, v8, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-nez v23, :cond_2

    .line 135
    const/4 v12, 0x1

    goto :goto_1

    .line 140
    .end local v8    # "groupPermission":Landroid/content/pm/PermissionInfo;
    :cond_3
    if-eqz v12, :cond_0

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->loadItemInfoLabel(Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 145
    .local v17, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 148
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    iget-object v0, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 149
    iget-object v0, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 148
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v4, v0, v1, v2, v13}, Lcom/android/packageinstaller/permission/model/PermissionGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 150
    .local v4, "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 155
    .end local v4    # "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    .end local v5    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v9    # "groupPermission$iterator":Ljava/util/Iterator;
    .end local v10    # "groupPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v12    # "hasRuntimePermissions":Z
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "label":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 156
    const/16 v24, 0x1000

    .line 155
    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 160
    .local v16, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    .line 161
    .local v21, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "installedPackage$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 162
    .local v14, "installedPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 165
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget-object v20, v24, v23

    .line 166
    .local v20, "requestedPermission":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 170
    .end local v14    # "installedPackage":Landroid/content/pm/PackageInfo;
    .end local v20    # "requestedPermission":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 171
    .restart local v14    # "installedPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 175
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v19, v24, v23

    .line 177
    .local v19, "permissionInfo":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 175
    :cond_8
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 182
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 183
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    and-int v26, v26, v27

    if-eqz v26, :cond_8

    .line 188
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->loadItemInfoLabel(Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 193
    .restart local v17    # "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 196
    .restart local v13    # "icon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 197
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 196
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v4, v0, v1, v2, v13}, Lcom/android/packageinstaller/permission/model/PermissionGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 198
    .restart local v4    # "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 202
    .end local v4    # "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "installedPackage":Landroid/content/pm/PackageInfo;
    .end local v17    # "label":Ljava/lang/CharSequence;
    .end local v19    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_a
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 203
    return-object v11

    .line 123
    .end local v15    # "installedPackage$iterator":Ljava/util/Iterator;
    .end local v16    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method
