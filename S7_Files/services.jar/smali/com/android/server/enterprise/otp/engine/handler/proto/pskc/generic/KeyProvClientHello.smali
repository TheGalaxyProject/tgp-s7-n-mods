.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
.super Ljava/lang/Object;
.source "KeyProvClientHello.java"


# instance fields
.field private authenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

.field private deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field private keyID:[B

.field private prefixDS:Ljava/lang/String;

.field private prefixDSKPP:Ljava/lang/String;

.field private prefixPKCS5:Ljava/lang/String;

.field private prefixPSKC:Ljava/lang/String;

.field private prefixXENC:Ljava/lang/String;

.field private protocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

.field private supportedEncryptionAlgorithms:Ljava/lang/String;

.field private supportedKeyPackageFormat:Ljava/lang/String;

.field private supportedKeyTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedMacAlgorithms:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->authenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->keyID:[B

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->keyID:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    return-object v1
.end method

.method public getPrefixDS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixDS:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPKCS5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixPKCS5:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixXENC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixXENC:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->protocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedEncryptionAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyPackageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedKeyPackageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedKeyTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedMacAlgorithms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedMacAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    .locals 0
    .param p1, "authenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->authenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .line 55
    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .line 123
    return-void
.end method

.method public setKeyID(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyID"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 68
    .local v0, "keyIdBytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->keyID:[B

    .line 66
    return-void
.end method

.method public setPrefixDS(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixDS"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixDS:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixDSKPP"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixDSKPP:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPrefixPKCS5(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixPKCS5"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixPKCS5:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixPSKC"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixPSKC:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPrefixXENC(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixXENC"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->prefixXENC:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setProtocolVariant(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;)V
    .locals 0
    .param p1, "protocolVariant"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->protocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    .line 39
    return-void
.end method

.method public setSupportedEncryptionAlgorithms(Ljava/lang/String;)V
    .locals 0
    .param p1, "supportedEncryptionAlgorithms"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedEncryptionAlgorithms:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSupportedKeyPackageFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "supportedKeyPackageFormat"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedKeyPackageFormat:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSupportedKeyTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "supportedKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedKeyTypes:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public setSupportedMacAlgorithms(Ljava/lang/String;)V
    .locals 0
    .param p1, "supportedMacAlgorithms"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->supportedMacAlgorithms:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->version:Ljava/lang/String;

    .line 47
    return-void
.end method
