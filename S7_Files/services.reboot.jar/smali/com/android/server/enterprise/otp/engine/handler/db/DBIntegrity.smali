.class public Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
.super Ljava/lang/Object;
.source "DBIntegrity.java"


# static fields
.field private static instance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;


# instance fields
.field private context:Landroid/content/Context;

.field private mDbUpgradeActive:Z

.field private mOpActive:I

.field private mUpdateHmacPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->instance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->context:Landroid/content/Context;

    .line 45
    iput v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 46
    iput-boolean v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private dbFileExists()Z
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/OtpDatabase.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 241
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v4, "DBIntegrity::getHmacSHA1 - input string is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 243
    return-object v6

    .line 241
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 248
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string/jumbo v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 249
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 250
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 251
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    .local v2, "result":[B
    const/16 v4, 0x8

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 253
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .end local v2    # "result":[B
    .end local v3    # "sk":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DBIntegrity::getHmacSHA1 - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->instance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "DBIntegrity::getInstance - New instance created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->instance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->instance:Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 214
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 215
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 219
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v5    # "reader":Ljava/io/BufferedReader;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 223
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 228
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v5, :cond_0

    .line 229
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_0
    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 227
    :cond_1
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .end local v7    # "ret":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DBIntegrity::getStringFromFile - Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v7

    .line 226
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "ret":Ljava/lang/String;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 228
    .local v7, "ret":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 229
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_3
    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 233
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v2, "fin":Ljava/io/FileInputStream;
    .local v5, "reader":Ljava/io/BufferedReader;
    .local v7, "ret":Ljava/lang/String;
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setTokenStateCorrupt()V
    .locals 9

    .prologue
    .line 181
    const-string/jumbo v7, "DBIntegrity::setTokenStateCorrupt - ENTER"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 183
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getSqlDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 184
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    .line 185
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v5, :cond_1

    .line 186
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "d$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    .line 187
    .local v1, "d":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    move-object v0, v1

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v6, v0

    .line 188
    .local v6, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v6, :cond_0

    .line 190
    const/16 v7, 0x303

    iput v7, v6, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->tokenState:I

    .line 191
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v1    # "d":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    .end local v2    # "d$iterator":Ljava/util/Iterator;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v6    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DBIntegrity::setTokenStateCorrupt - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 195
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v7, "DBIntegrity::setTokenStateCorrupt - getAllEntries returned NULL"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized update()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->dbFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v1, "/data/system/OtpDatabase.db"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "hmac":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DBIntegrity::update - hmac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->setOtpDbHmac(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "hmac":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    .line 170
    return-void

    .line 177
    :cond_0
    :try_start_1
    const-string/jumbo v1, "DBIntegrity::update - DB file not found"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized verify()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->dbFileExists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string/jumbo v3, "/data/system/OtpDatabase.db"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "calculatedHmac":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getOtpDbHmac()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "storedHmac":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 146
    const-string/jumbo v3, "DBIntegrity::verify - first time here."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v1, 0x0

    .line 162
    .end local v0    # "calculatedHmac":Ljava/lang/String;
    .end local v2    # "storedHmac":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 163
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 149
    .restart local v0    # "calculatedHmac":Ljava/lang/String;
    .restart local v2    # "storedHmac":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    :cond_2
    const-string/jumbo v3, "DBIntegrity::verify - calculated and stored hmac not match"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DBIntegrity::verify - [calculatedHmac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    const-string/jumbo v4, ", storedHmac = "

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    const-string/jumbo v4, "]"

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 153
    const/16 v1, 0x4ff

    goto :goto_0

    .line 156
    .end local v0    # "calculatedHmac":Ljava/lang/String;
    .end local v2    # "storedHmac":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getOtpDbHmac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    const-string/jumbo v3, "DBIntegrity::verify - DB file removed unexpectdly"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 159
    const/16 v1, 0x4ff

    goto :goto_0

    .line 165
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->setTokenStateCorrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 166
    return v5

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized endDbEdit()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 81
    .local v1, "ste":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".java"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "caller":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V

    .line 86
    iget v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DBIntegrity::endDbEdit [Invoked From: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mOpActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    const-string/jumbo v3, "]"

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 78
    return-void

    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized endDbUpgrade()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 97
    :try_start_0
    const-string/jumbo v0, "DBIntegrity::endDbUpgrade - ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 96
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDbUpgradeActive()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->update()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mUpdateHmacPending:Z

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDbEdit()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 52
    .local v2, "ste":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".java"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "caller":Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "ret":Z
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-ge v3, v7, :cond_1

    .line 57
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verify()Z

    move-result v1

    .line 59
    .local v1, "ret":Z
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 66
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DBIntegrity::startDbEdit - PASS [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    const-string/jumbo v4, "]"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 75
    return v1

    .line 61
    .local v1, "ret":Z
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-lez v3, :cond_0

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "ret":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DBIntegrity::startDbEdit - FAIL [Invoked From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOpActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    iget v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    const-string/jumbo v4, "]"

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startDbUpgrade()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    const-string/jumbo v0, "DBIntegrity::startDbUpgrade - ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mDbUpgradeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 91
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyDbIntegrity(Ljava/lang/String;)Z
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "ret":Z
    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 117
    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 118
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verify()Z

    move-result v0

    .line 119
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 126
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DBIntegrity::verifyDbIntegrity - PASS [Invoked From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string/jumbo v2, ", mOpActive = "

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    iget v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "]"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 134
    return v0

    .line 121
    .local v0, "ret":Z
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    if-lez v1, :cond_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "ret":Z
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DBIntegrity::verifyDbIntegrity - FAIL [Invoked From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, ", mOpActive = "

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    iget v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->mOpActive:I

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "]"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
