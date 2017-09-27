.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;
.super Ljava/lang/Object;
.source "KeyInfoSignature.java"


# instance fields
.field private dsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

.field private id:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private mgmtData:Ljava/lang/String;

.field private pgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

.field private retrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

.field private rsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

.field private spkiSexp:[B

.field private x509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDsaKeyValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->dsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getMgmtData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mgmtData:Ljava/lang/String;

    return-object v0
.end method

.method public getPgpData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->pgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    return-object v0
.end method

.method public getRetrievalMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->retrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    return-object v0
.end method

.method public getRsaKeyValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->rsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    return-object v0
.end method

.method public getSpkiSexp()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->spkiSexp:[B

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->x509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public setDsaKeyValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;)V
    .locals 0
    .param p1, "dsaKeyValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->dsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->id:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->keyName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setMgmtData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mgmtData"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->mgmtData:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPgpData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;)V
    .locals 0
    .param p1, "pgpData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->pgpData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;

    .line 57
    return-void
.end method

.method public setRetrievalMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;)V
    .locals 0
    .param p1, "retrievalMethod"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->retrievalMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RetrievalMethod;

    .line 41
    return-void
.end method

.method public setRsaKeyValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;)V
    .locals 0
    .param p1, "rsaKeyValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->rsaKeyValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;

    .line 89
    return-void
.end method

.method public setSpkiSexp([B)V
    .locals 0
    .param p1, "spkiSexp"    # [B

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->spkiSexp:[B

    .line 65
    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .locals 0
    .param p1, "x509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;->x509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .line 49
    return-void
.end method
