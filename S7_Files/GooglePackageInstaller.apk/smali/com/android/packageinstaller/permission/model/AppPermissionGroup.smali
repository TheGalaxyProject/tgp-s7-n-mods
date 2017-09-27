.class public final Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
.super Ljava/lang/Object;
.source "AppPermissionGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAppSupportsRuntimePermissions:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeclaringPackage:Ljava/lang/String;

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mIconPkg:Ljava/lang/String;

.field private final mIconResId:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mName:Ljava/lang/String;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/model/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "declaringPackage"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "description"    # Ljava/lang/CharSequence;
    .param p7, "iconPkg"    # Ljava/lang/String;
    .param p8, "iconResId"    # I
    .param p9, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    .line 188
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    .line 189
    iput-object p9, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 190
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 191
    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 192
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 193
    const/16 v2, 0x16

    .line 192
    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    .line 194
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    .line 195
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    .line 196
    iput-object p4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    .line 199
    iput-object p6, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDescription:Ljava/lang/CharSequence;

    .line 200
    if-eqz p8, :cond_1

    .line 201
    iput-object p7, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    .line 202
    iput p8, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    .line 187
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    .line 205
    const v0, 0x7f02006b

    iput v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    goto :goto_0
.end method

.method private addPermission(Lcom/android/packageinstaller/permission/model/Permission;)V
    .locals 2
    .param p1, "permission"    # Lcom/android/packageinstaller/permission/model/Permission;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "groupInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/pm/PackageItemInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v2, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->loadGroupDescription(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v10, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p4

    .line 104
    invoke-direct/range {v2 .. v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 109
    .local v2, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/content/pm/PermissionInfo;

    if-eqz v9, :cond_0

    .line 110
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .restart local p3    # "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    move-object/from16 v9, p2

    .line 111
    check-cast v9, Landroid/content/pm/PermissionInfo;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    :cond_1
    const/4 v9, 0x0

    return-object v9

    .line 118
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v9

    .line 119
    .local v13, "permissionCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_c

    .line 120
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v9, v12

    .line 122
    .local v4, "requestedPermission":Ljava/lang/String;
    const/16 v16, 0x0

    .line 124
    .local v16, "requestedPermissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "permissionInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PermissionInfo;

    .line 125
    .local v14, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v9, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 126
    move-object/from16 v16, v14

    .line 131
    .end local v14    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v16    # "requestedPermissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_4
    if-nez v16, :cond_6

    .line 119
    :cond_5
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 136
    :cond_6
    move-object/from16 v0, v16

    iget v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 141
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x16

    if-gt v9, v10, :cond_7

    .line 142
    const-string/jumbo v9, "android"

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 146
    :cond_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v9, v9, v12

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    const/4 v5, 0x1

    .line 149
    .local v5, "granted":Z
    :goto_2
    const-string/jumbo v9, "android"

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 150
    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "appOp":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_b

    .line 153
    const-class v9, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    .line 154
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {v9, v6, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    const/4 v7, 0x1

    .line 157
    .local v7, "appOpAllowed":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 158
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p4

    invoke-virtual {v9, v4, v10, v0}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v8

    .line 160
    .local v8, "flags":I
    new-instance v3, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-direct/range {v3 .. v8}, Lcom/android/packageinstaller/permission/model/Permission;-><init>(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 162
    .local v3, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-direct {v2, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->addPermission(Lcom/android/packageinstaller/permission/model/Permission;)V

    goto :goto_1

    .line 146
    .end local v3    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    .end local v5    # "granted":Z
    .end local v6    # "appOp":Ljava/lang/String;
    .end local v7    # "appOpAllowed":Z
    .end local v8    # "flags":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "granted":Z
    goto :goto_2

    .line 150
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 153
    .restart local v6    # "appOp":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "appOpAllowed":Z
    goto :goto_4

    .line 152
    .end local v7    # "appOpAllowed":Z
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "appOpAllowed":Z
    goto :goto_4

    .line 165
    .end local v4    # "requestedPermission":Ljava/lang/String;
    .end local v5    # "granted":Z
    .end local v6    # "appOp":Ljava/lang/String;
    .end local v7    # "appOpAllowed":Z
    .end local v15    # "permissionInfo$iterator":Ljava/util/Iterator;
    :cond_c
    return-object v2
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget v4, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 71
    iget v4, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 73
    :cond_0
    return-object v6

    .line 66
    .end local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v6

    .line 72
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_1
    iget v4, v2, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 76
    move-object v1, v2

    .line 77
    .local v1, "groupInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 79
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 80
    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v6, 0x0

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 86
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 87
    .local v3, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    instance-of v4, v1, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v4, :cond_3

    .line 89
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 90
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    .line 89
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 97
    .end local v3    # "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 96
    invoke-static {p0, p1, v1, v3, v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v4

    return-object v4

    .line 91
    .restart local v3    # "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 81
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static loadGroupDescription(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "description":Ljava/lang/CharSequence;
    instance-of v1, p1, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v1, :cond_3

    .line 171
    check-cast p1, Landroid/content/pm/PermissionGroupInfo;

    .line 172
    .end local p1    # "group":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionGroupInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 179
    :cond_1
    const v1, 0x7f0d0186

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_2
    return-object v0

    .line 173
    .restart local v0    # "description":Ljava/lang/CharSequence;
    .restart local p1    # "group":Landroid/content/pm/PackageItemInfo;
    :cond_3
    instance-of v1, p1, Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Landroid/content/pm/PermissionInfo;

    .line 175
    .end local p1    # "group":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "description":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public areRuntimePermissionsGranted()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public areRuntimePermissionsGranted([Ljava/lang/String;)Z
    .locals 6
    .param p1, "filterPermissions"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 293
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v3

    return v3

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 297
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 298
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 299
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    :cond_1
    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v3, :cond_2

    .line 304
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    return v5

    .line 307
    :cond_2
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 308
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v3

    .line 307
    if-eqz v3, :cond_4

    .line 309
    :cond_3
    return v5

    .line 297
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_5
    const/4 v3, 0x0

    return v3
.end method

.method public compareTo(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I
    .locals 3
    .param p1, "another"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 584
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 587
    iget-object v2, p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 586
    sub-int/2addr v1, v2

    return v1

    .line 589
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 582
    check-cast p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->compareTo(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 594
    if-ne p0, p1, :cond_0

    .line 595
    return v4

    .line 598
    :cond_0
    if-nez p1, :cond_1

    .line 599
    return v3

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 603
    return v3

    :cond_2
    move-object v0, p1

    .line 606
    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 608
    .local v0, "other":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 609
    iget-object v1, v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 610
    return v3

    .line 612
    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 613
    return v3

    .line 616
    :cond_4
    return v4
.end method

.method public getApp()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getDeclaringPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFlags()I
    .locals 5

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "flags":I
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 530
    .local v3, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 531
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/packageinstaller/permission/model/Permission;

    .line 532
    .local v2, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/model/Permission;->getFlags()I

    move-result v4

    or-int/2addr v0, v4

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_0
    return v0
.end method

.method public getIconPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public grantRuntimePermissions(Z)Z
    .locals 1
    .param p1, "fixedByTheUser"    # Z

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public grantRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 11
    .param p1, "fixedByTheUser"    # Z
    .param p2, "filterPermissions"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 325
    .local v9, "uid":I
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    .line 326
    .local v7, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    if-eqz p2, :cond_1

    .line 327
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v0, :cond_7

    .line 333
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    return v4

    .line 338
    :cond_2
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 345
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setGranted(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 347
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 346
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 351
    :cond_4
    if-nez p1, :cond_0

    .line 354
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :cond_5
    invoke-virtual {v7, v4}, Lcom/android/packageinstaller/permission/model/Permission;->setUserFixed(Z)V

    .line 356
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 361
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 359
    const/4 v3, 0x3

    .line 357
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 339
    :cond_6
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_1

    .line 366
    :cond_7
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v6, -0x1

    .line 371
    .local v6, "killUid":I
    const/4 v3, 0x0

    .line 375
    .local v3, "mask":I
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 377
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 385
    move v6, v9

    .line 390
    :cond_8
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 391
    invoke-virtual {v7, v4}, Lcom/android/packageinstaller/permission/model/Permission;->setRevokeOnUpgrade(Z)V

    .line 392
    const/16 v3, 0x8

    .line 396
    :cond_9
    if-eqz v3, :cond_a

    .line 397
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 401
    :cond_a
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v1, "Permission related app op changed"

    invoke-virtual {v0, v9, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 407
    .end local v3    # "mask":I
    .end local v6    # "killUid":I
    .end local v7    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_b
    return v10
.end method

.method public hasGrantedByDefaultPermission()Z
    .locals 4

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 243
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 245
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGrantedByDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v3, 0x1

    return v3

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRuntimePermission()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPolicyFixed()Z
    .locals 4

    .prologue
    .line 549
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 550
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 552
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isPolicyFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    const/4 v3, 0x1

    return v3

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isReviewRequired()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v3, :cond_0

    .line 215
    return v4

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 218
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 219
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 220
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isReviewRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const/4 v3, 0x1

    return v3

    .line 218
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_2
    return v4
.end method

.method public isSystemFixed()Z
    .locals 4

    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 572
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 574
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    const/4 v3, 0x1

    return v3

    .line 572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isUserFixed()Z
    .locals 4

    .prologue
    .line 538
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 539
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 541
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    const/4 v3, 0x0

    return v3

    .line 539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isUserSet()Z
    .locals 4

    .prologue
    .line 560
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 561
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 562
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 563
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    const/4 v3, 0x0

    return v3

    .line 561
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public resetReviewRequired()V
    .locals 9

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 229
    .local v8, "permissionCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    .line 231
    .local v7, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->resetReviewRequired()V

    .line 233
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 235
    const/16 v3, 0x40

    .line 236
    const/4 v4, 0x0

    .line 233
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 229
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 227
    .end local v7    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_1
    return-void
.end method

.method public revokeRuntimePermissions(Z)Z
    .locals 1
    .param p1, "fixedByTheUser"    # Z

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public revokeRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 12
    .param p1, "fixedByTheUser"    # Z
    .param p2, "filterPermissions"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 415
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 420
    .local v9, "uid":I
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    .line 421
    .local v7, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v0, :cond_6

    .line 428
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    return v11

    .line 433
    :cond_2
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setGranted(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 436
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 435
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 440
    :cond_3
    if-eqz p1, :cond_5

    .line 442
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :cond_4
    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    .line 444
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserFixed(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 450
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 447
    const/4 v3, 0x3

    .line 449
    const/4 v4, 0x2

    .line 445
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 453
    :cond_5
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 460
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v3, v10

    move v4, v10

    .line 456
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 465
    :cond_6
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, "mask":I
    const/4 v4, 0x0

    .line 471
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 475
    .local v6, "killUid":I
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 484
    move v6, v9

    .line 489
    :cond_7
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v0

    if-nez v0, :cond_8

    .line 490
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setRevokeOnUpgrade(Z)V

    .line 491
    const/16 v3, 0x8

    .line 492
    const/16 v4, 0x8

    .line 496
    :cond_8
    if-eqz v3, :cond_9

    .line 497
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 498
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 497
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 501
    :cond_9
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v1, "Permission related app op changed"

    invoke-virtual {v0, v9, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v3    # "mask":I
    .end local v4    # "flags":I
    .end local v6    # "killUid":I
    .end local v7    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_a
    return v10
.end method

.method public setPolicyFixed()V
    .locals 9

    .prologue
    const/4 v3, 0x4

    .line 511
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 512
    .local v8, "permissionCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    .line 514
    .local v7, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/packageinstaller/permission/model/Permission;->setPolicyFixed(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 519
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v4, v3

    .line 515
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 512
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    .end local v7    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string/jumbo v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const-string/jumbo v1, ", <has permissions>}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 632
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
