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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "sortGroups"    # Z
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    .line 53
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 55
    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 57
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mAppLabel:Ljava/lang/CharSequence;

    .line 59
    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mSortGroups:Z

    .line 60
    iput-object p5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    .line 61
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPermissionGroups()V

    .line 52
    return-void
.end method

.method private hasGroupForPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 166
    .local v0, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v0, p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x1

    return v2

    .line 170
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private loadPackageInfo()V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private loadPermissionGroups()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 118
    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_7

    aget-object v0, v7, v6

    .line 119
    .local v0, "filterPermission":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v9

    move v5, v4

    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v3, v9, v5

    .line 120
    .local v3, "requestedPerm":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/permission/model/AppPermissions;->hasGroupForPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    .end local v3    # "requestedPerm":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 128
    .restart local v3    # "requestedPerm":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    .line 129
    iget-object v9, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 128
    invoke-static {v5, v9, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    .line 130
    .local v1, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    if-eqz v1, :cond_2

    .line 134
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    .end local v0    # "filterPermission":Ljava/lang/String;
    .end local v1    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v3    # "requestedPerm":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_7

    aget-object v3, v5, v4

    .line 140
    .restart local v3    # "requestedPerm":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/permission/model/AppPermissions;->hasGroupForPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 139
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 144
    :cond_6
    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mContext:Landroid/content/Context;

    .line 145
    iget-object v8, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 144
    invoke-static {v7, v8, v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v1

    .line 146
    .restart local v1    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    if-eqz v1, :cond_5

    .line 150
    iget-object v7, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 154
    .end local v1    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v3    # "requestedPerm":Ljava/lang/String;
    :cond_7
    iget-boolean v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mSortGroups:Z

    if-eqz v4, :cond_8

    .line 155
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 158
    :cond_8
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 159
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 160
    .restart local v1    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 110
    .end local v1    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_9
    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mAppLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
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

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isReviewRequired()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-boolean v3, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v3, :cond_0

    .line 87
    return v4

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, "groupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 91
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 92
    .local v0, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const/4 v3, 0x1

    return v3

    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_2
    return v4
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPackageInfo()V

    .line 70
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->loadPermissionGroups()V

    .line 68
    return-void
.end method
