.class public Lcom/android/server/enterprise/storage/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field static final PW_ENCODED_LENTH:I = 0x9

.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v4, Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v4}, Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;-><init>()V

    invoke-static {p1, v4}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/EcppStorageHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    .line 44
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "EcppStorageProvider"

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 53
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 47
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v4, "EcppStorageProvider"

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 49
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    const-string/jumbo v0, ""

    .line 175
    .local v0, "adminName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 176
    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "clsName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "compomentName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 183
    const-string/jumbo v4, "\'"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_1
    return-object v0
.end method


# virtual methods
.method public findContainerAdmin(ILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    const-string/jumbo v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findContainerAdmin(): containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    const-string/jumbo v4, " admin = "

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passwordContainerID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND componentName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "\'"

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const-string/jumbo v3, "PASSWORD_POLICY"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const/4 v2, 0x1

    return v2

    .line 205
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 353
    const-string/jumbo v2, "PASSWORD_POLICY"

    .line 354
    const-string/jumbo v3, "allowBluetoothMode"

    const-wide/16 v6, 0x2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    .line 353
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 383
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 384
    const-string/jumbo v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 383
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 378
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 379
    const-string/jumbo v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 378
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 358
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 359
    const-string/jumbo v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 347
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 348
    const-string/jumbo v2, "allowInternetSharing"

    .line 349
    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 347
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 363
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 364
    const-string/jumbo v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 373
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 374
    const-string/jumbo v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 373
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 368
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 369
    const-string/jumbo v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 368
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 342
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 343
    const-string/jumbo v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 342
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 337
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 338
    const-string/jumbo v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 151
    const-string/jumbo v1, "0"

    .line 152
    .local v1, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    const-string/jumbo v4, " AND "

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    const-string/jumbo v4, "componentName"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    const-string/jumbo v4, "=\'"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    const-string/jumbo v4, "\'"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 157
    aput-object p2, v4, v5

    .line 156
    invoke-virtual {v3, p1, v4, v2, v6}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :goto_0
    return-object v1

    .line 165
    :cond_1
    const-string/jumbo v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    const-string/jumbo v5, " is not available on this policy set yet"

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "defaultValue"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 62
    const-string/jumbo v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    const-string/jumbo v6, " columnToSelect = "

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    const-string/jumbo v6, " containerId = "

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    const-string/jumbo v6, " admin = "

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    const-string/jumbo v6, " defaultValue = "

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "passwordContainerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "adminName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 69
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND componentName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    const-string/jumbo v5, "\'"

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 75
    aput-object p2, v5, v7

    .line 74
    invoke-virtual {v4, p1, v5, v3, v8}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 77
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v2, 0x0

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    .end local v2    # "result":Z
    :goto_1
    const-string/jumbo v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    const-string/jumbo v6, " columnToSelect = "

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    const-string/jumbo v6, " RETURNING = "

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 79
    .restart local v2    # "result":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, " is not available on this policy set yet"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move v2, p5

    .local v2, "result":Z
    goto :goto_1
.end method

.method protected getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 102
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "defaultValue"    # J

    .prologue
    .line 114
    const-string/jumbo v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLongColumnValue(): tableName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " columnToSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    const-string/jumbo v7, " containerId = "

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    const-string/jumbo v7, " admin = "

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    const-string/jumbo v7, " defaultValue = "

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "passwordContainerID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND componentName=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    const-string/jumbo v6, "\'"

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 127
    const/4 v7, 0x0

    aput-object p2, v6, v7

    .line 128
    const/4 v7, 0x0

    .line 126
    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 129
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 133
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    :goto_0
    const-string/jumbo v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLongColumnValue(): tableName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " columnToSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 141
    const-string/jumbo v7, " RETURNING = "

    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-wide v2

    .line 135
    :cond_2
    const-string/jumbo v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    const-string/jumbo v7, " is not available on this policy set yet"

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-wide v2, p5

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 300
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 301
    const-string/jumbo v1, "maximumFailedPasswordsForDisable"

    .line 300
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 294
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 295
    const-string/jumbo v1, "maximumFailedPasswordsForWipe"

    .line 294
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 314
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 315
    const-string/jumbo v1, "maximumTimeToLockPassword"

    .line 314
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0

    .line 318
    :cond_0
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 319
    const-string/jumbo v1, "maximumTimeToLockPassword"

    .line 318
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 286
    const-string/jumbo v2, "PASSWORD_POLICY"

    .line 287
    const-string/jumbo v3, "passwordExpirationDate"

    .line 285
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 289
    .local v0, "passwordExpirationDate":J
    const-string/jumbo v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPasswordExpirationDate: getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-wide v0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 326
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 327
    const-string/jumbo v1, "passwordExpirationTimeout"

    .line 326
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0

    .line 330
    :cond_0
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 331
    const-string/jumbo v1, "passwordExpirationTimeout"

    .line 330
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 277
    const-string/jumbo v1, "passwordHistory"

    .line 276
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 279
    :cond_0
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 280
    const-string/jumbo v1, "passwordHistory"

    .line 279
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 209
    const-string/jumbo v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    const-string/jumbo v2, " admin = "

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 212
    const-string/jumbo v1, "passwordMinimumLength"

    .line 211
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 216
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 217
    const-string/jumbo v1, "passwordMinimumLetters"

    .line 216
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 221
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 222
    const-string/jumbo v1, "passwordMinimumLowerCase"

    .line 221
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 228
    const-string/jumbo v1, "passwordMinimumNonLetter"

    .line 227
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 233
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 234
    const-string/jumbo v1, "passwordMinimumNumeric"

    .line 233
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 244
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 245
    const-string/jumbo v1, "passwordMinimumSymbols"

    .line 244
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    const-string/jumbo v0, "PASSWORD_POLICY"

    .line 239
    const-string/jumbo v1, "passwordMinimumUpperCase"

    .line 238
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 259
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 260
    const-string/jumbo v2, "passwordQuality"

    .line 259
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 262
    .local v0, "quality":I
    if-gez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 266
    :cond_0
    return v0
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 270
    const-string/jumbo v1, "PASSWORD_POLICY"

    .line 271
    const-string/jumbo v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 306
    const-string/jumbo v2, "PASSWORD_POLICY"

    .line 307
    const-string/jumbo v3, "passwordVisible"

    const/4 v4, 0x0

    .line 306
    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 309
    .local v0, "ret":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
