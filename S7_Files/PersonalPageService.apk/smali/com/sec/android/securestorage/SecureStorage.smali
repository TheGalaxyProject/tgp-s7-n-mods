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

    .prologue
    .line 46
    invoke-static {}, Lcom/sec/android/securestorage/SecureStorageJNI;->getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;

    move-result-object v0

    sput-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()I
    .locals 1

    .prologue
    .line 1973
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 1960
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    .prologue
    .line 1969
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1883
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1884
    const/4 v1, 0x0

    .line 1887
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1892
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1893
    return-object v1

    :cond_0
    move v2, v4

    .line 1883
    goto :goto_0

    .line 1888
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1892
    goto :goto_2
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1913
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1914
    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1915
    const/4 v1, 0x0

    .line 1918
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1923
    .end local v1    # "result":[B
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1924
    return-object v1

    :cond_0
    move v2, v4

    .line 1913
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1914
    goto :goto_1

    .line 1919
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1920
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_2
    move v3, v4

    .line 1923
    goto :goto_3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1940
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1941
    const/4 v1, 0x0

    .line 1944
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1949
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1950
    return v1

    .line 1945
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1949
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1826
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1827
    const/4 v1, 0x0

    .line 1830
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1835
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1836
    return-object v1

    :cond_0
    move v2, v4

    .line 1826
    goto :goto_0

    .line 1831
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1835
    goto :goto_2
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1855
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1856
    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1857
    const/4 v1, 0x0

    .line 1860
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1865
    .end local v1    # "result":[B
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1866
    return-object v1

    :cond_0
    move v2, v4

    .line 1855
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1856
    goto :goto_1

    .line 1861
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_2
    move v3, v4

    .line 1865
    goto :goto_3
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1756
    const/4 v2, 0x0

    .line 1759
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1764
    .end local v2    # "result":[B
    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1767
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    .line 1760
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1764
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1770
    :catch_1
    move-exception v1

    .line 1772
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1791
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1792
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1793
    const/4 v2, 0x0

    .line 1796
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1801
    .end local v2    # "result":[B
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1804
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

    .line 1792
    goto :goto_0

    .line 1797
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_1
    move v4, v5

    .line 1801
    goto :goto_2

    .line 1807
    :catch_1
    move-exception v1

    .line 1809
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1683
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1684
    const/4 v3, 0x0

    .line 1687
    .local v3, "result":[B
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1692
    .end local v3    # "result":[B
    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1693
    array-length v4, v3

    new-array v2, v4, [Z

    .line 1694
    .local v2, "publicText":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 1695
    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_1

    .line 1696
    aput-boolean v5, v2, v1

    .line 1694
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1688
    .end local v1    # "i":I
    .end local v2    # "publicText":[Z
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":[B
    :cond_0
    move v4, v6

    .line 1692
    goto :goto_1

    .line 1698
    .restart local v1    # "i":I
    .restart local v2    # "publicText":[Z
    :cond_1
    aput-boolean v6, v2, v1

    goto :goto_3

    .line 1701
    :cond_2
    return-object v2
.end method

.method public getBooleanArray(Ljava/lang/String;Ljava/lang/String;)[Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1720
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1721
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1722
    const/4 v3, 0x0

    .line 1725
    .local v3, "result":[B
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1730
    .end local v3    # "result":[B
    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    :goto_2
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1731
    array-length v4, v3

    new-array v2, v4, [Z

    .line 1732
    .local v2, "publicText":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 1733
    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_2

    .line 1734
    aput-boolean v5, v2, v1

    .line 1732
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "publicText":[Z
    :cond_0
    move v4, v6

    .line 1721
    goto :goto_0

    .line 1726
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":[B
    :cond_1
    move v4, v6

    .line 1730
    goto :goto_2

    .line 1736
    .restart local v1    # "i":I
    .restart local v2    # "publicText":[Z
    :cond_2
    aput-boolean v6, v2, v1

    goto :goto_4

    .line 1739
    :cond_3
    return-object v2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1157
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1158
    const/4 v1, 0x0

    .line 1161
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1166
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1167
    aget-byte v2, v1, v3

    return v2

    .line 1162
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    move v2, v3

    .line 1166
    goto :goto_1
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1185
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1186
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1187
    const/4 v1, 0x0

    .line 1190
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1195
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1196
    aget-byte v2, v1, v4

    return v2

    :cond_0
    move v2, v4

    .line 1186
    goto :goto_0

    .line 1191
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1195
    goto :goto_2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1103
    const/4 v1, 0x0

    .line 1106
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1111
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1112
    return-object v1

    .line 1107
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1130
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1131
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1132
    const/4 v1, 0x0

    .line 1135
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1140
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1141
    return-object v1

    :cond_0
    move v2, v4

    .line 1131
    goto :goto_0

    .line 1136
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1140
    goto :goto_2
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1048
    const/4 v1, 0x0

    .line 1051
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1056
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1057
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    .line 1052
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1075
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1076
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1077
    const/4 v1, 0x0

    .line 1080
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1085
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1086
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    :cond_0
    move v2, v4

    .line 1076
    goto :goto_0

    .line 1081
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1085
    goto :goto_2
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 976
    const/4 v4, 0x0

    .line 979
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 984
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 985
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 986
    .local v3, "publicText":[C
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 987
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 988
    const/4 v2, 0x0

    .line 989
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 990
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 980
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[C
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 993
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[C
    :cond_1
    return-object v3
.end method

.method public getCharArray(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1012
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1013
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1014
    const/4 v4, 0x0

    .line 1017
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1022
    .end local v4    # "result":[B
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1023
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 1024
    .local v3, "publicText":[C
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1025
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1026
    const/4 v2, 0x0

    .line 1027
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1028
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[C
    :cond_0
    move v5, v7

    .line 1013
    goto :goto_0

    .line 1018
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_1
    move v6, v7

    .line 1022
    goto :goto_2

    .line 1031
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[C
    :cond_2
    return-object v3
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1612
    const/4 v2, 0x0

    .line 1615
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1620
    .end local v2    # "result":[B
    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1623
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    return-wide v4

    .line 1616
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1626
    :catch_1
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1647
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1648
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1649
    const/4 v2, 0x0

    .line 1652
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1657
    .end local v2    # "result":[B
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1660
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

    .line 1648
    goto :goto_0

    .line 1653
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_1
    move v4, v5

    .line 1657
    goto :goto_2

    .line 1663
    :catch_1
    move-exception v1

    .line 1665
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1540
    const/4 v4, 0x0

    .line 1543
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1548
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1549
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    .line 1550
    .local v3, "publicText":[D
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1551
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1552
    const/4 v2, 0x0

    .line 1553
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1554
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1544
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[D
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1548
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1557
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[D
    :cond_1
    return-object v3
.end method

.method public getDoubleArray(Ljava/lang/String;Ljava/lang/String;)[D
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1576
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1577
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1578
    const/4 v4, 0x0

    .line 1581
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1586
    .end local v4    # "result":[B
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1587
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    .line 1588
    .local v3, "publicText":[D
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1589
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1590
    const/4 v2, 0x0

    .line 1591
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1592
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1593
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[D
    :cond_0
    move v5, v7

    .line 1577
    goto :goto_0

    .line 1582
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_1
    move v6, v7

    .line 1586
    goto :goto_2

    .line 1595
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[D
    :cond_2
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x0

    .line 1289
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1294
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1295
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    .line 1290
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1313
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1314
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1315
    const/4 v1, 0x0

    .line 1318
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1323
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1324
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    :cond_0
    move v2, v4

    .line 1314
    goto :goto_0

    .line 1319
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1323
    goto :goto_2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1214
    const/4 v4, 0x0

    .line 1217
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1222
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1223
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    .line 1224
    .local v3, "publicText":[I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1225
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1226
    const/4 v2, 0x0

    .line 1227
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1218
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[I
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1231
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[I
    :cond_1
    return-object v3
.end method

.method public getIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1250
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1251
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1252
    const/4 v4, 0x0

    .line 1255
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1260
    .end local v4    # "result":[B
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1261
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    .line 1262
    .local v3, "publicText":[I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1263
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1264
    const/4 v2, 0x0

    .line 1265
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1266
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[I
    :cond_0
    move v5, v7

    .line 1251
    goto :goto_0

    .line 1256
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_1
    move v6, v7

    .line 1260
    goto :goto_2

    .line 1269
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[I
    :cond_2
    return-object v3
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1982
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1414
    const/4 v1, 0x0

    .line 1417
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1421
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1422
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 1418
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1440
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1441
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1442
    const/4 v1, 0x0

    .line 1445
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1450
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1451
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_0
    move v2, v4

    .line 1441
    goto :goto_0

    .line 1446
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 1450
    goto :goto_2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1342
    const/4 v4, 0x0

    .line 1345
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1350
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1351
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    .line 1352
    .local v3, "publicText":[J
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1353
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1354
    const/4 v2, 0x0

    .line 1355
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1356
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1357
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1346
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[J
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1347
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1359
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[J
    :cond_1
    return-object v3
.end method

.method public getLongArray(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1378
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1379
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1380
    const/4 v4, 0x0

    .line 1383
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1388
    .end local v4    # "result":[B
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1389
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    .line 1390
    .local v3, "publicText":[J
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1391
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1392
    const/4 v2, 0x0

    .line 1393
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1394
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1395
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[J
    :cond_0
    move v5, v7

    .line 1379
    goto :goto_0

    .line 1384
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1385
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_1
    move v6, v7

    .line 1388
    goto :goto_2

    .line 1397
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[J
    :cond_2
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1468
    const/4 v2, 0x0

    .line 1471
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1476
    .end local v2    # "result":[B
    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1479
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1472
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1476
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1482
    :catch_1
    move-exception v1

    .line 1484
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1503
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1504
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1505
    const/4 v2, 0x0

    .line 1508
    .local v2, "result":[B
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1513
    .end local v2    # "result":[B
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1516
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :cond_0
    move v3, v5

    .line 1504
    goto :goto_0

    .line 1509
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":[B
    :cond_1
    move v4, v5

    .line 1513
    goto :goto_2

    .line 1519
    :catch_1
    move-exception v1

    .line 1521
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public put(Ljava/lang/String;B)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    .line 359
    .local v1, "result":Z
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

    .line 364
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 365
    return v1

    .line 360
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    move v2, v3

    .line 364
    goto :goto_1
.end method

.method public put(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # B
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 386
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 387
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 388
    const/4 v1, 0x0

    .line 391
    .local v1, "result":Z
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

    .line 396
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 397
    return v1

    :cond_0
    move v2, v4

    .line 387
    goto :goto_0

    .line 392
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 396
    goto :goto_2
.end method

.method public put(Ljava/lang/String;C)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, "result":Z
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

    .line 160
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 161
    return v1

    .line 156
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # C
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 183
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    .line 187
    .local v1, "result":Z
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

    .line 192
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 193
    return v1

    :cond_0
    move v2, v4

    .line 183
    goto :goto_0

    .line 188
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 192
    goto :goto_2
.end method

.method public put(Ljava/lang/String;D)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "dString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 749
    .local v3, "result":Z
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

    .line 760
    .end local v3    # "result":Z
    :goto_0
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "Error: internal error"

    invoke-direct {p0, v4, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 761
    return v3

    .line 756
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 758
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 752
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 753
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;DLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # D
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 782
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 783
    if-nez p4, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "dString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 788
    .local v3, "result":Z
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

    .line 800
    .end local v3    # "result":Z
    :goto_1
    if-eqz v3, :cond_1

    :goto_2
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 801
    return v3

    .end local v0    # "dString":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 783
    goto :goto_0

    .line 796
    .restart local v0    # "dString":Ljava/lang/String;
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 792
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 793
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_1
    move v6, v5

    .line 800
    goto :goto_2
.end method

.method public put(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x0

    .line 489
    .local v1, "result":Z
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

    .line 494
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 495
    return v1

    .line 490
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 516
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 517
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 518
    const/4 v1, 0x0

    .line 521
    .local v1, "result":Z
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

    .line 526
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 527
    return v1

    :cond_0
    move v2, v4

    .line 517
    goto :goto_0

    .line 522
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 526
    goto :goto_2
.end method

.method public put(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x0

    .line 619
    .local v1, "result":Z
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

    .line 624
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 625
    return v1

    .line 620
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # J
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 646
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 647
    if-nez p4, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, "result":Z
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

    .line 655
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 656
    return v1

    :cond_0
    move v2, v4

    .line 647
    goto :goto_0

    .line 651
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 655
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 214
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    .line 218
    .local v2, "result":Z
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

    .line 229
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 230
    return v2

    :cond_0
    move v3, v5

    .line 214
    goto :goto_0

    .line 225
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 221
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 229
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 253
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 254
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    .line 258
    .local v2, "result":Z
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

    .line 270
    .end local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 271
    return v2

    :cond_0
    move v3, v5

    .line 253
    goto :goto_0

    :cond_1
    move v3, v5

    .line 254
    goto :goto_1

    .line 266
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 262
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_2
    move v5, v4

    .line 270
    goto :goto_3
.end method

.method public put(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "dString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 906
    .local v3, "result":Z
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

    .line 917
    .end local v3    # "result":Z
    :goto_0
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "Error: internal error"

    invoke-direct {p0, v4, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 918
    return v3

    .line 913
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 915
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 909
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 910
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 939
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 940
    if-nez p3, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "dString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 945
    .local v3, "result":Z
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

    .line 957
    .end local v3    # "result":Z
    :goto_1
    if-eqz v3, :cond_1

    :goto_2
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 958
    return v3

    .end local v0    # "dString":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 940
    goto :goto_0

    .line 953
    .restart local v0    # "dString":Ljava/lang/String;
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 955
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 949
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 950
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_1
    move v6, v5

    .line 957
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 292
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 302
    return v1

    :cond_0
    move v2, v4

    .line 292
    goto :goto_0

    .line 297
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 301
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 324
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 325
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 326
    if-nez p3, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    .line 330
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    .end local v1    # "result":Z
    :goto_2
    if-eqz v1, :cond_2

    :goto_3
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 336
    return v1

    :cond_0
    move v2, v4

    .line 325
    goto :goto_0

    :cond_1
    move v2, v4

    .line 326
    goto :goto_1

    .line 331
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_2
    move v4, v3

    .line 335
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[C)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 82
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 83
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 94
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 82
    goto :goto_0

    .line 89
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 93
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [C
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 118
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 119
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 120
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 122
    const/4 v2, 0x0

    .line 125
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 130
    .end local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 131
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 118
    goto :goto_0

    :cond_1
    move v3, v5

    .line 119
    goto :goto_1

    .line 126
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_2
    move v5, v4

    .line 130
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[D)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 676
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 677
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 678
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 679
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 680
    const/4 v2, 0x0

    .line 683
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 688
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 689
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 677
    goto :goto_0

    .line 684
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 688
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[DLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [D
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 711
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 712
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 713
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 714
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 715
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 716
    const/4 v2, 0x0

    .line 719
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 724
    .end local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 725
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 712
    goto :goto_0

    :cond_1
    move v3, v5

    .line 713
    goto :goto_1

    .line 720
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_2
    move v5, v4

    .line 724
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[I)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 418
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 419
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 421
    const/4 v2, 0x0

    .line 424
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 429
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 430
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 418
    goto :goto_0

    .line 425
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 429
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 452
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 453
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 454
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 455
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 456
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 457
    const/4 v2, 0x0

    .line 460
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 465
    .end local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 466
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 453
    goto :goto_0

    :cond_1
    move v3, v5

    .line 454
    goto :goto_1

    .line 461
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_2
    move v5, v4

    .line 465
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[J)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 547
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 548
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 549
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 550
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 551
    const/4 v2, 0x0

    .line 554
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 559
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 560
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 548
    goto :goto_0

    .line 555
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 559
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[JLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [J
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 582
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 583
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 584
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 585
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 586
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 587
    const/4 v2, 0x0

    .line 590
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 595
    .end local v2    # "result":Z
    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 596
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 583
    goto :goto_0

    :cond_1
    move v3, v5

    .line 584
    goto :goto_1

    .line 591
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_2
    move v5, v4

    .line 595
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[Z)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 821
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 822
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 823
    array-length v4, p2

    new-array v0, v4, [B

    .line 824
    .local v0, "dataInBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 825
    aget-boolean v4, p2, v2

    if-eqz v4, :cond_1

    .line 826
    aput-byte v5, v0, v2

    .line 824
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "dataInBytes":[B
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 822
    goto :goto_0

    .line 828
    .restart local v0    # "dataInBytes":[B
    .restart local v2    # "i":I
    :cond_1
    aput-byte v6, v0, v2

    goto :goto_2

    .line 831
    :cond_2
    const/4 v3, 0x0

    .line 834
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 839
    .end local v3    # "result":Z
    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 840
    return v3

    .line 835
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_3
    move v6, v5

    .line 839
    goto :goto_4
.end method

.method public put(Ljava/lang/String;[ZLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 862
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 863
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 864
    if-nez p3, :cond_1

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 865
    array-length v4, p2

    new-array v0, v4, [B

    .line 866
    .local v0, "dataInBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 867
    aget-boolean v4, p2, v2

    if-eqz v4, :cond_2

    .line 868
    aput-byte v5, v0, v2

    .line 866
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "dataInBytes":[B
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 863
    goto :goto_0

    :cond_1
    move v4, v6

    .line 864
    goto :goto_1

    .line 870
    .restart local v0    # "dataInBytes":[B
    .restart local v2    # "i":I
    :cond_2
    aput-byte v6, v0, v2

    goto :goto_3

    .line 873
    :cond_3
    const/4 v3, 0x0

    .line 876
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 881
    .end local v3    # "result":Z
    :goto_4
    if-eqz v3, :cond_4

    :goto_5
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 882
    return v3

    .line 877
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_4
    move v6, v5

    .line 881
    goto :goto_5
.end method
