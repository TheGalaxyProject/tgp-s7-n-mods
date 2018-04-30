.class public Lcom/sec/android/securestorage/SecureStorage;
.super Ljava/lang/Object;
.source "SecureStorage.java"

# interfaces
.implements Lcom/samsung/android/util/LibraryVersionQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
    }
.end annotation


# static fields
.field private static final DOUBLE_SIZE:I = 0x8

.field private static final INTEGER_SIZE:I = 0x4

.field private static secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/securestorage/SecureStorageJNI;->getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;

    move-result-object v0

    sput-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public encrypt([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_3
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v4, v3

    new-array v2, v4, [Z

    const/4 v1, 0x0

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_1

    aput-boolean v5, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    aput-boolean v6, v2, v1

    goto :goto_3

    :cond_2
    return-object v2
.end method

.method public getBooleanArray(Ljava/lang/String;Ljava/lang/String;)[Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    :goto_2
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v4, v3

    new-array v2, v4, [Z

    const/4 v1, 0x0

    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_2

    aput-boolean v5, v2, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    aput-boolean v6, v2, v1

    goto :goto_4

    :cond_3
    return-object v2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    aget-byte v2, v1, v3

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    aget-byte v2, v1, v4

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getCharArray(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    return-wide v4

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getDoubleArray(Ljava/lang/String;Ljava/lang/String;)[D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getLongArray(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public put(Ljava/lang/String;B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte p2, v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1
.end method

.method public put(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte p2, v5, v6

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public put(Ljava/lang/String;C)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v6, p2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public put(Ljava/lang/String;D)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "Error: internal error"

    invoke-direct {p0, v4, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;DLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p4, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, p1, v7, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    :goto_2
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :cond_0
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2
.end method

.method public put(Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v6, p2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public put(Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p4, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3
.end method

.method public put(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "Error: internal error"

    invoke-direct {p0, v4, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p3, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, p1, v7, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    :goto_2
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :cond_0
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-eqz v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_3
.end method

.method public put(Ljava/lang/String;[C)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3
.end method

.method public put(Ljava/lang/String;[D)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[DLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3
.end method

.method public put(Ljava/lang/String;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3
.end method

.method public put(Ljava/lang/String;[J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;[JLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3
.end method

.method public put(Ljava/lang/String;[Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v4, p2

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    aget-boolean v4, p2, v2

    if-eqz v4, :cond_1

    aput-byte v5, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    aput-byte v6, v0, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v6, v5

    goto :goto_4
.end method

.method public put(Ljava/lang/String;[ZLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v4, p2

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-boolean v4, p2, v2

    if-eqz v4, :cond_2

    aput-byte v5, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    aput-byte v6, v0, v2

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_4
    if-eqz v3, :cond_4

    :goto_5
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v6, v5

    goto :goto_5
.end method
