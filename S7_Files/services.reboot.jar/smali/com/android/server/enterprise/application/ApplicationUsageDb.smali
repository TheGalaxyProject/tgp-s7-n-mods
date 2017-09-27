.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .locals 7
    .param p1, "launchTime"    # J
    .param p3, "pauseTime"    # J
    .param p5, "serviceStartTime"    # J
    .param p7, "serviceStopTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 298
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "lastUsageTIme":J
    cmp-long v2, p5, v4

    if-eqz v2, :cond_5

    cmp-long v2, p7, v4

    if-eqz v2, :cond_5

    .line 300
    cmp-long v2, p1, v4

    if-eqz v2, :cond_4

    .line 301
    cmp-long v2, p3, p7

    if-lez v2, :cond_2

    .line 302
    cmp-long v2, p1, p5

    if-gez v2, :cond_1

    .line 303
    sub-long v0, p3, p1

    .line 329
    :cond_0
    :goto_0
    return-wide v0

    .line 307
    :cond_1
    sub-long v0, p3, p5

    goto :goto_0

    .line 311
    :cond_2
    cmp-long v2, p1, p5

    if-gez v2, :cond_3

    .line 313
    sub-long v0, p7, p1

    goto :goto_0

    .line 317
    :cond_3
    sub-long v0, p7, p5

    goto :goto_0

    .line 322
    :cond_4
    sub-long v0, p7, p5

    goto :goto_0

    .line 324
    :cond_5
    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    .line 325
    sub-long v0, p3, p1

    goto :goto_0
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 368
    :try_start_0
    const-string/jumbo v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 376
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v2, "ApplicationUsageDb"

    const-string/jumbo v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ApplicationUsageDb"

    const-string/jumbo v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "dmappmgr.db"

    .line 350
    .local v1, "dmappmgrDBPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 354
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 353
    :try_start_0
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    .end local v0    # "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v3, "ApplicationControl"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    :cond_0
    :goto_1
    return-object v0

    .line 355
    .restart local v0    # "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApplicationUsageDb"

    const-string/jumbo v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v0    # "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "exists":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 388
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    const/4 v1, 0x1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 392
    const-string/jumbo v2, "ApplicationUsageDb"

    const-string/jumbo v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "success":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 180
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 181
    return v5

    .line 182
    :cond_0
    const-string/jumbo v4, "ApplicationControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    const-string/jumbo v6, "\'"

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    const/4 v6, 0x0

    .line 182
    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 185
    const/4 v3, 0x1

    .line 190
    .end local v0    # "count":I
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_2
    return v3

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/application/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/16 v16, 0x0

    .line 237
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 238
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v19, 0x0

    .line 239
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/String;

    .line 240
    const-string/jumbo v5, "pkgname"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string/jumbo v5, "lastlaunchtime"

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string/jumbo v5, "lastpausetime"

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const-string/jumbo v5, "applastservicestarttime"

    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 241
    const-string/jumbo v5, "applastservicestoptime"

    const/4 v7, 0x4

    aput-object v5, v6, v7

    .line 245
    .local v6, "col":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 246
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_1

    .line 247
    const/4 v5, 0x0

    .line 289
    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 247
    :cond_0
    return-object v5

    .line 248
    :cond_1
    :try_start_1
    const-string/jumbo v5, "ApplicationControl"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 249
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 251
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    .local v22, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v5, "pkgname"

    .line 255
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 258
    .local v23, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "lastlaunchtime"

    .line 257
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 260
    .local v8, "lastLaunchTime":J
    const-string/jumbo v5, "lastpausetime"

    .line 259
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 262
    .local v10, "lastPauseTime":J
    const-string/jumbo v5, "applastservicestarttime"

    .line 261
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 264
    .local v12, "lastServiceStartTime":J
    const-string/jumbo v5, "applastservicestoptime"

    .line 263
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .local v14, "lastServiceStopTime":J
    move-object/from16 v7, p0

    .line 265
    invoke-direct/range {v7 .. v15}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v20

    .line 268
    .local v20, "lastUsageTime":J
    const-wide/16 v24, 0x0

    cmp-long v5, v20, v24

    if-nez v5, :cond_6

    .line 280
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v19, v22

    .line 287
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v20    # "lastUsageTime":J
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    :cond_3
    if-eqz v16, :cond_4

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_4
    if-eqz v4, :cond_5

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 293
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v19

    .line 271
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "lastLaunchTime":J
    .restart local v10    # "lastPauseTime":J
    .restart local v12    # "lastServiceStartTime":J
    .restart local v14    # "lastServiceStopTime":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "lastUsageTime":J
    .restart local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v18, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    .line 272
    .local v18, "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 273
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    .line 274
    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_8

    .line 275
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    .line 278
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 283
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v18    # "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local v20    # "lastUsageTime":J
    .end local v23    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v19, v22

    .line 284
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    :goto_3
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    if-eqz v16, :cond_7

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_7
    if-eqz v4, :cond_5

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 277
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "lastLaunchTime":J
    .restart local v10    # "lastPauseTime":J
    .restart local v12    # "lastServiceStartTime":J
    .restart local v14    # "lastServiceStopTime":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v20    # "lastUsageTime":J
    .restart local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_8
    :try_start_5
    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 286
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v18    # "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local v20    # "lastUsageTime":J
    .end local v23    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object/from16 v19, v22

    .line 287
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    :goto_4
    if-eqz v16, :cond_9

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_9
    if-eqz v4, :cond_a

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 286
    :cond_a
    throw v5

    :catchall_1
    move-exception v5

    goto :goto_4

    .line 283
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    :catch_1
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 200
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 203
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "ApplicationControl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 206
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 207
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    const-string/jumbo v1, "pkgname"

    .line 211
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "launchcount"

    .line 214
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 216
    .local v10, "launchCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .end local v10    # "launchCount":I
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v11, v12

    .line 224
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v8, :cond_3

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v11

    .line 220
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v9

    .line 221
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    if-eqz v8, :cond_5

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_5
    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 223
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 224
    :goto_2
    if-eqz v8, :cond_6

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_6
    if-eqz v0, :cond_7

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 223
    :cond_7
    throw v1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 220
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object v11, v12

    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastServiceStartTime"    # J
    .param p4, "lastServiceStopTime"    # J

    .prologue
    .line 130
    const/4 v6, 0x0

    .line 131
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 134
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 135
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_0

    .line 136
    const/4 v8, 0x0

    return v8

    .line 137
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 138
    const-string/jumbo v9, "\'"

    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    const/4 v9, 0x0

    .line 137
    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 144
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string/jumbo v8, "applastservicestoptime"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string/jumbo v8, "ApplicationControl"

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 147
    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 149
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 150
    const/4 v6, 0x1

    .line 164
    .end local v0    # "count":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 167
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :cond_3
    return v6

    .line 152
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :try_start_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v8, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string/jumbo v8, "applastservicestoptime"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string/jumbo v8, "ApplicationControl"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 157
    .local v2, "count":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v2

    if-gez v8, :cond_1

    .line 158
    const/4 v6, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "count":J
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    if-eqz v1, :cond_2

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 163
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 164
    if-eqz v1, :cond_5

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_5
    throw v8
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lCount"    # I
    .param p3, "launchTime"    # J
    .param p5, "lastPauseTime"    # J

    .prologue
    .line 78
    const/4 v7, 0x0

    .line 79
    .local v7, "success":Z
    const/4 v1, 0x0

    .line 80
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 82
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 83
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_0

    .line 84
    const/4 v9, 0x0

    return v9

    .line 85
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 86
    const-string/jumbo v10, "\'"

    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 86
    const/4 v10, 0x0

    .line 85
    invoke-virtual {v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 90
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 93
    const-string/jumbo v9, "launchcount"

    .line 92
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 94
    .local v6, "launchCount":I
    add-int/2addr v6, p2

    .line 95
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "launchcount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string/jumbo v9, "lastlaunchtime"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string/jumbo v9, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string/jumbo v9, "ApplicationControl"

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkgname = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 99
    invoke-virtual {v4, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 101
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 102
    const/4 v7, 0x1

    .line 117
    .end local v0    # "count":I
    .end local v6    # "launchCount":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    :cond_3
    return v7

    .line 104
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .restart local v8    # "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v9, "pkgname"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v9, "lastlaunchtime"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string/jumbo v9, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string/jumbo v9, "ApplicationControl"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 110
    .local v2, "count":J
    const-wide/16 v10, 0x0

    cmp-long v9, v10, v2

    if-gez v9, :cond_1

    .line 111
    const/4 v7, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "count":J
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 116
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 117
    if-eqz v1, :cond_5

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_5
    throw v9
.end method
