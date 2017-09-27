.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field private static final LOCATION_OPS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x29

    .line 46
    const/16 v1, 0x2a

    .line 44
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 27
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 118
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v7, 0x0

    .line 119
    .local v7, "highBattery":Z
    const/16 v17, 0x0

    .line 121
    .local v17, "normalBattery":Z
    const-wide/32 v24, 0xdbba0

    sub-long v18, p1, v24

    .line 122
    .local v18, "recentLocationCutoffTime":J
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 123
    .local v14, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v24

    cmp-long v9, v24, v18

    if-ltz v9, :cond_0

    .line 124
    :cond_1
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    const/16 v17, 0x1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    const/4 v7, 0x1

    .line 130
    goto :goto_0

    .line 137
    .end local v14    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v7, :cond_3

    if-eqz v17, :cond_4

    .line 146
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    .line 147
    .local v21, "uid":I
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 149
    .local v22, "userId":I
    const/16 v20, 0x0

    .line 151
    .local v20, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 153
    .local v16, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v9, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v3, v9, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 154
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v11, :cond_6

    .line 155
    sget-object v9, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Null application info retrieved for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 156
    const-string/jumbo v24, ", userId "

    .line 155
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v9, 0x0

    return-object v9

    .line 138
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v20    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v21    # "uid":I
    .end local v22    # "userId":I
    :cond_4
    sget-object v9, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 139
    sget-object v9, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " hadn\'t used location within the time interval."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_5
    const/4 v9, 0x0

    return-object v9

    .line 160
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .restart local v21    # "uid":I
    .restart local v22    # "userId":I
    :cond_6
    :try_start_1
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 161
    .local v4, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 162
    .local v10, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 163
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 164
    .local v6, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 165
    .local v8, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 168
    const/4 v8, 0x0

    .line 170
    .end local v8    # "badgedAppLabel":Ljava/lang/CharSequence;
    :cond_7
    new-instance v2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Lcom/android/settingslib/location/RecentLocationApps$Request;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "appLabel":Ljava/lang/CharSequence;
    .end local v10    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v20    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .local v2, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :goto_1
    return-object v2

    .line 172
    .end local v2    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .restart local v20    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :catch_0
    move-exception v12

    .line 173
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error while retrieving application info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 174
    const-string/jumbo v24, ", userId "

    .line 173
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, v20

    .restart local v2    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "appops"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 69
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    sget-object v20, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 74
    .local v4, "appOpsCount":I
    :goto_0
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v16, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 76
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 77
    .local v18, "um":Landroid/os/UserManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    .line 79
    .local v14, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 80
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 83
    .local v12, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v17

    .line 85
    .local v17, "uid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 87
    .local v19, "userId":I
    const/16 v20, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const-string/jumbo v20, "android"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 89
    :goto_2
    const/16 v20, 0x1395

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const-string/jumbo v20, "com.sec.location.nsflp2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 91
    :goto_3
    const/16 v20, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const-string/jumbo v20, "com.samsung.android.nlphub"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 93
    :goto_4
    const-string/jumbo v20, "com.samsung.android.networkdiagnostic"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 95
    .local v8, "isNetworkDiagnostic":Z
    if-nez v6, :cond_0

    if-nez v9, :cond_0

    if-nez v8, :cond_0

    if-nez v7, :cond_0

    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 98
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v15

    .line 99
    .local v15, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    if-eqz v15, :cond_0

    .line 100
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v15    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "appOpsCount":I
    .end local v5    # "i":I
    .end local v8    # "isNetworkDiagnostic":Z
    .end local v10    # "now":J
    .end local v12    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v16    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .end local v17    # "uid":I
    .end local v18    # "um":Landroid/os/UserManager;
    .end local v19    # "userId":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "appOpsCount":I
    goto/16 :goto_0

    .line 87
    .restart local v5    # "i":I
    .restart local v10    # "now":J
    .restart local v12    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v16    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .restart local v17    # "uid":I
    .restart local v18    # "um":Landroid/os/UserManager;
    .restart local v19    # "userId":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "isAndroidOs":Z
    goto :goto_2

    .line 89
    .end local v6    # "isAndroidOs":Z
    :cond_3
    const/4 v9, 0x0

    .local v9, "isSamsungLocationSDK":Z
    goto :goto_3

    .line 91
    .end local v9    # "isSamsungLocationSDK":Z
    :cond_4
    const/4 v7, 0x0

    .local v7, "isNLPHub":Z
    goto :goto_4

    .line 104
    .end local v7    # "isNLPHub":Z
    .end local v12    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "uid":I
    .end local v19    # "userId":I
    :cond_5
    return-object v16
.end method
