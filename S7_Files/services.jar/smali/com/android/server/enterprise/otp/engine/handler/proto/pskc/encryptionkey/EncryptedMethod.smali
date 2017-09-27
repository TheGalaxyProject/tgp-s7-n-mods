.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;
.super Ljava/lang/Object;
.source "EncryptedMethod.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private keySize:I

.field private oaepParams:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->keySize:I

    return v0
.end method

.method public getOaepParams()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->oaepParams:[B

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->algorithm:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->keySize:I

    .line 13
    return-void
.end method

.method public setOaepParams([B)V
    .locals 0
    .param p1, "oaepParams"    # [B

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->oaepParams:[B

    .line 21
    return-void
.end method
