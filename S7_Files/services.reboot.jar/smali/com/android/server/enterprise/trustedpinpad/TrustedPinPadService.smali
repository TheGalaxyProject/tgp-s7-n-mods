.class public Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;
.super Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;
.source "TrustedPinPadService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DBG:Z = true

.field private static final KNOX_TRUSTED_PINPAD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsTimaVersion30:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "TrustedPinPadService Service"

    sput-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 77
    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TIMA_SERVICE:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    .line 86
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TrustedPinPadService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 125
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    .line 108
    const-string/jumbo v1, "enterprise_policy"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    .line 139
    const-string/jumbo v2, "getCertificates - TIMA version does not support Trusted Pin Pad"

    .line 138
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 141
    const-string/jumbo v2, "TIMA version does not support Trusted Pin Pad"

    .line 140
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 146
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificates - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    return-object v0
.end method

.method public getSecretDimensions(Lcom/samsung/android/knox/ContextInfo;)[I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 216
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getSecretDimensions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_0

    .line 220
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    .line 221
    const-string/jumbo v2, "getSecretDimensions - TIMA version does not support Trusted Pin Pad"

    .line 220
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 223
    const-string/jumbo v2, "TIMA version does not support Trusted Pin Pad"

    .line 222
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    if-nez p1, :cond_1

    .line 228
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSecretDimensions - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v3

    .line 232
    :cond_1
    const/4 v0, 0x0

    .line 254
    .local v0, "dimensions":[I
    return-object v0
.end method

.method public launchTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "secretId"    # Ljava/lang/String;
    .param p4, "nonce"    # [B
    .param p5, "verify"    # Z
    .param p6, "minPinLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 314
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in launchTrustedPinPad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 318
    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    .line 321
    const-string/jumbo v1, "launchTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 323
    const-string/jumbo v1, "TIMA version does not support Trusted Pin Pad"

    .line 322
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 328
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "launchTrustedPinPad - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    if-eqz p4, :cond_1

    .line 345
    return-object v2
.end method

.method public loadTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 505
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 491
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 504
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 498
    return-void
.end method

.method public setPin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "tzAppName"    # Ljava/lang/String;
    .param p3, "pinBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 355
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    .line 362
    const-string/jumbo v1, "setPin - TIMA version does not include Trusted Pin Pad"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 364
    const-string/jumbo v1, "TIMA version does not support Trusted Pin Pad"

    .line 363
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 369
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPin - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    if-eqz p3, :cond_1

    .line 383
    return-object v2
.end method

.method public setSecretImage(Lcom/samsung/android/knox/ContextInfo;[BIILjava/lang/String;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "secretImageBuffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secretId"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public unloadTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method
