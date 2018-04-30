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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDescription:Ljava/lang/CharSequence;

    if-eqz p8, :cond_1

    iput-object p7, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    iput p8, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    const v0, 0x7f02006b

    iput v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    goto :goto_0
.end method

.method private addPermission(Lcom/android/packageinstaller/permission/model/Permission;)V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 17
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

    new-instance v2, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

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

    invoke-direct/range {v2 .. v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/os/UserHandle;)V

    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/content/pm/PermissionInfo;

    if-eqz v9, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p2

    check-cast v9, Landroid/content/pm/PermissionInfo;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 v9, 0x0

    return-object v9

    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_c

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v9, v12

    const/16 v16, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PermissionInfo;

    iget-object v9, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v16, v14

    :cond_4
    if-nez v16, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, v16

    iget v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x16

    if-gt v9, v10, :cond_7

    const-string/jumbo v9, "android"

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v9, v9, v12

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    const/4 v5, 0x1

    :goto_2
    const-string/jumbo v9, "android"

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_b

    const-class v9, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    const/4 v7, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, v4, v10, v0}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v8

    new-instance v3, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-direct/range {v3 .. v8}, Lcom/android/packageinstaller/permission/model/Permission;-><init>(Ljava/lang/String;ZLjava/lang/String;ZI)V

    invoke-direct {v2, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->addPermission(Lcom/android/packageinstaller/permission/model/Permission;)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    return-object v2
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    :cond_0
    return-object v6

    :catch_0
    move-exception v0

    return-object v6

    :cond_1
    iget v4, v2, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    move-object v1, v2

    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    instance-of v4, v1, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {p0, p1, v1, v3, v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static loadGroupDescription(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionGroupInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const v1, 0x7f0d0186

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    instance-of v1, p1, Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areRuntimePermissionsGranted()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public areRuntimePermissionsGranted([Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_2
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    return v3
.end method

.method public compareTo(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I
    .locals 3

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    sub-int/2addr v1, v2

    return v1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->compareTo(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method public getApp()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getDeclaringPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFlags()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/model/Permission;->getFlags()I

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getIconPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mIconResId:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public grantRuntimePermissions(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public grantRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    if-eqz p2, :cond_1

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setGranted(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_4
    if-nez p1, :cond_0

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {v7, v4}, Lcom/android/packageinstaller/permission/model/Permission;->setUserFixed(Z)V

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    move v6, v9

    :cond_8
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v4}, Lcom/android/packageinstaller/permission/model/Permission;->setRevokeOnUpgrade(Z)V

    const/16 v3, 0x8

    :cond_9
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_a
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v1, "Permission related app op changed"

    invoke-virtual {v0, v9, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return v10
.end method

.method public hasGrantedByDefaultPermission()Z
    .locals 4

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGrantedByDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

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

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isPolicyFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isReviewRequired()Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isReviewRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public isSystemFixed()Z
    .locals 4

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isUserFixed()Z
    .locals 4

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isUserSet()Z
    .locals 4

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public resetReviewRequired()V
    .locals 9

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->resetReviewRequired()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public revokeRuntimePermissions(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public revokeRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    if-eqz p2, :cond_1

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/packageinstaller/permission/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isSystemFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v11

    :cond_2
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setGranted(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserFixed()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserFixed(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isUserSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setUserSet(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->hasAppOp()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->isAppOpAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v11}, Lcom/android/packageinstaller/permission/model/Permission;->setAppOpAllowed(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    move v6, v9

    :cond_7
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Lcom/android/packageinstaller/permission/model/Permission;->setRevokeOnUpgrade(Z)V

    const/16 v3, 0x8

    const/16 v4, 0x8

    :cond_8
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_9
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v1, "Permission related app op changed"

    invoke-virtual {v0, v9, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return v10
.end method

.method public setPolicyFixed()V
    .locals 9

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/permission/model/Permission;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/packageinstaller/permission/model/Permission;->setPolicyFixed(Z)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ", <has permissions>}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
