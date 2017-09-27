.class public Lcom/android/packageinstaller/permission/model/PermissionApps;
.super Ljava/lang/Object;
.source "PermissionApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;,
        Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;,
        Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;,
        Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;
    }
.end annotation


# instance fields
.field private mAppLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

.field private final mCallback:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mGroupName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPermApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRefreshing:Z

.field private mSkipUi:Z


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/model/PermissionApps;)Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mCallback:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/permission/model/PermissionApps;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mRefreshing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/model/PermissionApps;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->loadPermissionApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/permission/model/PermissionApps;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->createMap(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;
    .param p4, "cache"    # Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mCache:Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    .line 67
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    .line 69
    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mCallback:Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    .line 71
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->loadGroupInfo()V

    .line 65
    return-void
.end method

.method private createMap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    .line 226
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .line 227
    .local v0, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v0    # "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    :cond_0
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPermApps:Ljava/util/List;

    .line 224
    return-void
.end method

.method private getGroupInfo(Ljava/lang/String;)Landroid/content/pm/PackageItemInfo;
    .locals 4
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 235
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 240
    :catch_1
    move-exception v1

    .line 243
    .local v1, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 249
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 254
    const/4 v5, 0x0

    .line 253
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 255
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    return-object v3

    .line 258
    .end local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_1
    move-exception v1

    .line 261
    .local v1, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    return-object v4
.end method

.method private loadGroupInfo()V
    .locals 7

    .prologue
    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    .local v1, "info":Landroid/content/pm/PackageItemInfo;
    :goto_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mLabel:Ljava/lang/CharSequence;

    .line 282
    iget v4, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageItemInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 287
    :goto_1
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mIcon:Landroid/graphics/drawable/Drawable;

    const v6, 0x1010429

    invoke-static {v4, v5, v6}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 264
    return-void

    .line 268
    .end local v1    # "info":Landroid/content/pm/PackageItemInfo;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 271
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    iget v4, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 272
    const-string/jumbo v4, "PermissionApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a runtime permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    return-void

    .line 275
    :cond_0
    move-object v1, v2

    .restart local v1    # "info":Landroid/content/pm/PackageItemInfo;
    goto :goto_0

    .line 276
    .end local v1    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v3

    .line 277
    .local v3, "reallyNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "PermissionApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    return-void

    .line 285
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "reallyNotFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageItemInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    const v5, 0x7f02006b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private loadPermissionApps()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getGroupInfo(Ljava/lang/String;)Landroid/content/pm/PackageItemInfo;

    move-result-object v11

    .line 141
    .local v11, "groupInfo":Landroid/content/pm/PackageItemInfo;
    if-nez v11, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getGroupPermissionInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 146
    .local v14, "groupPermInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v14, :cond_1

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 150
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v17, "permApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    .line 153
    .local v23, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "user$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserHandle;

    .line 154
    .local v20, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mCache:Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mCache:Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->getPackages(I)Ljava/util/List;

    move-result-object v10

    .line 158
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 159
    .local v8, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v8, :cond_2

    .line 160
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 161
    .local v9, "app":Landroid/content/pm/PackageInfo;
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_5

    .line 159
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 155
    .end local v8    # "N":I
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    .line 156
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 155
    const/16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    .line 165
    .restart local v8    # "N":I
    .restart local v9    # "app":Landroid/content/pm/PackageInfo;
    .restart local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v15    # "i":I
    :cond_5
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 166
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v18, v3, v16

    .line 168
    .local v18, "requestedPerm":Ljava/lang/String;
    const/16 v19, 0x0

    .line 170
    .local v19, "requestedPermissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "groupPermInfo$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PermissionInfo;

    .line 171
    .local v12, "groupPermInfo":Landroid/content/pm/PermissionInfo;
    iget-object v3, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    move-object/from16 v19, v12

    .line 177
    .end local v12    # "groupPermInfo":Landroid/content/pm/PermissionInfo;
    .end local v19    # "requestedPermissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_7
    if-nez v19, :cond_9

    .line 165
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 181
    :cond_9
    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 182
    const/4 v7, 0x1

    .line 181
    if-ne v3, v7, :cond_8

    .line 183
    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 184
    const/high16 v7, 0x40000000    # 2.0f

    .line 183
    and-int/2addr v3, v7

    if-eqz v3, :cond_8

    .line 185
    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v3, v9, v11, v14, v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v4

    .line 193
    .local v4, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    if-eqz v4, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mSkipUi:Z

    if-eqz v3, :cond_b

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 200
    .local v5, "label":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    .line 201
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mSkipUi:Z

    if-nez v3, :cond_a

    .line 202
    new-instance v22, Landroid/os/UserHandle;

    .line 203
    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getApp()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 202
    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 205
    .local v22, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    .line 206
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 205
    move-object/from16 v0, v22

    invoke-virtual {v3, v7, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 210
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "userHandle":Landroid/os/UserHandle;
    :cond_a
    new-instance v2, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 211
    iget-object v7, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 210
    invoke-direct/range {v2 .. v7}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;-><init>(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)V

    .line 213
    .local v2, "permApp":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 198
    .end local v2    # "permApp":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .end local v5    # "label":Ljava/lang/String;
    :cond_b
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "label":Ljava/lang/String;
    goto :goto_4

    .line 219
    .end local v4    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "N":I
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "groupPermInfo$iterator":Ljava/util/Iterator;
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v18    # "requestedPerm":Ljava/lang/String;
    .end local v20    # "user":Landroid/os/UserHandle;
    :cond_c
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 221
    return-object v17
.end method


# virtual methods
.method public getApp(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPermApps:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedCount(Landroid/util/ArraySet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 93
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPermApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .line 94
    .local v0, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    invoke-static {v0}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-static {v0, p1}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    :cond_1
    return v2
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTotalCount(Landroid/util/ArraySet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 110
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mPermApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .line 111
    .local v0, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    invoke-static {v0}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-static {v0, p1}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    :cond_1
    return v2
.end method

.method public loadNowWithoutUi()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mSkipUi:Z

    .line 80
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->loadPermissionApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->createMap(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public refresh(Z)V
    .locals 3
    .param p1, "getUiInfo"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-boolean v2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mRefreshing:Z

    if-nez v2, :cond_1

    .line 85
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mRefreshing:Z

    .line 86
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps;->mSkipUi:Z

    .line 87
    new-instance v0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;-><init>(Lcom/android/packageinstaller/permission/model/PermissionApps;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    :cond_1
    return-void
.end method
