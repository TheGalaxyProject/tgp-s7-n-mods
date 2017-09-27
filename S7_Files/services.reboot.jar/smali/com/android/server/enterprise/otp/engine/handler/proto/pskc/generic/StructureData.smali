.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
.super Ljava/lang/Object;
.source "StructureData.java"


# instance fields
.field encryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

.field plainValue:Ljava/lang/String;

.field valueMac:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->encryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    return-object v0
.end method

.method public getPlainValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->plainValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueMAC()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->valueMac:[B

    return-object v0
.end method

.method public setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V
    .locals 0
    .param p1, "encryptedValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->encryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    .line 32
    return-void
.end method

.method public setPlainValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "plainValue"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->plainValue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setValueMAC(Ljava/lang/String;)V
    .locals 1
    .param p1, "valueMAC"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->valueMac:[B

    .line 40
    return-void
.end method
