.class public Lcom/android/server/enterprise/ucm/UniversalCCMManager;
.super Ljava/lang/Object;
.source "UniversalCCMManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "UniversalCCMManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private declared-synchronized getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 34
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "addPackagesToWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "clearWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public configureCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 38
    sget-boolean v6, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 39
    const-string/jumbo v6, "UniversalCCMManager"

    const-string/jumbo v7, "configureCredentialStorage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 41
    const-string/jumbo v6, "UniversalCCMManager"

    const-string/jumbo v7, "CCM Service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v9

    .line 45
    :cond_1
    if-nez p2, :cond_2

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "UniversalCCMManager"

    const-string/jumbo v7, "deleteCCMProfile is failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    :goto_0
    return v9

    .line 53
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Lcom/samsung/android/knox/keystore/CCMProfile;

    invoke-direct {v1}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>()V

    .line 54
    .local v1, "ccmProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    const-string/jumbo v6, "auth_type"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "accessType":I
    const/16 v6, 0x64

    if-ne v0, v6, :cond_3

    .line 56
    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v6, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 58
    :cond_3
    const-string/jumbo v6, "packageList"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 59
    .local v4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v6, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 60
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 61
    const-string/jumbo v7, "UniversalCCMManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageList : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v3    # "i":I
    :cond_4
    const-string/jumbo v6, "whiteListAllPackages"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 65
    .local v5, "whiteListAllPackages":Z
    const-string/jumbo v6, "UniversalCCMManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "whiteListAllPackages : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v4, :cond_5

    .line 68
    iput-object v4, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    .line 70
    :cond_5
    iput-boolean v5, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 73
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v6

    invoke-interface {v6, p1, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    return v6

    .line 74
    :catch_1
    move-exception v2

    .line 75
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "UniversalCCMManager"

    const-string/jumbo v7, "setCCMProfile is failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-boolean v1, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "UniversalCCMManager"

    const-string/jumbo v2, "deleteCertificate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 267
    const-string/jumbo v1, "UniversalCCMManager"

    const-string/jumbo v2, "CCM Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UniversalCCMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteCertificate is failed - alias : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    const/4 v1, 0x0

    return v1
.end method

.method public getAliases(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getAliases"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    return-object v2
.end method

.method public getAliasesAsUser(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getAliasesAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    return-object v2
.end method

.method public getAliasesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p1, "packageUid"    # I

    .prologue
    const/4 v2, 0x0

    .line 193
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getAliasesForUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    return-object v2
.end method

.method public getCredentialStorageConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 83
    sget-boolean v5, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 84
    const-string/jumbo v5, "UniversalCCMManager"

    const-string/jumbo v6, "getCredentialStorageConfiguration"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 86
    const-string/jumbo v5, "UniversalCCMManager"

    const-string/jumbo v6, "CCM Service is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v7

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, "ccmProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .end local v1    # "ccmProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    :goto_0
    if-nez v1, :cond_2

    .line 97
    return-object v7

    .line 92
    .restart local v1    # "ccmProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "UniversalCCMManager"

    const-string/jumbo v6, "getCCMProfile is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1    # "ccmProfile":Lcom/samsung/android/knox/keystore/CCMProfile;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-ne v5, v6, :cond_3

    .line 101
    const-string/jumbo v5, "auth_type"

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_3
    iget-boolean v4, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 103
    .local v4, "whiteListAllPackages":Z
    const-string/jumbo v5, "whiteListAllPackages"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    .line 105
    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "packageList"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    return-object v0
.end method

.method public getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 175
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getCredentialStorages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    return-object v2
.end method

.method public getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 202
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getDefaultInstallStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 205
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    return-object v2
.end method

.method public getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getPackagesFromWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromWhiteListAsUser(ILandroid/os/Bundle;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getPackagesFromWhiteListAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    return-object v2
.end method

.method public getStorageAuthenticationType(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getStorageAuthenticationType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getStorageOption(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getStorageOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 320
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getStorageOptionAsUser(II)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageUid"    # I

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getStorageOptionAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 299
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "getSupportedAlgorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 302
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    return-object v2
.end method

.method public installCertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certBytes"    # [B
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "privateKeyPassword"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 221
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 222
    const-string/jumbo v9, "UniversalCCMManager"

    const-string/jumbo v10, "installCertificate"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    if-nez v9, :cond_1

    .line 224
    const-string/jumbo v9, "UniversalCCMManager"

    const-string/jumbo v10, "CCM Service is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v9, 0x0

    return v9

    .line 228
    :cond_1
    const-string/jumbo v9, "isCSRResonse"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 229
    .local v7, "isCSRResonse":Z
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "UniversalCCMManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCSRResonse : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    const-string/jumbo v9, "packageList"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 231
    .local v8, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 232
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 233
    const-string/jumbo v10, "UniversalCCMManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packagelist : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v6    # "i":I
    :cond_3
    const-string/jumbo v9, "allowWiFi"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 237
    .local v3, "allowWiFi":Z
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "UniversalCCMManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "allowWiFi : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_4
    const-string/jumbo v9, "allowAllPackages"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 239
    .local v1, "allowAllPackages":Z
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "UniversalCCMManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "allowAllPackages : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_5
    const-string/jumbo v9, "allowRawSigning"

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 241
    .local v2, "allowRawSigning":Z
    sget-boolean v9, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "UniversalCCMManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "allowRawSigning : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_6
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 245
    .local v4, "cp":Lcom/samsung/android/knox/keystore/CertificateProfile;
    iput-object p3, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 246
    iput-boolean v7, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 247
    if-eqz v8, :cond_7

    .line 248
    iput-object v8, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 249
    :cond_7
    iput-boolean v3, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 250
    iput-boolean v1, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 251
    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    .line 254
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-interface {v9, p1, v4, p2, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    return v9

    .line 255
    :catch_0
    move-exception v5

    .line 256
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "UniversalCCMManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "installCertificate is failed - alias : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    const/4 v9, 0x0

    return v9
.end method

.method public isCertificateAccessAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "isCertificateAccessAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCredentialStorageEnabledAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "isCredentialStorageEnabledAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "removePackagesFromWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "setDefaultInstallStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setStorageOption(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "option"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 309
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "setStorageOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ucm/UniversalCCMManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 311
    const-string/jumbo v0, "UniversalCCMManager"

    const-string/jumbo v1, "CCM Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
