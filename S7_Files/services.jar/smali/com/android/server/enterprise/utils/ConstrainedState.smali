.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$1;,
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .locals 0
    .param p1, "Noti"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 55
    return-void

    .line 57
    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 71
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 72
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 71
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 72
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 79
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 93
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 103
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 18
    .param p1, "adminUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v15, 0x1

    .line 542
    .local v15, "ret":Z
    const/4 v8, 0x0

    .line 543
    .local v8, "changed":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    .line 544
    const/16 v3, 0x40

    .line 543
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v9

    .line 545
    .local v9, "checkSCpolicy":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 547
    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 549
    .local v13, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 551
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/EnrollData;

    .line 552
    .local v10, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v10}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    const-string/jumbo v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v12, Ljava/io/File;

    const-string/jumbo v2, "/efs/constrained"

    invoke-direct {v12, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 558
    const-string/jumbo v3, "ConstrainedStateTable"

    .line 559
    const-string/jumbo v4, "status"

    .line 560
    const/4 v5, 0x1

    .line 557
    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 562
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    const/4 v15, 0x1

    .line 564
    const/4 v8, 0x1

    .line 570
    .end local v10    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "it":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 571
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    :goto_0
    if-eqz v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2

    .line 580
    if-eqz v2, :cond_3

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 583
    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_3
    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "No data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v15

    .line 573
    :catch_0
    move-exception v11

    .line 574
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    const/4 v15, 0x0

    .line 577
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 576
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 577
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 576
    throw v2
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v4, 0x0

    .line 792
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    .line 794
    .local v1, "pkg":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz p2, :cond_2

    .line 796
    :try_start_0
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 797
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 798
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 800
    :cond_0
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    .line 801
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 802
    .local v3, "sig":Landroid/content/pm/Signature;
    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 805
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ConstrainedState"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string/jumbo v4, "ConstrainedState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1

    .line 811
    :cond_2
    if-nez p1, :cond_4

    const-string/jumbo p1, ""

    .line 812
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 814
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 815
    const/16 v6, 0x1040

    .line 814
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 816
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 817
    iput-object p1, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 818
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_3

    .line 819
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 821
    :cond_3
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    .line 822
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 823
    .restart local v3    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 822
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 811
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 827
    :catch_1
    move-exception v0

    .line 828
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    const-string/jumbo v4, "ConstrainedState"

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 829
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 601
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 602
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 604
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 605
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 606
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 607
    .local v0, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 612
    .end local v0    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 609
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 615
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    return-object v4

    .line 615
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 614
    :catchall_0
    move-exception v5

    .line 615
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 136
    const-string/jumbo v1, "enterprise_policy_new"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .locals 4
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .param p3, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 233
    add-int v1, p3, v0

    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 234
    return v3

    .line 236
    :cond_0
    aget-byte v1, p1, v0

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_1

    .line 237
    return v3

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "targetPkgName"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .prologue
    const v7, 0x10409cc

    const/4 v6, 0x0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "noti_tag":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 201
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 203
    const v3, 0x10805a1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 204
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x1040a17

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 205
    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 207
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 212
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 213
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 215
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 220
    const-string/jumbo v3, "targetPkgName"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v3, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 225
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 196
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_1
    return-void

    .line 209
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 210
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 227
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private split([B[B)Ljava/util/List;
    .locals 4
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 245
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 246
    .local v0, "blockStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 247
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    array-length v3, p1

    add-int v0, v1, v3

    .line 250
    move v1, v0

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .locals 39
    .param p1, "Noti"    # Z

    .prologue
    .line 259
    const/16 v28, 0x0

    .line 261
    .local v28, "io":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v25, "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 264
    .local v19, "columns":[Ljava/lang/String;
    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v19, v11

    .line 265
    const-string/jumbo v10, "status"

    const/4 v11, 0x1

    aput-object v10, v19, v11

    .line 267
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 268
    const-string/jumbo v11, "ConstrainedStateTable"

    const/4 v12, 0x0

    .line 267
    move-object/from16 v0, v19

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v20

    .line 270
    .local v20, "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v22, Ljava/io/File;

    const-string/jumbo v10, "/efs/constrained"

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v22, "dataDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    .line 272
    .local v31, "listFiles":[Ljava/io/File;
    if-eqz v31, :cond_17

    .line 273
    const/4 v10, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v38, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v37, v10

    move-object/from16 v29, v28

    .end local v28    # "io":Ljava/io/FileInputStream;
    .local v29, "io":Ljava/io/FileInputStream;
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    :try_start_1
    aget-object v27, v31, v37

    .line 274
    .local v27, "file":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 275
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    move-object/from16 v18, v0

    .line 276
    .local v18, "buffer":[B
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    .end local v29    # "io":Ljava/io/FileInputStream;
    .local v28, "io":Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v34

    .line 278
    .local v34, "readLen":I
    if-nez v34, :cond_0

    .line 279
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 273
    .end local v18    # "buffer":[B
    .end local v28    # "io":Ljava/io/FileInputStream;
    .end local v34    # "readLen":I
    :goto_1
    add-int/lit8 v10, v37, 0x1

    move/from16 v37, v10

    move-object/from16 v29, v28

    .restart local v29    # "io":Ljava/io/FileInputStream;
    goto :goto_0

    .line 284
    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v18    # "buffer":[B
    .restart local v28    # "io":Ljava/io/FileInputStream;
    .restart local v34    # "readLen":I
    :cond_0
    sget-object v10, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v35

    .line 285
    .local v35, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v36, 0x0

    .line 286
    .local v36, "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 287
    new-instance v36, Ljava/lang/String;

    .end local v36    # "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 290
    :cond_1
    if-nez v36, :cond_2

    .line 291
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    .line 375
    const/16 v28, 0x0

    .local v28, "io":Ljava/io/FileInputStream;
    goto :goto_1

    .line 292
    .local v28, "io":Ljava/io/FileInputStream;
    :cond_2
    const-string/jumbo v10, "normal"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 293
    :cond_3
    const/4 v3, 0x0

    .line 294
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_4

    .line 295
    new-instance v3, Ljava/lang/String;

    .end local v3    # "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v3, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 298
    :cond_4
    if-eqz v3, :cond_14

    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 301
    new-instance v4, Ljava/lang/String;

    .end local v4    # "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v4, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 303
    .local v4, "comment":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    .line 304
    .local v33, "policyBitMaskByteBuffer":[B
    const/4 v5, 0x0

    .line 305
    .local v5, "policyBitMask":I
    if-eqz v33, :cond_5

    .line 306
    const/4 v10, 0x0

    aget-byte v10, v33, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    .line 307
    const/4 v11, 0x1

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    .line 306
    or-int/2addr v10, v11

    .line 308
    const/4 v11, 0x2

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    .line 306
    or-int/2addr v10, v11

    .line 309
    const/4 v11, 0x3

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    .line 306
    or-int v5, v10, v11

    .line 312
    :cond_5
    if-gtz v5, :cond_8

    .line 313
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 387
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v18    # "buffer":[B
    .end local v19    # "columns":[Ljava/lang/String;
    .end local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v22    # "dataDir":Ljava/io/File;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .end local v27    # "file":Ljava/io/File;
    .end local v28    # "io":Ljava/io/FileInputStream;
    .end local v31    # "listFiles":[Ljava/io/File;
    .end local v33    # "policyBitMaskByteBuffer":[B
    .end local v34    # "readLen":I
    .end local v35    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_0
    move-exception v24

    .line 388
    .local v24, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :cond_6
    if-eqz v28, :cond_7

    .line 393
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 257
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return-void

    .line 315
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v18    # "buffer":[B
    .restart local v19    # "columns":[Ljava/lang/String;
    .restart local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v22    # "dataDir":Ljava/io/File;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .restart local v27    # "file":Ljava/io/File;
    .restart local v28    # "io":Ljava/io/FileInputStream;
    .restart local v31    # "listFiles":[Ljava/io/File;
    .restart local v33    # "policyBitMaskByteBuffer":[B
    .restart local v34    # "readLen":I
    .restart local v35    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_8
    const/4 v6, 0x0

    .line 316
    .local v6, "downloadUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 317
    .local v9, "targetPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 318
    .local v8, "signature":[B
    :try_start_5
    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 319
    :cond_9
    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 320
    new-instance v6, Ljava/lang/String;

    .end local v6    # "downloadUrl":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v6, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 323
    :cond_a
    const/4 v10, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "signature":[B
    check-cast v8, [B

    .line 325
    :cond_b
    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 326
    new-instance v9, Ljava/lang/String;

    .end local v9    # "targetPkgName":Ljava/lang/String;
    const/4 v10, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 328
    :cond_c
    new-instance v2, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v2}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    .line 329
    .local v2, "data":Lcom/samsung/android/knox/EnrollData;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    .line 330
    .local v23, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    .line 331
    .local v7, "constrainedStatus":I
    if-eqz v20, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 332
    const/16 v21, 0x0

    .line 333
    .local v21, "cv":Landroid/content/ContentValues;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 334
    .end local v21    # "cv":Landroid/content/ContentValues;
    .local v30, "it":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 335
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    .line 336
    .local v21, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "adminUid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 337
    .local v17, "adminUid":I
    const-string/jumbo v10, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 338
    .local v26, "enrolled_state":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    .line 339
    .local v16, "adminPkgName":Ljava/lang/String;
    new-instance v32, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.sds.mobile.mdm.client.MDMService"

    .line 340
    const-string/jumbo v11, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    .line 339
    move-object/from16 v0, v32

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v32, "mAdminName":Landroid/content/ComponentName;
    const/16 v10, 0x3e8

    move/from16 v0, v17

    if-ne v0, v10, :cond_11

    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 342
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off - sds mdm was activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move/from16 v7, v26

    .line 354
    .end local v16    # "adminPkgName":Ljava/lang/String;
    .end local v17    # "adminUid":I
    .end local v21    # "cv":Landroid/content/ContentValues;
    .end local v26    # "enrolled_state":I
    .end local v30    # "it":Ljava/util/Iterator;
    .end local v32    # "mAdminName":Landroid/content/ComponentName;
    :cond_e
    :goto_5
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    .line 355
    if-eqz p1, :cond_f

    .line 356
    if-nez v7, :cond_12

    .line 357
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    :cond_f
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 390
    .end local v2    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v7    # "constrainedStatus":I
    .end local v18    # "buffer":[B
    .end local v19    # "columns":[Ljava/lang/String;
    .end local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v22    # "dataDir":Ljava/io/File;
    .end local v23    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .end local v27    # "file":Ljava/io/File;
    .end local v28    # "io":Ljava/io/FileInputStream;
    .end local v31    # "listFiles":[Ljava/io/File;
    .end local v33    # "policyBitMaskByteBuffer":[B
    .end local v34    # "readLen":I
    .end local v35    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catchall_0
    move-exception v10

    .line 392
    :goto_7
    if-eqz v28, :cond_10

    .line 393
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 390
    :cond_10
    :goto_8
    throw v10

    .line 346
    .restart local v2    # "data":Lcom/samsung/android/knox/EnrollData;
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v7    # "constrainedStatus":I
    .restart local v16    # "adminPkgName":Ljava/lang/String;
    .restart local v17    # "adminUid":I
    .restart local v18    # "buffer":[B
    .restart local v19    # "columns":[Ljava/lang/String;
    .restart local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v21    # "cv":Landroid/content/ContentValues;
    .restart local v22    # "dataDir":Ljava/io/File;
    .restart local v23    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .restart local v26    # "enrolled_state":I
    .restart local v27    # "file":Ljava/io/File;
    .restart local v28    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "it":Ljava/util/Iterator;
    .restart local v31    # "listFiles":[Ljava/io/File;
    .restart local v32    # "mAdminName":Landroid/content/ComponentName;
    .restart local v33    # "policyBitMaskByteBuffer":[B
    .restart local v34    # "readLen":I
    .restart local v35    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_11
    if-eqz v16, :cond_d

    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 347
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move/from16 v7, v26

    .line 349
    goto :goto_5

    .line 359
    .end local v16    # "adminPkgName":Ljava/lang/String;
    .end local v17    # "adminUid":I
    .end local v21    # "cv":Landroid/content/ContentValues;
    .end local v26    # "enrolled_state":I
    .end local v30    # "it":Ljava/util/Iterator;
    .end local v32    # "mAdminName":Landroid/content/ComponentName;
    :cond_12
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 365
    .end local v2    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v5    # "policyBitMask":I
    .end local v7    # "constrainedStatus":I
    .end local v23    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v33    # "policyBitMaskByteBuffer":[B
    .local v4, "comment":Ljava/lang/String;
    :cond_13
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "comment is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 368
    .end local v4    # "comment":Ljava/lang/String;
    :cond_14
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "package name is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 371
    :cond_15
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v18    # "buffer":[B
    .end local v27    # "file":Ljava/io/File;
    .end local v28    # "io":Ljava/io/FileInputStream;
    .end local v34    # "readLen":I
    .end local v35    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v29    # "io":Ljava/io/FileInputStream;
    :cond_16
    move-object/from16 v28, v29

    .line 380
    .end local v29    # "io":Ljava/io/FileInputStream;
    :cond_17
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 381
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    :goto_9
    if-eqz v28, :cond_7

    .line 393
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 395
    :catch_1
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 384
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_18
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 385
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 395
    .end local v19    # "columns":[Ljava/lang/String;
    .end local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v22    # "dataDir":Ljava/io/File;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .end local v31    # "listFiles":[Ljava/io/File;
    .restart local v24    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v24

    goto/16 :goto_4

    .end local v24    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 390
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v19    # "columns":[Ljava/lang/String;
    .restart local v20    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v22    # "dataDir":Ljava/io/File;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .restart local v29    # "io":Ljava/io/FileInputStream;
    .restart local v31    # "listFiles":[Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object/from16 v28, v29

    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v28    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 387
    .end local v28    # "io":Ljava/io/FileInputStream;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    :catch_4
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v28, v29

    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v28    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v24    # "e":Ljava/lang/Exception;
    .end local v28    # "io":Ljava/io/FileInputStream;
    .restart local v27    # "file":Ljava/io/File;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    :cond_19
    move-object/from16 v28, v29

    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v28    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private updateNotification()V
    .locals 10

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v8

    .line 159
    .local v8, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v8, :cond_1

    .line 160
    const/4 v9, 0x0

    .line 161
    .local v9, "policyBitMask":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnrollData;

    .line 162
    .local v6, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 157
    .end local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v7    # "data$iterator":Ljava/util/Iterator;
    .end local v9    # "policyBitMask":I
    :cond_1
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .locals 5

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "constrainedMode":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "data$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    .line 147
    .local v1, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 154
    .end local v1    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v2    # "data$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 664
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 667
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 668
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_0

    .line 669
    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 680
    :cond_1
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2
    const/4 v15, 0x0

    return v15

    .line 671
    .end local v12    # "pkgInst":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v8

    .line 672
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 673
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 676
    const/4 v15, 0x0

    return v15

    .line 682
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    .line 683
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v7, :cond_2

    .line 684
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "data$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    .line 687
    .local v5, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 688
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    .line 689
    .local v9, "orig":[B
    if-nez v9, :cond_5

    .line 692
    const/4 v15, 0x0

    return v15

    .line 694
    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 695
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 699
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_4

    .line 700
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 702
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 703
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v15, 0x1

    return v15

    .line 706
    :cond_6
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v15, 0x0

    return v15
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 725
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 728
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 729
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_0

    .line 730
    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 741
    :cond_1
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_2
    const/4 v15, 0x0

    return v15

    .line 732
    .end local v12    # "pkgInst":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v8

    .line 733
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 734
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 737
    const/4 v15, 0x0

    return v15

    .line 743
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    .line 744
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v7, :cond_2

    .line 745
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "data$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    .line 748
    .local v5, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 749
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    .line 750
    .local v9, "orig":[B
    if-nez v9, :cond_5

    .line 753
    const/4 v15, 0x0

    return v15

    .line 755
    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 756
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 760
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_4

    .line 761
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 762
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 763
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 764
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v15, 0x1

    return v15

    .line 767
    :cond_6
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v15, 0x0

    return v15
.end method

.method public cleanUpConstrainedState(I)V
    .locals 8
    .param p1, "adminUid"    # I

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 172
    .local v0, "callingUid":I
    if-eq p1, v0, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 176
    const-string/jumbo v6, "android.permission.BIND_DEVICE_ADMIN"

    .line 177
    const-string/jumbo v7, "Only system or itself can remove an EDM admin"

    .line 175
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string/jumbo v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string/jumbo v1, "adminUid"

    .line 185
    .local v1, "column":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 187
    .local v4, "result":Landroid/content/ContentValues;
    if-eqz v4, :cond_2

    .line 188
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 190
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 170
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    const-string/jumbo v5, "ConstrainedState"

    const-string/jumbo v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 593
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 592
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 591
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 594
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 35
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v30

    .line 402
    new-instance v31, Ljava/util/ArrayList;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    .line 403
    const-string/jumbo v33, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    .line 402
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 405
    if-gtz p6, :cond_0

    .line 406
    const/16 v30, 0x0

    return v30

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 413
    .local v28, "token":J
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v5, "dataDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1

    .line 415
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 420
    .local v9, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 421
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 422
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnrollData;

    .line 423
    .local v4, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 424
    const-string/jumbo v30, "ConstrainedState"

    const-string/jumbo v31, "already existing values // update"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v7, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    .end local v4    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 433
    .local v12, "os":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 435
    .local v14, "outFile":Ljava/io/File;
    :try_start_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 436
    .local v27, "temp":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v30

    const v31, 0x7fffffff

    and-int v8, v30, v31

    .line 437
    .local v8, "hash":I
    new-instance v15, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 438
    .end local v14    # "outFile":Ljava/io/File;
    .local v15, "outFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 439
    add-int/lit8 v8, v8, 0x1

    .line 440
    new-instance v14, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v15    # "outFile":Ljava/io/File;
    .local v14, "outFile":Ljava/io/File;
    move-object v15, v14

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v15    # "outFile":Ljava/io/File;
    goto :goto_0

    .line 443
    :cond_4
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 444
    shr-int/lit8 v30, p6, 0x18

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput-byte v30, v20, v31

    .line 445
    shr-int/lit8 v30, p6, 0x10

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    aput-byte v30, v20, v31

    .line 446
    shr-int/lit8 v30, p6, 0x8

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    aput-byte v30, v20, v31

    .line 447
    move/from16 v0, p6

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x3

    aput-byte v30, v20, v31

    .line 449
    .local v20, "policyBitMaskByteBuffer":[B
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 451
    .local v13, "os":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_7

    .end local v12    # "os":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_7

    .line 452
    const-string/jumbo v30, "normalv3"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 458
    :goto_1
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 459
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_b

    .line 462
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 466
    :goto_2
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 467
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 468
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 469
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 472
    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_c

    if-eqz p5, :cond_c

    .line 473
    new-instance v25, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 474
    .local v25, "targetSig":Landroid/content/pm/Signature;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v26

    .line 475
    .local v26, "targetSigBytes":[B
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 476
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 477
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 478
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 505
    .end local v25    # "targetSig":Landroid/content/pm/Signature;
    .end local v26    # "targetSigBytes":[B
    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 506
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    const/4 v12, 0x0

    .line 509
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    .end local v13    # "os":Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    .line 510
    const-string/jumbo v32, "ConstrainedStateTable"

    .line 511
    const-string/jumbo v33, "status"

    .line 512
    const/16 v34, 0x1

    .line 509
    invoke-virtual/range {v30 .. v34}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .line 513
    .local v21, "ret":Z
    if-nez v21, :cond_f

    .line 514
    if-eqz v15, :cond_6

    .line 515
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 516
    :cond_6
    const/16 v30, 0x0

    .line 534
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    return v30

    .line 453
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v21    # "ret":Z
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :cond_7
    if-eqz p3, :cond_9

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_9

    .line 454
    const-string/jumbo v30, "normalv2"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 521
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v14, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v14    # "outFile":Ljava/io/File;
    move-object v12, v13

    .line 522
    .end local v8    # "hash":I
    .end local v13    # "os":Ljava/io/FileOutputStream;
    .end local v14    # "outFile":Ljava/io/File;
    .end local v20    # "policyBitMaskByteBuffer":[B
    .end local v27    # "temp":Ljava/lang/String;
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 525
    if-eqz v12, :cond_8

    .line 526
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 534
    :cond_8
    :goto_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    .end local v5    # "dataDir":Ljava/io/File;
    :goto_6
    const/16 v30, 0x0

    return v30

    .line 456
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "dataDir":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local v20    # "policyBitMaskByteBuffer":[B
    .restart local v27    # "temp":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string/jumbo v30, "normal"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 523
    :catchall_0
    move-exception v30

    move-object v14, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v14    # "outFile":Ljava/io/File;
    move-object v12, v13

    .line 525
    .end local v8    # "hash":I
    .end local v13    # "os":Ljava/io/FileOutputStream;
    .end local v14    # "outFile":Ljava/io/File;
    .end local v20    # "policyBitMaskByteBuffer":[B
    .end local v27    # "temp":Ljava/lang/String;
    :goto_7
    if-eqz v12, :cond_a

    .line 526
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 523
    :cond_a
    :goto_8
    :try_start_a
    throw v30
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 531
    .end local v5    # "dataDir":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 532
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 534
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 464
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "dataDir":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local v20    # "policyBitMaskByteBuffer":[B
    .restart local v27    # "temp":Ljava/lang/String;
    :cond_b
    :try_start_c
    const-string/jumbo v30, "DEFAULT"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_2

    .line 480
    :cond_c
    const/16 v16, 0x0

    .line 482
    .local v16, "pkgCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    .line 481
    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v11

    .line 484
    .local v11, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v30, 0x40

    const/16 v31, 0x0

    .line 483
    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 486
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_d

    .line 487
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    .line 488
    .local v24, "signs":[Landroid/content/pm/Signature;
    const/16 v30, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    :goto_9
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    aget-object v23, v24, v30

    .line 489
    .local v23, "sign":Landroid/content/pm/Signature;
    if-eqz v23, :cond_e

    .line 490
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    .line 496
    .end local v16    # "pkgCert":Ljava/lang/String;
    .end local v23    # "sign":Landroid/content/pm/Signature;
    .end local v24    # "signs":[Landroid/content/pm/Signature;
    :cond_d
    if-eqz v16, :cond_5

    .line 497
    new-instance v22, Landroid/content/pm/Signature;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 498
    .local v22, "sig":Landroid/content/pm/Signature;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v19

    .line 499
    .local v19, "pkgSigBytes":[B
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 500
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 488
    .end local v19    # "pkgSigBytes":[B
    .end local v22    # "sig":Landroid/content/pm/Signature;
    .restart local v16    # "pkgCert":Ljava/lang/String;
    .restart local v23    # "sign":Landroid/content/pm/Signature;
    .restart local v24    # "signs":[Landroid/content/pm/Signature;
    :cond_e
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 518
    .end local v11    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v13    # "os":Ljava/io/FileOutputStream;
    .end local v16    # "pkgCert":Ljava/lang/String;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "sign":Landroid/content/pm/Signature;
    .end local v24    # "signs":[Landroid/content/pm/Signature;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v21    # "ret":Z
    :cond_f
    const/16 v30, 0x1

    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 519
    const/16 v30, 0x1

    .line 534
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    return v30

    .line 527
    .end local v8    # "hash":I
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v15    # "outFile":Ljava/io/File;
    .end local v20    # "policyBitMaskByteBuffer":[B
    .end local v21    # "ret":Z
    .end local v27    # "temp":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 528
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    .line 533
    .end local v5    # "dataDir":Ljava/io/File;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v30

    .line 534
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    throw v30

    .line 527
    .restart local v5    # "dataDir":Ljava/io/File;
    :catch_3
    move-exception v6

    .line 528
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_8

    .line 523
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v30

    goto/16 :goto_7

    .restart local v8    # "hash":I
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local v27    # "temp":Ljava/lang/String;
    :catchall_3
    move-exception v30

    move-object v14, v15

    .end local v15    # "outFile":Ljava/io/File;
    .restart local v14    # "outFile":Ljava/io/File;
    goto/16 :goto_7

    .line 521
    .end local v8    # "hash":I
    .end local v27    # "temp":Ljava/lang/String;
    .local v14, "outFile":Ljava/io/File;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v14    # "outFile":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v15    # "outFile":Ljava/io/File;
    .restart local v27    # "temp":Ljava/lang/String;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v14, v15

    .end local v15    # "outFile":Ljava/io/File;
    .local v14, "outFile":Ljava/io/File;
    goto/16 :goto_4
.end method

.method public getConstrainedState()I
    .locals 5

    .prologue
    .line 639
    const/4 v3, 0x0

    .line 641
    .local v3, "ret":I
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 643
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v2, :cond_1

    .line 644
    const/4 v3, 0x1

    .line 646
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 647
    .local v0, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 648
    const/4 v3, 0x2

    .line 654
    .end local v0    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 6
    .param p1, "bitMask"    # I

    .prologue
    const/4 v5, 0x0

    .line 622
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 623
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    const/4 v3, 0x0

    .line 625
    .local v3, "policyBitMask":I
    if-eqz v2, :cond_1

    .line 626
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 627
    .local v0, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v3

    .line 629
    and-int v4, v3, p1

    if-lez v4, :cond_0

    .line 630
    const/4 v4, 0x1

    return v4

    .line 635
    .end local v0    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    :cond_1
    return v5
.end method
