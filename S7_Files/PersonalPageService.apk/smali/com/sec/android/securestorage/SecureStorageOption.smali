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

    .prologue
    .line 43
    invoke-static {}, Lcom/sec/android/securestorage/SecureStorageJNI;->getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;

    move-result-object v0

    sput-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()I
    .locals 1

    .prologue
    .line 1062
    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    .prologue
    .line 1058
    sget-object v0, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decryptOption([BLcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 938
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 939
    const/4 v1, 0x0

    .line 942
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BB)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 947
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 948
    return-object v1

    :cond_0
    move v2, v4

    .line 938
    goto :goto_0

    .line 943
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 947
    goto :goto_2
.end method

.method public deleteOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 967
    const/4 v1, 0x0

    .line 970
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 975
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 976
    return v1

    .line 971
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public encryptOption([BLcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 909
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 910
    const/4 v1, 0x0

    .line 913
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BB)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 918
    .end local v1    # "result":[B
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 919
    return-object v1

    :cond_0
    move v2, v4

    .line 909
    goto :goto_0

    .line 914
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_1
    move v3, v4

    .line 918
    goto :goto_2
.end method

.method public eraseKey()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1030
    const/4 v1, 0x0

    .line 1033
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI;->eraseKey()Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1038
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 1039
    return v1

    .line 1034
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getBooleanArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 845
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 846
    const/4 v3, 0x0

    .line 849
    .local v3, "result":[B
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v4, p1, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 854
    .end local v3    # "result":[B
    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 855
    array-length v4, v3

    new-array v2, v4, [Z

    .line 856
    .local v2, "publicText":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 857
    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_1

    .line 858
    aput-boolean v5, v2, v1

    .line 856
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 850
    .end local v1    # "i":I
    .end local v2    # "publicText":[Z
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":[B
    :cond_0
    move v4, v6

    .line 854
    goto :goto_1

    .line 860
    .restart local v1    # "i":I
    .restart local v2    # "publicText":[Z
    :cond_1
    aput-boolean v6, v2, v1

    goto :goto_3

    .line 863
    :cond_2
    return-object v2
.end method

.method public getBooleanOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 881
    const/4 v1, 0x0

    .line 884
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 889
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 890
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 885
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 889
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[B
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x0

    .line 583
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 588
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 589
    return-object v1

    .line 584
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)B
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 607
    const/4 v1, 0x0

    .line 610
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 615
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v4, "Error: input data are incorrect"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 616
    aget-byte v2, v1, v3

    return v2

    .line 611
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    move v2, v3

    .line 615
    goto :goto_1
.end method

.method public getCharArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[C
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 518
    const/4 v4, 0x0

    .line 521
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 526
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 527
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 528
    .local v3, "publicText":[C
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 529
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 522
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[C
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 535
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[C
    :cond_1
    return-object v3
.end method

.method public getCharOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)C
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 553
    const/4 v1, 0x0

    .line 556
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 561
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 562
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    .line 557
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDoubleArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[D
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 784
    const/4 v4, 0x0

    .line 787
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 792
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 793
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    .line 794
    .local v3, "publicText":[D
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 795
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 798
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 788
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[D
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 801
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[D
    :cond_1
    return-object v3
.end method

.method public getDoubleOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)D
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 819
    const/4 v1, 0x0

    .line 822
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 827
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 828
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2

    .line 823
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getIntArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[I
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 634
    const/4 v4, 0x0

    .line 637
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 642
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 643
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    .line 644
    .local v3, "publicText":[I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 645
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 648
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 638
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[I
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 651
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[I
    :cond_1
    return-object v3
.end method

.method public getIntOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)I
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 669
    const/4 v1, 0x0

    .line 672
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 677
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 678
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    .line 673
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLongArrayOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)[J
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 696
    const/4 v4, 0x0

    .line 699
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 704
    .end local v4    # "result":[B
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 705
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    .line 706
    .local v3, "publicText":[J
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 707
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 708
    const/4 v2, 0x0

    .line 709
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 710
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 700
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[J
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v4    # "result":[B
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 713
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[J
    :cond_1
    return-object v3
.end method

.method public getLongOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)J
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x0

    .line 734
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 738
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 739
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 735
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStringOption(Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Ljava/lang/String;
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 757
    const/4 v1, 0x0

    .line 760
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p2}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 765
    .end local v1    # "result":[B
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 766
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 761
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":[B
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

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1013
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI;->isKeyProvisioned()Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1018
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 1019
    return v1

    .line 1014
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public provisionKey(Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;)Z
    .locals 4
    .param p1, "pKey"    # Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 990
    const/4 v1, 0x0

    .line 993
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p1}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->getKey()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->provisionKey([B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 998
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 999
    return v1

    .line 994
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;BLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # B
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    .line 218
    .local v1, "result":Z
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

    .line 223
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 224
    return v1

    .line 219
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    move v2, v3

    .line 223
    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;CLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # C
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    .line 120
    .local v1, "result":Z
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

    .line 125
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 126
    return v1

    .line 121
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;DLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # D
    .param p4, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 420
    .local v2, "result":Z
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

    .line 425
    .end local v2    # "result":Z
    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 426
    return v2

    .line 421
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;ILcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # I
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x0

    .line 285
    .local v1, "result":Z
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

    .line 290
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 291
    return v1

    .line 286
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;JLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # J
    .param p4, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x0

    .line 352
    .local v1, "result":Z
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

    .line 357
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 358
    return v1

    .line 353
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Ljava/lang/String;
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 149
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    .line 153
    .local v1, "result":Z
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

    .line 158
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 159
    return v1

    :cond_0
    move v2, v4

    .line 149
    goto :goto_0

    .line 154
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 158
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;ZLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Z
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 494
    .local v2, "result":Z
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

    .line 499
    .end local v2    # "result":Z
    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 500
    return v2

    .line 495
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public putOption(Ljava/lang/String;[BLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [B
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 182
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v5

    invoke-virtual {v2, p1, p2, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    .end local v1    # "result":Z
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    const-string/jumbo v2, "Error: internal error"

    invoke-direct {p0, v4, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 192
    return v1

    :cond_0
    move v2, v4

    .line 182
    goto :goto_0

    .line 187
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v1    # "result":Z
    :cond_1
    move v4, v3

    .line 191
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[CLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [C
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 82
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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
    sget-object v3, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v3, p1, v6, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

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

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 93
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[DLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [D
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 380
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 381
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 382
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 384
    const/4 v2, 0x0

    .line 387
    .local v2, "result":Z
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

    .line 392
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 393
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 381
    goto :goto_0

    .line 388
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 392
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[ILcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [I
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 247
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 248
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 250
    const/4 v2, 0x0

    .line 253
    .local v2, "result":Z
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

    .line 258
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 259
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 247
    goto :goto_0

    .line 254
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 258
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[JLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [J
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 314
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 315
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 316
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 317
    const/4 v2, 0x0

    .line 320
    .local v2, "result":Z
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

    .line 325
    .end local v2    # "result":Z
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    const-string/jumbo v3, "Error: internal error"

    invoke-direct {p0, v5, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 326
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 314
    goto :goto_0

    .line 321
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v2    # "result":Z
    :cond_1
    move v5, v4

    .line 325
    goto :goto_2
.end method

.method public putOption(Ljava/lang/String;[ZLcom/sec/android/securestorage/SecureStorageOptionFlag;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [Z
    .param p3, "inOptionFlag"    # Lcom/sec/android/securestorage/SecureStorageOptionFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 448
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(Ljava/lang/String;)V

    .line 449
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 450
    array-length v4, p2

    new-array v0, v4, [B

    .line 451
    .local v0, "dataInBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 452
    aget-boolean v4, p2, v2

    if-eqz v4, :cond_1

    .line 453
    aput-byte v5, v0, v2

    .line 451
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "dataInBytes":[B
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 449
    goto :goto_0

    .line 455
    .restart local v0    # "dataInBytes":[B
    .restart local v2    # "i":I
    :cond_1
    aput-byte v6, v0, v2

    goto :goto_2

    .line 458
    :cond_2
    const/4 v3, 0x0

    .line 461
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorageOption;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {p3}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->getFlag()B

    move-result v7

    invoke-virtual {v4, p1, v0, v7}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BB)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 466
    .end local v3    # "result":Z
    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    const-string/jumbo v4, "Error: internal error"

    invoke-direct {p0, v6, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwException(ZLjava/lang/String;)V

    .line 467
    return v3

    .line 462
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorageOption;->throwJNIException(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    .end local v3    # "result":Z
    :cond_3
    move v6, v5

    .line 466
    goto :goto_4
.end method
