.class public Lcom/sec/android/securestorage/SecureStorageOption;
.super Ljava/lang/Object;
.source "SecureStorageOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
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

    sput-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decryptOption([BLcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BB)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public deleteOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public encryptOption([BLcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BB)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public eraseKey()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI;->eraseKey()Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getBooleanArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v4, p1, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

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

.method public getBooleanOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    aget-byte v2, v1, v3

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1
.end method

.method public getCharArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getCharOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDoubleArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getDoubleOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getIntArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getIntOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLongArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getLongOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStringOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isKeyProvisioned()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI;->isKeyProvisioned()Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public provisionKey(Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p1}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->getKey()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->provisionKey([B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;BLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte p2, v5, v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;CLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;DLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;ILcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;JLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p4}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;ZLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;[BLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, p2, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[CLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v3, p1, v6, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[DLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v3, p1, v6, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[ILcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v3, p1, v6, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[JLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v3, p1, v6, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[ZLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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
    sget-object v4, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v4, p1, v0, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v6, v5

    goto :goto_4
.end method
