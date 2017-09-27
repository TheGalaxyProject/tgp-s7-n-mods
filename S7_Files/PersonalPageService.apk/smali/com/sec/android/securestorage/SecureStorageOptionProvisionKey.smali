.class public Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;
.super Ljava/lang/Object;
.source "SecureStorageOptionProvisionKey.java"


# static fields
.field public static final SS_PROVISIONED_KEY_128:I = 0x10

.field public static final SS_PROVISIONED_KEY_192:I = 0x18

.field public static final SS_PROVISIONED_KEY_256:I = 0x20


# instance fields
.field private keyData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "inKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->setKey([B)V

    .line 36
    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    iget-object v2, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 81
    iput-object v4, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    .line 76
    return-void
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    return-object v0
.end method

.method public setKey([B)V
    .locals 2
    .param p1, "inKey"    # [B
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

    .line 55
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->clearKey()V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    .line 50
    return-void

    .line 55
    :cond_2
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 59
    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
