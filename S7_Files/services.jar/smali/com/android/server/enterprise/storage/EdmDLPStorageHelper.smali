.class public Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
.super Ljava/lang/Object;
.source "EdmDLPStorageHelper.java"


# static fields
.field private static final MAX_LOG_NUM:I = 0x33

.field private static final TAG:Ljava/lang/String; = "EdmDLPStorageHelper"

.field private static final TYPE_CONFIG:I = 0x2

.field private static final TYPE_CONFIG_LOG:I = 0x5

.field private static mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 62
    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 66
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private getBooleanAuditValues(I)[Z
    .locals 4
    .param p1, "audit"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 531
    .local v0, "vals":[Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 532
    aput-boolean v3, v0, v2

    .line 533
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 534
    aput-boolean v3, v0, v3

    .line 535
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 536
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 537
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 538
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 539
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 540
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 541
    :cond_4
    return-object v0
.end method

.method private getBooleanValues(I)[Z
    .locals 4
    .param p1, "policy"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 555
    const/4 v1, 0x2

    new-array v0, v1, [Z

    .line 556
    .local v0, "vals":[Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 557
    aput-boolean v3, v0, v2

    .line 558
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 559
    aput-boolean v3, v0, v3

    .line 560
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIntValue(ZZ)I
    .locals 1
    .param p1, "haveNetworkAccess"    # Z
    .param p2, "haveClipboardAccess"    # Z

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "policy":I
    if-eqz p1, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 549
    :cond_0
    if-eqz p2, :cond_1

    .line 550
    or-int/lit8 v0, v0, 0x2

    .line 551
    :cond_1
    return v0
.end method

.method private getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "cvWhere"    # Landroid/content/ContentValues;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 159
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v5, "IRMServiceInformationTable"

    .line 160
    const/4 v6, 0x0

    .line 159
    invoke-virtual {v4, v5, p2, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    .line 165
    .local v3, "packageNameNSign":Lcom/samsung/android/knox/AppIdentity;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    .line 166
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v3    # "packageNameNSign":Lcom/samsung/android/knox/AppIdentity;
    :catchall_0
    move-exception v4

    move-object v1, v2

    .line 173
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v0, 0x0

    .line 172
    :cond_0
    throw v4

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :cond_1
    move-object v1, v2

    .line 173
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v0, 0x0

    .line 179
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v1

    .line 172
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :catchall_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 709
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    .line 711
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 710
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    const-string/jumbo v2, "fileUri"

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string/jumbo v2, "irmProvider"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v2, "rights"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 717
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeDumpLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addDumpLog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    const/4 v10, 0x0

    .line 223
    .local v10, "ret":Z
    if-eqz p2, :cond_7

    .line 224
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v10    # "ret":Z
    .local v7, "dpi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 226
    .local v6, "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    if-eqz v6, :cond_0

    .line 230
    iget-object v2, v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 231
    .local v2, "ai":Lcom/samsung/android/knox/AppIdentity;
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, "signature":Ljava/lang/String;
    const/4 v15, 0x0

    .line 235
    .local v15, "type":I
    iget-object v0, v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    iget-object v0, v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string/jumbo v17, "Type"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 236
    const/4 v15, 0x1

    .line 239
    :cond_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 240
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "addWhitelistApps => "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isConsumer: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "log":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 243
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v16, "adminUid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string/jumbo v16, "userid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string/jumbo v16, "data_text1"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v14, "toChange":Landroid/content/ContentValues;
    const-string/jumbo v16, "data_text2"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v16, "type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    move-object/from16 v16, v0

    const-string/jumbo v17, "IRMServiceInformationTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    .line 256
    .local v3, "count":I
    if-lez v3, :cond_2

    const/16 v16, 0x1

    :goto_1
    or-int v10, v10, v16

    .local v10, "ret":Z
    goto/16 :goto_0

    .end local v10    # "ret":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 258
    .end local v3    # "count":I
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v14    # "toChange":Landroid/content/ContentValues;
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v16, "adminUid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string/jumbo v16, "userid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string/jumbo v16, "type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string/jumbo v16, "data_text1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 267
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    move-object/from16 v16, v0

    const-string/jumbo v17, "IRMServiceInformationTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 268
    .local v12, "rowId":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_6

    const/16 v16, 0x1

    :goto_3
    or-int v10, v10, v16

    .restart local v10    # "ret":Z
    goto/16 :goto_0

    .line 264
    .end local v10    # "ret":Z
    .end local v12    # "rowId":J
    :cond_5
    const-string/jumbo v16, "data_text2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    .restart local v12    # "rowId":J
    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 275
    .end local v2    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v7    # "dpi$iterator":Ljava/util/Iterator;
    .end local v8    # "log":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "signature":Ljava/lang/String;
    .end local v12    # "rowId":J
    .end local v15    # "type":I
    :cond_7
    return v10
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 762
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 763
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 764
    const-string/jumbo v15, "DUMP OF DLP Information :"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    const/4 v4, 0x0

    .line 766
    .local v4, "configCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 767
    .local v6, "creatorCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 768
    .local v5, "consumerCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 769
    .local v13, "logCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 770
    .local v12, "isExistCreator":Z
    const/4 v11, 0x0

    .line 772
    .local v11, "isExistConsumer":Z
    :try_start_0
    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 774
    .local v14, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/String;

    .line 775
    const-string/jumbo v15, "data_int1"

    const/16 v16, 0x0

    aput-object v15, v2, v16

    const-string/jumbo v15, "data_int2"

    const/16 v16, 0x1

    aput-object v15, v2, v16

    const-string/jumbo v15, "data_int3"

    const/16 v16, 0x2

    aput-object v15, v2, v16

    .line 777
    .local v2, "columnsConfig":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 778
    .local v8, "cvConfig":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string/jumbo v15, "IRMServiceInformationTable"

    .line 780
    const/16 v16, 0x0

    .line 779
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v2, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 781
    .local v4, "configCursor":Landroid/database/Cursor;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 782
    const-string/jumbo v15, " isActivated  isLocked  expiry_after"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_4

    .line 784
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 785
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "            "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 786
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 785
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 786
    const-string/jumbo v16, "         "

    .line 785
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 786
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 785
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 850
    .end local v2    # "columnsConfig":[Ljava/lang/String;
    .end local v4    # "configCursor":Landroid/database/Cursor;
    .end local v5    # "consumerCursor":Landroid/database/Cursor;
    .end local v6    # "creatorCursor":Landroid/database/Cursor;
    .end local v8    # "cvConfig":Landroid/content/ContentValues;
    .end local v13    # "logCursor":Landroid/database/Cursor;
    .end local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catchall_0
    move-exception v15

    .line 851
    if-eqz v4, :cond_0

    .line 852
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 853
    const/4 v4, 0x0

    .line 855
    :cond_0
    if-eqz v6, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v6, 0x0

    .line 859
    :cond_1
    if-eqz v5, :cond_2

    .line 860
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 861
    const/4 v5, 0x0

    .line 863
    :cond_2
    if-eqz v13, :cond_3

    .line 864
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 865
    const/4 v13, 0x0

    .line 850
    :cond_3
    throw v15

    .line 789
    .restart local v2    # "columnsConfig":[Ljava/lang/String;
    .restart local v4    # "configCursor":Landroid/database/Cursor;
    .restart local v5    # "consumerCursor":Landroid/database/Cursor;
    .restart local v6    # "creatorCursor":Landroid/database/Cursor;
    .restart local v8    # "cvConfig":Landroid/content/ContentValues;
    .restart local v13    # "logCursor":Landroid/database/Cursor;
    .restart local v14    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_4
    :try_start_1
    const-string/jumbo v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    :cond_5
    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    .line 793
    const-string/jumbo v15, "userid"

    const/16 v16, 0x0

    aput-object v15, v1, v16

    const-string/jumbo v15, "type"

    const/16 v16, 0x1

    aput-object v15, v1, v16

    .line 794
    const-string/jumbo v15, "data_text1"

    const/16 v16, 0x2

    aput-object v15, v1, v16

    .line 796
    .local v1, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v10, "cvCreator":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string/jumbo v15, "IRMServiceInformationTable"

    .line 799
    const/16 v16, 0x0

    .line 798
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 801
    .local v6, "creatorCursor":Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v9, "cvConsumer":Landroid/content/ContentValues;
    const-string/jumbo v15, "type"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    const-string/jumbo v15, "IRMServiceInformationTable"

    .line 804
    const/16 v16, 0x0

    .line 803
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v1, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 806
    .local v5, "consumerCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_6

    .line 807
    const/4 v12, 0x1

    .line 808
    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_7

    .line 809
    const/4 v11, 0x1

    .line 810
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 811
    const-string/jumbo v15, " userID isConsumer  packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    if-nez v12, :cond_8

    if-eqz v11, :cond_9

    .line 815
    :cond_8
    if-eqz v12, :cond_b

    .line 816
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 817
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 818
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 817
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 818
    const-string/jumbo v16, "           "

    .line 817
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 819
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 817
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 813
    :cond_9
    const-string/jumbo v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_a
    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/String;

    .line 832
    const-string/jumbo v15, "userid"

    const/16 v16, 0x0

    aput-object v15, v3, v16

    const-string/jumbo v15, "fileUri"

    const/16 v16, 0x1

    aput-object v15, v3, v16

    .line 833
    const-string/jumbo v15, "irmProvider"

    const/16 v16, 0x2

    aput-object v15, v3, v16

    .line 835
    .local v3, "columnsLog":[Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 836
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "rights"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string/jumbo v15, "IRMDocumentRightsTable"

    .line 838
    const/16 v16, 0x0

    .line 837
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v3, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 839
    .local v13, "logCursor":Landroid/database/Cursor;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 840
    const-string/jumbo v15, " userID time                    log"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_11

    .line 842
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 843
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 844
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 843
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 822
    .end local v3    # "columnsLog":[Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .local v13, "logCursor":Landroid/database/Cursor;
    :cond_b
    if-eqz v11, :cond_a

    .line 823
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 824
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 825
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 824
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 825
    const-string/jumbo v16, "           "

    .line 824
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 826
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 824
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 846
    .restart local v3    # "columnsLog":[Ljava/lang/String;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .local v13, "logCursor":Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    :goto_4
    if-eqz v4, :cond_d

    .line 852
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 853
    const/4 v4, 0x0

    .line 855
    .end local v4    # "configCursor":Landroid/database/Cursor;
    :cond_d
    if-eqz v6, :cond_e

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v6, 0x0

    .line 859
    .end local v6    # "creatorCursor":Landroid/database/Cursor;
    :cond_e
    if-eqz v5, :cond_f

    .line 860
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 861
    const/4 v5, 0x0

    .line 863
    .end local v5    # "consumerCursor":Landroid/database/Cursor;
    :cond_f
    if-eqz v13, :cond_10

    .line 864
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 865
    const/4 v13, 0x0

    .line 868
    .end local v13    # "logCursor":Landroid/database/Cursor;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 761
    return-void

    .line 848
    .restart local v4    # "configCursor":Landroid/database/Cursor;
    .restart local v5    # "consumerCursor":Landroid/database/Cursor;
    .restart local v6    # "creatorCursor":Landroid/database/Cursor;
    .restart local v13    # "logCursor":Landroid/database/Cursor;
    :cond_11
    :try_start_2
    const-string/jumbo v15, "  Cursor is null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public getAppType(ILjava/lang/String;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 569
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    .line 570
    const-string/jumbo v8, "type"

    aput-object v8, v0, v9

    const-string/jumbo v8, "data_text2"

    aput-object v8, v0, v10

    .line 572
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, -0x1

    .line 573
    .local v7, "type":I
    const/4 v6, 0x0

    .line 575
    .local v6, "signature":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string/jumbo v8, "data_text1"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v2, 0x0

    .line 582
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v9, "IRMServiceInformationTable"

    .line 583
    const/4 v10, 0x0

    .line 582
    invoke-virtual {v8, v9, v0, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 584
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    .line 585
    .end local v6    # "signature":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 586
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, "signature":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 588
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 604
    if-eqz v2, :cond_0

    .line 605
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v2, 0x0

    .line 589
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v7

    .line 591
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 592
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 594
    .local v4, "identity":J
    :try_start_2
    invoke-static {v1, p2, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 598
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    if-eqz v2, :cond_2

    .line 605
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v2, 0x0

    .line 595
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v7

    .line 598
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 603
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "identity":J
    .end local v6    # "signature":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 604
    if-eqz v2, :cond_4

    .line 605
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v2, 0x0

    .line 603
    :cond_4
    throw v8

    .line 597
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "identity":J
    .restart local v6    # "signature":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 598
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 597
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 604
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "identity":J
    .end local v6    # "signature":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 605
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v2, 0x0

    .line 610
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_6
    const/4 v8, -0x1

    return v8
.end method

.method public getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "audit":I
    const/4 v10, 0x0

    .line 457
    .local v10, "isActivated":Z
    const/4 v11, 0x0

    .line 458
    .local v11, "isLocked":Z
    const/4 v9, 0x0

    .line 459
    .local v9, "extensions":Ljava/lang/String;
    const/4 v7, 0x0

    .line 460
    .local v7, "domains":Ljava/lang/String;
    const/4 v2, 0x0

    .line 461
    .local v2, "auditVals":[Z
    const/4 v8, 0x0

    .line 462
    .local v8, "expiryAfter":I
    const/4 v12, 0x0

    .line 463
    .local v12, "policy":I
    const/4 v13, 0x0

    .line 466
    .local v13, "policyVals":[Z
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getDefaultPolicy() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v14, 0x7

    new-array v4, v14, [Ljava/lang/String;

    .line 469
    const-string/jumbo v14, "data_int1"

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const-string/jumbo v14, "data_int2"

    const/4 v15, 0x1

    aput-object v14, v4, v15

    .line 470
    const-string/jumbo v14, "data_int3"

    const/4 v15, 0x2

    aput-object v14, v4, v15

    const-string/jumbo v14, "data_int4"

    const/4 v15, 0x3

    aput-object v14, v4, v15

    const-string/jumbo v14, "option1"

    const/4 v15, 0x4

    aput-object v14, v4, v15

    .line 471
    const-string/jumbo v14, "data_text1"

    const/4 v15, 0x5

    aput-object v14, v4, v15

    const-string/jumbo v14, "data_text2"

    const/4 v15, 0x6

    aput-object v14, v4, v15

    .line 473
    .local v4, "columns":[Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v6, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v14, "type"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string/jumbo v14, "userid"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const/4 v5, 0x0

    .line 480
    .local v5, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v15, "IRMServiceInformationTable"

    .line 481
    const/16 v16, 0x0

    .line 480
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 482
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 483
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v10, 0x1

    .line 484
    :goto_0
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v11, 0x1

    .line 485
    :goto_1
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 486
    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 487
    const/4 v14, 0x4

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 488
    const/4 v14, 0x5

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "extensions":Ljava/lang/String;
    const/4 v14, 0x6

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 492
    .end local v7    # "domains":Ljava/lang/String;
    .end local v9    # "extensions":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 493
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 494
    const/4 v5, 0x0

    .line 498
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v3, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanAuditValues(I)[Z

    move-result-object v2

    .line 501
    .local v2, "auditVals":[Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanValues(I)[Z

    move-result-object v13

    .line 503
    .local v13, "policyVals":[Z
    const-string/jumbo v14, "CREATE"

    const/4 v15, 0x0

    aget-boolean v15, v2, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    const-string/jumbo v14, "OPEN"

    const/4 v15, 0x1

    aget-boolean v15, v2, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    const-string/jumbo v14, "RENAME"

    const/4 v15, 0x2

    aget-boolean v15, v2, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    const-string/jumbo v14, "EXPIRED"

    const/4 v15, 0x3

    aget-boolean v15, v2, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    const-string/jumbo v14, "UNAUTHORIZED"

    const/4 v15, 0x4

    aget-boolean v15, v2, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    const-string/jumbo v14, "AUDIT"

    invoke-virtual {v3, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v14, "Activate"

    invoke-virtual {v3, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    const-string/jumbo v14, "Lock"

    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    const-string/jumbo v14, "Extensions"

    invoke-virtual {v3, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v14, "Domains"

    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string/jumbo v14, "NETWORK"

    const/4 v15, 0x0

    aget-boolean v15, v13, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 515
    const-string/jumbo v14, "CLIPBOARD"

    const/4 v15, 0x1

    aget-boolean v15, v13, v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Create: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-boolean v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Open: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-boolean v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Rename: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-boolean v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Expired: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-boolean v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unauthorized: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x4

    aget-boolean v16, v2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Audit Integer: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v14, "EdmDLPStorageHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NetworkAccess: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-boolean v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ClipboardAccess: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-boolean v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-lez v8, :cond_2

    .line 523
    const-string/jumbo v14, "ExpiryAfter"

    invoke-virtual {v3, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    :cond_2
    return-object v3

    .line 483
    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v2, "auditVals":[Z
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "domains":Ljava/lang/String;
    .local v9, "extensions":Ljava/lang/String;
    .local v13, "policyVals":[Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 484
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 491
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v9    # "extensions":Ljava/lang/String;
    :catchall_0
    move-exception v14

    .line 492
    if-eqz v5, :cond_5

    .line 493
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 494
    const/4 v5, 0x0

    .line 491
    :cond_5
    throw v14
.end method

.method public getPolicyConfigOwners()Landroid/util/SparseLongArray;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    const-string/jumbo v4, "EdmDLPStorageHelper"

    const-string/jumbo v5, "getPolicyConfigOwners called !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .line 412
    .local v3, "policyConfigOwners":Landroid/util/SparseLongArray;
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v4, "userid"

    aput-object v4, v0, v6

    const-string/jumbo v4, "adminUid"

    aput-object v4, v0, v7

    .line 413
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v5, "IRMServiceInformationTable"

    .line 418
    const/4 v6, 0x0

    .line 417
    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 419
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 423
    if-eqz v1, :cond_0

    .line 424
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    const/4 v1, 0x0

    .line 422
    :cond_0
    throw v4

    .line 423
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v1, :cond_2

    .line 424
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    const/4 v1, 0x0

    .line 429
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v3
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "creatorWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "consumerWhitelist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    const/4 v5, 0x0

    .line 91
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :cond_1
    return-object v5

    .line 93
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz v3, :cond_3

    .line 96
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "Type"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 100
    .local v0, "ai":Lcom/samsung/android/knox/AppIdentity;
    new-instance v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v4}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "ai$iterator":Ljava/util/Iterator;
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_3
    if-eqz v2, :cond_1

    .line 105
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 106
    .restart local v4    # "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "Type"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "ai$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 109
    .restart local v0    # "ai":Lcom/samsung/android/knox/AppIdentity;
    new-instance v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v0, v4}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 125
    const-string/jumbo v2, "data_text1"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "data_text2"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 127
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;IJ)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I
    .param p3, "adminUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 143
    const-string/jumbo v2, "data_text1"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "data_text2"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 145
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string/jumbo v2, "adminUid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isActivated(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 619
    new-array v1, v7, [Ljava/lang/String;

    .line 620
    const-string/jumbo v4, "data_int1"

    aput-object v4, v1, v5

    .line 623
    .local v1, "columns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const/4 v2, 0x0

    .line 629
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 632
    .local v0, "activated":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v5, "IRMServiceInformationTable"

    .line 633
    const/4 v6, 0x0

    .line 632
    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 634
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 636
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v7, :cond_0

    .line 637
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :cond_1
    if-eqz v2, :cond_2

    .line 643
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    const/4 v2, 0x0

    .line 648
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v0

    .line 641
    :catchall_0
    move-exception v4

    .line 642
    if-eqz v2, :cond_3

    .line 643
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    const/4 v2, 0x0

    .line 641
    :cond_3
    throw v4
.end method

.method public isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 191
    const-string/jumbo v3, "data_text1"

    aput-object v3, v0, v6

    const-string/jumbo v3, "data_text2"

    aput-object v3, v0, v7

    .line 194
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "userid"

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string/jumbo v3, "data_text1"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    .line 202
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v4, "IRMServiceInformationTable"

    .line 203
    const/4 v5, 0x0

    .line 202
    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 204
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v1, 0x0

    .line 205
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v7

    .line 208
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v1, 0x0

    .line 214
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v6

    .line 207
    :catchall_0
    move-exception v3

    .line 208
    if-eqz v1, :cond_3

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v1, 0x0

    .line 207
    :cond_3
    throw v3
.end method

.method public isLocked(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 657
    new-array v0, v7, [Ljava/lang/String;

    .line 658
    const-string/jumbo v4, "data_int2"

    aput-object v4, v0, v5

    .line 661
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 670
    .local v3, "isLocked":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v5, "IRMServiceInformationTable"

    .line 671
    const/4 v6, 0x0

    .line 670
    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 672
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v7, :cond_0

    .line 675
    const/4 v3, 0x1

    goto :goto_0

    .line 680
    :cond_1
    if-eqz v1, :cond_2

    .line 681
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 682
    const/4 v1, 0x0

    .line 686
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v3

    .line 679
    :catchall_0
    move-exception v4

    .line 680
    if-eqz v1, :cond_3

    .line 681
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 682
    const/4 v1, 0x0

    .line 679
    :cond_3
    throw v4
.end method

.method public removeDBEntries(J)I
    .locals 5
    .param p1, "adminUid"    # J

    .prologue
    .line 695
    const-string/jumbo v2, "EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoveDBEntries called for adminUID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v3, "IRMServiceInformationTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 699
    .local v1, "row":I
    return v1
.end method

.method public removeDumpLog()V
    .locals 9

    .prologue
    .line 728
    const/4 v1, 0x0

    .line 730
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 731
    const-string/jumbo v6, "userid"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    const-string/jumbo v6, "fileUri"

    const/4 v7, 0x1

    aput-object v6, v0, v7

    .line 733
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "rights"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v7, "IRMDocumentRightsTable"

    .line 736
    const/4 v8, 0x0

    .line 735
    invoke-virtual {v6, v7, v0, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 737
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/16 v7, 0x33

    if-lt v6, v7, :cond_0

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 739
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 740
    .local v4, "row":I
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, "row1":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "userid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const-string/jumbo v6, "fileUri"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 745
    const-string/jumbo v7, "IRMDocumentRightsTable"

    .line 744
    invoke-virtual {v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "row":I
    .end local v5    # "row1":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 751
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 752
    const/4 v1, 0x0

    .line 727
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 749
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    .line 750
    if-eqz v1, :cond_2

    .line 751
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 752
    const/4 v1, 0x0

    .line 749
    :cond_2
    throw v6
.end method

.method public removeWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "count":I
    if-eqz p2, :cond_1

    .line 285
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWhitelistApps => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 288
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "adminUid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string/jumbo v5, "userid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string/jumbo v5, "data_text1"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v6, "IRMServiceInformationTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 299
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    :cond_1
    if-lez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "defaultPolicy"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const/4 v14, 0x1

    .line 311
    .local v14, "ret":Z
    const/4 v7, 0x0

    .line 312
    .local v7, "extensions":Ljava/lang/String;
    const/4 v5, 0x0

    .line 313
    .local v5, "domains":Ljava/lang/String;
    const/4 v6, 0x0

    .line 318
    .local v6, "expiryAfter":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v15, "adminUid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string/jumbo v15, "type"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string/jumbo v15, "userid"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    if-nez p2, :cond_0

    .line 324
    const-string/jumbo v15, "EdmDLPStorageHelper"

    const-string/jumbo v16, "setDefaultPolicy() defaultPolicy is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v14, 0x0

    .line 405
    .end local v5    # "domains":Ljava/lang/String;
    .end local v7    # "extensions":Ljava/lang/String;
    .end local v14    # "ret":Z
    :goto_0
    return v14

    .line 328
    .restart local v5    # "domains":Ljava/lang/String;
    .restart local v7    # "extensions":Ljava/lang/String;
    .restart local v14    # "ret":Z
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 330
    const-string/jumbo v15, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 331
    .local v10, "isActivated":Z
    const-string/jumbo v16, "data_int1"

    if-eqz v10, :cond_9

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:isActivated: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v10    # "isActivated":Z
    :cond_1
    const-string/jumbo v15, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 335
    const-string/jumbo v15, "Lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 336
    .local v11, "isLocked":Z
    const-string/jumbo v16, "data_int2"

    if-eqz v11, :cond_a

    const/4 v15, 0x1

    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:isLocked: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v11    # "isLocked":Z
    :cond_2
    const-string/jumbo v15, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 340
    const-string/jumbo v15, "ExpiryAfter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 341
    const-string/jumbo v15, "data_int3"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:expiry_after: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    const/16 v15, 0x10e

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 346
    const-string/jumbo v15, "Extensions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 347
    const-string/jumbo v15, "Extensions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "extensions":Ljava/lang/String;
    const-string/jumbo v15, "data_text1"

    invoke-virtual {v3, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:extensions: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v7    # "extensions":Ljava/lang/String;
    :cond_4
    :goto_3
    const/16 v15, 0x118

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 355
    const-string/jumbo v15, "Domains"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 356
    const-string/jumbo v15, "Domains"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "domains":Ljava/lang/String;
    const-string/jumbo v15, "data_text2"

    invoke-virtual {v3, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:domains: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v5    # "domains":Ljava/lang/String;
    :cond_5
    :goto_4
    const/16 v15, 0x118

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 364
    const-string/jumbo v15, "AUDIT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 365
    const-string/jumbo v15, "AUDIT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 366
    .local v2, "audit":I
    const-string/jumbo v15, "data_int4"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:Audit Integer: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v2    # "audit":I
    :cond_6
    :goto_5
    const-string/jumbo v15, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 374
    const-string/jumbo v15, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    .line 373
    if-eqz v15, :cond_8

    .line 375
    :cond_7
    const/4 v12, 0x0

    .line 376
    .local v12, "oldConfig":Landroid/os/Bundle;
    const-string/jumbo v15, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 377
    const-string/jumbo v15, "NETWORK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 382
    .end local v12    # "oldConfig":Landroid/os/Bundle;
    .local v9, "haveNetWorkAccess":Z
    :goto_6
    const-string/jumbo v15, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 383
    const-string/jumbo v15, "CLIPBOARD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 388
    .local v8, "haveClipboardAccess":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getIntValue(ZZ)I

    move-result v13

    .line 389
    .local v13, "policy":I
    const-string/jumbo v15, "option1"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:NetworkAccess: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 391
    const-string/jumbo v17, " ClipboardAccess: "

    .line 390
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig:Policy Integer: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v8    # "haveClipboardAccess":Z
    .end local v9    # "haveNetWorkAccess":Z
    .end local v13    # "policy":I
    :cond_8
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v15

    if-lez v15, :cond_10

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 396
    const-string/jumbo v16, "IRMServiceInformationTable"

    .line 395
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 401
    .end local v14    # "ret":Z
    :goto_8
    const-string/jumbo v15, "EdmDLPStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setDLPConfig() set : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setDLPConfig => "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .local v5, "domains":Ljava/lang/String;
    .local v7, "extensions":Ljava/lang/String;
    .restart local v10    # "isActivated":Z
    .restart local v14    # "ret":Z
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 336
    .end local v10    # "isActivated":Z
    .restart local v11    # "isLocked":Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 352
    .end local v11    # "isLocked":Z
    :cond_b
    const-string/jumbo v15, "EdmDLPStorageHelper"

    const-string/jumbo v16, "Knox version not supported for extension"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 361
    .end local v7    # "extensions":Ljava/lang/String;
    :cond_c
    const-string/jumbo v15, "EdmDLPStorageHelper"

    const-string/jumbo v16, "Knox version not supported for domains list"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 370
    .end local v5    # "domains":Ljava/lang/String;
    :cond_d
    const-string/jumbo v15, "EdmDLPStorageHelper"

    const-string/jumbo v16, "Knox version not supported for DLP Audit events."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 379
    .restart local v12    # "oldConfig":Landroid/os/Bundle;
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v12

    .line 380
    .local v12, "oldConfig":Landroid/os/Bundle;
    const-string/jumbo v15, "NETWORK"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .restart local v9    # "haveNetWorkAccess":Z
    goto/16 :goto_6

    .line 385
    .end local v12    # "oldConfig":Landroid/os/Bundle;
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v12

    .line 386
    .restart local v12    # "oldConfig":Landroid/os/Bundle;
    const-string/jumbo v15, "CLIPBOARD"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "haveClipboardAccess":Z
    goto/16 :goto_7

    .line 398
    .end local v8    # "haveClipboardAccess":Z
    .end local v9    # "haveNetWorkAccess":Z
    .end local v12    # "oldConfig":Landroid/os/Bundle;
    :cond_10
    const/4 v14, 0x0

    goto :goto_8
.end method

.method public updateAdminUid(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "oldAdmimUid"    # J

    .prologue
    .line 439
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string/jumbo v3, "userid"

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v2, "toChange":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string/jumbo v4, "IRMServiceInformationTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    .line 448
    .local v0, "count":I
    return v0
.end method
