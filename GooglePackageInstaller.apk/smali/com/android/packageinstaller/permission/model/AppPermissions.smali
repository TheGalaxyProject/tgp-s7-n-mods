.class public final Lcom/android/packageinstaller/permission/model/AppPermissions;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# instance fields
.field private final mAppLabel:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private final mFilterPermissions:[Ljava/lang/String;

.field private final mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameToGroupMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorCallback:Ljava/lang/Runnable;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mSortGroups:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mAppLabel:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mSortGroups:Z

    iput-object p5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPermissionGroups()V

    return-void
.end method

.method private hasGroupForPermission(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0, p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private loadPackageInfo()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private loadPermissionGroups()V
    .locals 12

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_7

    aget-object v0, v7, v6

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v9

    move v5, v4

    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v3, v9, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/permission/model/AppPermissions;->hasGroupForPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v5, v9, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_7

    aget-object v3, v5, v4

    invoke-direct {p0, v3}, Lcom/android/packageinstaller/permission/model/AppPermissions;->hasGroupForPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v8, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mSortGroups:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_8
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mAppLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isReviewRequired()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v3, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPackageInfo()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPermissionGroups()V

    return-void
.end method
