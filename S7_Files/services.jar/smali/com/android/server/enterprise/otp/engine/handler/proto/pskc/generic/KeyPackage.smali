.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
.super Ljava/lang/Object;
.source "KeyPackage.java"


# instance fields
.field cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

.field deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCryptoModule()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    return-object v0
.end method

.method public setCryptoModule(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;)V
    .locals 0
    .param p1, "cryptoModule"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->cryptoModule:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    .line 29
    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->deviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .line 21
    return-void
.end method

.method public setKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;)V
    .locals 0
    .param p1, "key"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->key:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    .line 13
    return-void
.end method
