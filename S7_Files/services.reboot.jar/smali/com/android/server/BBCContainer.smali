.class public Lcom/android/server/BBCContainer;
.super Lcom/android/server/SEAMSContainer;
.source "BBCContainer.java"


# static fields
.field private static BBCCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final BBCCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/bbccontainer"

.field private static final BBCCONTAINER_TYPE:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc7

.field private static final TAG:Ljava/lang/String; = "BBCContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "/data/security/bbccontainer/mac_permissions.xml"

    sput-object v0, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 82
    sput-object p1, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    .line 83
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 80
    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 316
    const/4 v11, 0x0

    .line 320
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    .line 321
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v5, -0x3

    return v5

    .line 326
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    if-nez p1, :cond_1

    .line 328
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v5, -0x1

    return v5

    .line 331
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 332
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v5, -0xc

    return v5

    .line 335
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 336
    .local v12, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_3

    .line 337
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v5, -0x2

    return v5

    .line 341
    :cond_3
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 342
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v5, -0x2

    return v5

    .line 349
    :cond_4
    const/4 v13, 0x0

    .line 350
    .local v13, "certMatch":Z
    const/4 v4, 0x0

    .line 351
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 353
    if-nez p2, :cond_5

    .line 355
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v5, -0xe

    return v5

    .line 358
    :cond_5
    if-nez v16, :cond_7

    .line 360
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 361
    .local v4, "signature":Ljava/lang/String;
    const/4 v11, 0x1

    .line 385
    :cond_6
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v18

    .line 398
    .local v18, "userId":I
    const/4 v14, 0x0

    .line 403
    .local v14, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 407
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_9

    .line 408
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v5, -0x1

    return v5

    .line 363
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    .local v4, "signature":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 366
    .local v4, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 370
    const/4 v13, 0x1

    .line 375
    :cond_8
    if-nez v13, :cond_6

    .line 377
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v5, -0xd

    return v5

    .line 412
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "containerAllowCat":Ljava/lang/String;
    .restart local v18    # "userId":I
    :cond_9
    :try_start_1
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 413
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, Got Application Info, bbcseinfo is not null appInfo.category = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    if-lez v5, :cond_a

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/16 v7, 0x2bc

    if-ge v5, v7, :cond_a

    .line 415
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, return ERROR_ALREADY_CONTAINER_APP"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v5, -0x9

    return v5

    .line 418
    :cond_a
    const-string/jumbo v5, "default"

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 419
    const-string/jumbo v5, "untrusted"

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 424
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 425
    .local v17, "uid":I
    const/4 v6, 0x0

    .line 426
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_c

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 429
    .end local v6    # "newSeinfo":Ljava/lang/String;
    :cond_c
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v5

    if-eqz v5, :cond_d

    .line 430
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v5, -0x1

    return v5

    .line 434
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_e

    .line 435
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 437
    const/4 v5, -0x1

    return v5

    .line 442
    :cond_e
    if-nez v11, :cond_f

    .line 443
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_f

    .line 447
    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_f

    .line 448
    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    .line 467
    :cond_f
    const/4 v5, 0x0

    return v5

    .line 454
    .end local v17    # "uid":I
    :cond_10
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bbcseinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    const/4 v5, -0x1

    return v5

    .line 458
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :catch_0
    move-exception v15

    .line 460
    .local v15, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave addAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v5, -0x1

    return v5
.end method

.method public createSEContainer(II)I
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 99
    .local v13, "userId":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v1, "/data/security/bbccontainer"

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "bbcContainerDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasBBCContainers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, -0x1

    return v1

    .line 106
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 107
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 108
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v9

    .line 124
    .local v9, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v9, :cond_2

    .line 125
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createSEContainer, bbcMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, -0x1

    return v1

    .line 111
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v8    # "bbcContainerDir":Ljava/io/File;
    .end local v9    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catch_0
    move-exception v12

    .line 112
    .local v12, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v1, -0x1

    return v1

    .line 129
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v8    # "bbcContainerDir":Ljava/io/File;
    .restart local v9    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v10, v2

    .line 130
    .local v10, "certificates":[Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 135
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    if-eqz v1, :cond_3

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_3

    .line 136
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBcContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v1, -0x9

    return v1

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 140
    .local v11, "containerID":I
    const/4 v1, -0x7

    if-ne v11, v1, :cond_4

    .line 141
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "BBC Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, -0x7

    return v1

    .line 145
    :cond_4
    invoke-static {v11}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 147
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 146
    invoke-static/range {v0 .. v6}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 150
    const/4 v1, -0x1

    return v1

    .line 152
    :cond_5
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v13, v2}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 153
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 155
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 156
    const/4 v1, -0x1

    return v1

    .line 162
    :cond_6
    return v11
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 5
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 249
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 250
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "bbcMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v4

    .line 253
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-object v4

    .line 257
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 261
    .end local v0    # "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_2
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-object v4
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 306
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 308
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "getSEContainerIDs, bbcMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v4

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    return-object v1
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-static {p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    .line 277
    .local v6, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v6, :cond_0

    .line 279
    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "bbcMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-object v3

    .line 283
    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 285
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 286
    .local v7, "retContainerArray":[I
    return-object v7

    .line 288
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_1
    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-object v3
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "signature":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "macPermFile":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/BBCContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "signature":Ljava/lang/String;
    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 471
    const/4 v11, 0x0

    .line 475
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    .line 476
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "Apptype not 5"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v5, -0x3

    return v5

    .line 479
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    if-nez p1, :cond_1

    .line 481
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v5, -0x1

    return v5

    .line 484
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 485
    .local v12, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_2

    .line 486
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v5, -0x2

    return v5

    .line 489
    :cond_2
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 490
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v5, -0x2

    return v5

    .line 494
    :cond_3
    const/4 v13, 0x0

    .line 495
    .local v13, "certMatch":Z
    const/4 v4, 0x0

    .line 496
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 498
    if-nez p2, :cond_4

    .line 500
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/16 v5, -0xe

    return v5

    .line 503
    :cond_4
    if-nez v16, :cond_6

    .line 506
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 507
    .local v4, "signature":Ljava/lang/String;
    const/4 v11, 0x1

    .line 531
    :cond_5
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 542
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 543
    .local v15, "pid":I
    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v18

    .line 548
    .local v18, "userId":I
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 552
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 553
    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 558
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v5, -0x1

    return v5

    .line 509
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    .local v4, "signature":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 512
    .local v4, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 516
    const/4 v13, 0x1

    .line 521
    :cond_7
    if-nez v13, :cond_5

    .line 523
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/16 v5, -0xd

    return v5

    .line 561
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 562
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 564
    const/4 v5, -0x1

    return v5

    .line 568
    :cond_9
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 569
    const/4 v5, -0x1

    return v5

    .line 571
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :catch_0
    move-exception v14

    .line 572
    .local v14, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "leave removeAppFromContainer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v5, -0x1

    return v5

    .line 578
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_a
    const/4 v5, 0x0

    return v5
.end method

.method public removeSEContainer(III)I
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 177
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 184
    .local v0, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 185
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "bbcMDMID is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v7

    .line 195
    :cond_0
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    const/4 v3, 0x5

    invoke-virtual {p0, p3, v3}, Lcom/android/server/BBCContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_4

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 208
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "removeEntryFromMac failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return v7

    .line 215
    :cond_2
    return v8

    .line 218
    :cond_3
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "remove BBC Container ID Failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return v7

    .line 222
    :cond_4
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v3, -0xb

    return v3

    .line 229
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v7
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 582
    const/4 v13, 0x0

    .line 586
    .local v13, "appNotInstalled":Z
    const/4 v5, 0x5

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    .line 587
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v5, -0x3

    return v5

    .line 592
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 593
    if-nez p1, :cond_1

    .line 594
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " updateAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v5, -0x1

    return v5

    .line 597
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 598
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/16 v5, -0xc

    return v5

    .line 601
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v14

    .line 602
    .local v14, "bbcMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v14, :cond_3

    .line 603
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v5, -0x2

    return v5

    .line 606
    :cond_3
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 607
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v5, -0x2

    return v5

    .line 613
    :cond_4
    const/4 v15, 0x0

    .line 614
    .local v15, "certMatch":Z
    const/4 v4, 0x0

    .line 615
    .local v4, "signature":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v18, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 617
    if-nez p2, :cond_5

    .line 619
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/16 v5, -0xe

    return v5

    .line 622
    :cond_5
    if-nez v18, :cond_7

    .line 624
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 625
    .local v4, "signature":Ljava/lang/String;
    const/4 v13, 0x1

    .line 648
    :cond_6
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v20

    .line 654
    .local v20, "userId":I
    const/16 v16, 0x0

    .line 658
    .local v16, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 662
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v12, :cond_9

    .line 663
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    const/4 v5, -0x1

    return v5

    .line 627
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "containerAllowCat":Ljava/lang/String;
    .end local v20    # "userId":I
    .local v4, "signature":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 629
    .local v4, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 633
    const/4 v15, 0x1

    .line 638
    :cond_8
    if-nez v15, :cond_6

    .line 640
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v5, -0xd

    return v5

    .line 666
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "containerAllowCat":Ljava/lang/String;
    .restart local v20    # "userId":I
    :cond_9
    :try_start_1
    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 667
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, Got Application Info, bbcseinfo is not null appInfo.bbccategory = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v12, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v5, "default"

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 669
    const-string/jumbo v5, "untrusted"

    iput-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    .line 674
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 675
    .local v19, "uid":I
    const/4 v6, 0x0

    .line 676
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_b

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 679
    .end local v6    # "newSeinfo":Ljava/lang/String;
    :cond_b
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, Lcom/android/server/BBCContainer;->updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v5

    if-eqz v5, :cond_c

    .line 680
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer: updateEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v5, -0x1

    return v5

    .line 683
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 684
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 686
    const/4 v5, -0x1

    return v5

    .line 691
    :cond_d
    if-nez v13, :cond_e

    .line 692
    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_e

    .line 696
    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    .line 714
    :cond_e
    const/4 v5, 0x0

    return v5

    .line 701
    .end local v19    # "uid":I
    :cond_f
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bbcseinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 703
    const/4 v5, -0x1

    return v5

    .line 705
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "containerAllowCat":Ljava/lang/String;
    .end local v20    # "userId":I
    :catch_0
    move-exception v17

    .line 707
    .local v17, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave updateAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v5, -0x1

    return v5
.end method
