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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    invoke-virtual {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->setKey([B)V

    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    iget-object v2, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v4, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    return-void
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    return-object v0
.end method

.method public setKey([B)V
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
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->clearKey()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionProvisionKey;->keyData:[B

    return-void

    :cond_2
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;

    const-string/jumbo v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorageOption$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
