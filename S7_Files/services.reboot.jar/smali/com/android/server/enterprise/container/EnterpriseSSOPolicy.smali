.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    }
.end annotation


# static fields
.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_1."

.field private static final CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field private static final CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field private static final DBG:Z = true

.field private static final DBG2:Z

.field private static final EMPTY_SIZE:I = 0x0

.field private static final INTENT_SSO_SERVICE_DISCONNECTED:Ljava/lang/String; = "sso.enterprise.container.disconnected"

.field private static final INTENT_SSO_SERVICE_SETUP_SUCCESS:Ljava/lang/String; = "sso.enterprise.container.setup.success"

.field private static LOCAL_FILE_PATH:Ljava/lang/String;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;",
            ">;"
        }
    .end annotation
.end field

.field private static mSSOTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/utils/SSOTypeMapData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_1:I

.field private final CONTAINER_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_ACTION_SSO_SERVICE2:Ljava/lang/String;

.field private final SSO_BIND_FAILURE:I

.field private final SSO_BIND_RESULT_DUPLICATE_REQ:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

.field private final SSO_TYPE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWNAPI:Ljava/lang/String;

.field cSignConnect1:Landroid/content/ServiceConnection;

.field private clientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueueKnox2:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;",
            ">;"
        }
    .end annotation
.end field

.field private mBReciever:Landroid/content/BroadcastReceiver;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

.field private mSSOServiceInitialized:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG2:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z
    .locals 1
    .param p1, "containerID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)V
    .locals 0
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG2:Z

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    .line 140
    const-string/jumbo v0, "/data/system/"

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 378
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;-><init>()V

    .line 107
    const-string/jumbo v0, "EnterpriseSSOPolicyService"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TAG:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "API Not Supported"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->UNKNOWNAPI:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "com.samsung.safe.auth.mgmt2"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_ACTION_SSO_SERVICE2:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "sec_container_1.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_TYPE_VALUE:I

    .line 120
    iput v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_SUCCESS:I

    .line 121
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_FAILURE:I

    .line 122
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_1:I

    .line 123
    iput v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    .line 124
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_DUPLICATE_REQ:I

    .line 127
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->interfaceQueueKnox2:Ljava/util/concurrent/BlockingQueue;

    .line 132
    iput-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 133
    iput-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    .line 141
    iput-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 163
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    .line 1712
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    invoke-direct {v0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 380
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->registerReciever()V

    .line 384
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 378
    return-void
.end method

.method private TakeInterfaceOnBlockingQueueKnox2(IILjava/lang/String;)Z
    .locals 11
    .param p1, "clientId"    # I
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "bTakeInterface":Z
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, ">>>> TakeInterfaceOnBlockingQueueKnox2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v6, 0x0

    .line 266
    .local v6, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->interfaceQueueKnox2:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x3e8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v6    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :goto_0
    if-nez v6, :cond_0

    .line 272
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, "get SSO Interface failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v2

    .line 267
    .restart local v6    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v3

    .line 268
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, "InterruptedException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_0
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v5, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    invoke-direct {v5, p1, p2, p3, v6}, Lcom/android/server/enterprise/utils/SSOTypeMapData;-><init>(IILjava/lang/String;Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V

    .line 280
    .local v5, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->updateClintEntry(ILjava/lang/String;)V

    .line 285
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onServiceConnected -  ContainerId   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onServiceConnected -  PackageName   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onServiceConnected -  clientId   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ssoInterface : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "sso.enterprise.container.setup.success"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, "mIntent":Landroid/content/Intent;
    const-string/jumbo v7, "containerid"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string/jumbo v7, "packageName"

    invoke-virtual {v4, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 298
    const/4 v2, 0x1

    .line 299
    return v2
.end method

.method private bindSSOInterfaces(I)I
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    .line 203
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindSSOInterfaces - containerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    .line 206
    .local v3, "result":I
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 207
    .local v2, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 222
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindSSOInterfaces(). default case. result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return v3

    .line 209
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-nez v4, :cond_1

    .line 210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 211
    .local v0, "backupUID":J
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "sec_container_1.com.samsung.safe.auth.mgmt"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const/4 v3, 0x1

    .line 214
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 217
    .end local v0    # "backupUID":J
    :cond_1
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "ssoInterface already connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x2

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private bindSSOInterfaces(IILjava/lang/String;)I
    .locals 10
    .param p1, "clientId"    # I
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindSSOInterfaces - clientId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindSSOInterfaces - containerID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v5, 0x0

    .line 237
    .local v5, "result":I
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 238
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 240
    .local v6, "uHandle":Landroid/os/UserHandle;
    new-instance v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)V

    .line 241
    .local v3, "cSSOConnect":Landroid/content/ServiceConnection;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.safe.auth.mgmt2"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 245
    .local v0, "backupUID":J
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->interfaceQueueKnox2:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 246
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v3, v8, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TakeInterfaceOnBlockingQueueKnox2(IILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 248
    const/4 v5, 0x1

    .line 254
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    .end local v0    # "backupUID":J
    .end local v3    # "cSSOConnect":Landroid/content/ServiceConnection;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "uHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 257
    return v5

    .line 250
    .restart local v0    # "backupUID":J
    .restart local v3    # "cSSOConnect":Landroid/content/ServiceConnection;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "uHandle":Landroid/os/UserHandle;
    :cond_1
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, "TakeInterfaceOnBlockingQueue failed!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, "bindService failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized bindSSOInterfacesSync(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    monitor-enter p0

    .line 553
    :try_start_0
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, ">>>> bindSSOInterfacesSync"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v1

    .line 555
    .local v1, "bNewOrExistingClient":Z
    const/4 v5, 0x0

    .line 556
    .local v5, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v5    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 557
    .local v5, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 558
    const/4 v7, 0x1

    const/16 v8, 0xa

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 560
    if-nez v1, :cond_0

    const-string/jumbo v7, "com.centrify.sso.samsung"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "com.sec.android.service.singlesignon"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 561
    :cond_0
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 562
    .local v0, "bIsContainKey":Z
    if-eqz v0, :cond_1

    .line 563
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .line 565
    .local v4, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 566
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 565
    if-eqz v7, :cond_1

    .line 567
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, "bindSSOInterfacesSync() - already bound"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 569
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 570
    return-object v5

    .line 574
    .end local v4    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_1
    :try_start_1
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7, v8, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    move-result v6

    .line 575
    .local v6, "result":I
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindSSOInterfacesSync() containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " /  result of sso binding : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eq v10, v6, :cond_2

    const/4 v7, 0x2

    if-ne v7, v6, :cond_3

    .line 577
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 578
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "clientHandle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 581
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " bindSSOInterfacesSync: adding cilentHandle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    .line 583
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "bIsContainKey":Z
    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v6    # "result":I
    :cond_3
    :goto_0
    monitor-exit p0

    .line 600
    return-object v5

    .line 586
    .restart local v0    # "bIsContainKey":Z
    .restart local v2    # "clientHandle":Ljava/lang/String;
    .restart local v6    # "result":I
    :catch_0
    move-exception v3

    .line 587
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, " Exception occurred while trying to write to file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "bIsContainKey":Z
    .end local v1    # "bNewOrExistingClient":Z
    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v6    # "result":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 591
    .restart local v0    # "bIsContainKey":Z
    .restart local v1    # "bNewOrExistingClient":Z
    .restart local v2    # "clientHandle":Ljava/lang/String;
    .restart local v5    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v6    # "result":I
    :cond_4
    :try_start_4
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " bindSSOInterfacesSync: already present cilentHandle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v0    # "bIsContainKey":Z
    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v6    # "result":I
    :cond_5
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 597
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized bindSSOInterfacesWithClientsList(I)V
    .locals 17
    .param p1, "nContainerId"    # I

    .prologue
    monitor-enter p0

    .line 604
    :try_start_0
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, ">>>> bindSSOInterfacesWithClientsList"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-nez v14, :cond_0

    .line 606
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, "clientsList is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 607
    return-void

    .line 610
    :cond_0
    const/4 v2, 0x0

    .line 611
    .local v2, "bNeedBind":Z
    const/4 v5, -0x1

    .line 612
    .local v5, "clientUid":I
    const/4 v6, -0x1

    .line 613
    .local v6, "containerId":I
    :try_start_1
    const-string/jumbo v9, ""

    .line 615
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "clientInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 616
    .local v3, "clientInfo":Ljava/lang/String;
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "clientInfo : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 620
    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v14, "-"

    invoke-direct {v13, v3, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .local v13, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_2

    .line 622
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, "token count is not enough"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "bNeedBind":Z
    .end local v3    # "clientInfo":Ljava/lang/String;
    .end local v4    # "clientInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "clientUid":I
    .end local v6    # "containerId":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "tokenizer":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 627
    .restart local v2    # "bNeedBind":Z
    .restart local v3    # "clientInfo":Ljava/lang/String;
    .restart local v4    # "clientInfo$iterator":Ljava/util/Iterator;
    .restart local v5    # "clientUid":I
    .restart local v6    # "containerId":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v13    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, "strClientUid":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 629
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 630
    .local v12, "strContainerId":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 631
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 638
    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    .line 642
    :try_start_3
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Parse clientsList - clientUid is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Parse clientsList - ContainerId is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Parse clientsList - sso is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v14, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 648
    .local v1, "bIsContainKey":Z
    if-eqz v1, :cond_6

    .line 649
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "contain Uid : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v14, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .line 651
    .local v8, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v8}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v8}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v14

    if-ne v14, v6, :cond_5

    .line 652
    invoke-virtual {v8}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 651
    if-eqz v14, :cond_5

    .line 653
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, "Parse clientsList - SSO Service is already bound: "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x0

    .line 670
    .end local v1    # "bIsContainKey":Z
    .end local v3    # "clientInfo":Ljava/lang/String;
    .end local v8    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    .end local v11    # "strClientUid":Ljava/lang/String;
    .end local v12    # "strContainerId":Ljava/lang/String;
    .end local v13    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 671
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    move-result v10

    .line 672
    .local v10, "result":I
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bindSSOInterfaces result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v10    # "result":I
    :cond_4
    monitor-exit p0

    .line 603
    return-void

    .line 632
    .restart local v3    # "clientInfo":Ljava/lang/String;
    .restart local v13    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v7

    .line 633
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, "NumberFormatException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 656
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "bIsContainKey":Z
    .restart local v8    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    .restart local v11    # "strClientUid":Ljava/lang/String;
    .restart local v12    # "strContainerId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, "EnterpriseSSOPolicyService"

    const-string/jumbo v15, "clientUid is contained, but not matched, try bindSSOInterfaces"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    const/4 v2, 0x1

    goto :goto_1

    .line 664
    .end local v8    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_6
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private enforceEnterpriseSSOPermission()I
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 374
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 375
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "EnterpriseSSOPolicyService"

    const-string/jumbo v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    .line 146
    const-string/jumbo v1, "enterprise_policy"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    .locals 5
    .param p1, "containerID"    # I

    .prologue
    .line 1510
    const/4 v1, 0x0

    .line 1511
    .local v1, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1512
    .local v0, "bIsContainKey":Z
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Does container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has Key in mSSOInterfaceMap? result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    check-cast v1, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .line 1518
    :cond_0
    if-nez v1, :cond_1

    .line 1519
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSSOnterface - SSOnterface not registered for the containerID--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_1
    return-object v1
.end method

.method private isExistingOrFirstClient(II)Z
    .locals 6
    .param p1, "clientUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1453
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExistingOrFirstClient CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",containerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",  clientsList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v2, 0x1

    .line 1456
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1457
    .local v0, "item":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1459
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "isExistingOrFirstClient: got another client already in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v2, 0x0

    .line 1467
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1468
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "leaving isExistingOrNewClient "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v2

    .line 1463
    .restart local v0    # "item":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "isExistingOrFirstClient: got client in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSSOServiceInstalled(I)Z
    .locals 4
    .param p1, "containerID"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    return v3

    .line 410
    :cond_0
    return v3
.end method

.method private loadListFromFile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    const/4 v1, 0x0

    .line 1661
    .local v1, "f":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1662
    .local v5, "s":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1665
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ActionNameMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .line 1671
    .end local v4    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1672
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1673
    .end local v1    # "f":Ljava/io/FileInputStream;
    .local v2, "f":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1674
    .local v6, "s":Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .end local v5    # "s":Ljava/io/ObjectInputStream;
    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .local v5, "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 1684
    .end local v2    # "f":Ljava/io/FileInputStream;
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_1
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " After reading from File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 1686
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1659
    :cond_2
    return-void

    .line 1666
    .restart local v1    # "f":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .local v5, "s":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1677
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 1678
    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 1679
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1680
    :cond_4
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1677
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .local v1, "f":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    .restart local v6    # "s":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .local v5, "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private printArtifacts()V
    .locals 3

    .prologue
    .line 152
    const-string/jumbo v0, "EnterpriseSSOPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interface Map        :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v0, "EnterpriseSSOPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientsList Map      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private removeClintEntry(I)V
    .locals 7
    .param p1, "containerId"    # I

    .prologue
    .line 1691
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1692
    return-void

    .line 1693
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1695
    .local v3, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1696
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, "items":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1698
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "found entery to remove."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1695
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v2    # "items":[Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    :goto_1
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " after removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " Exception occurred while trying to write to file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateClintEntry(ILjava/lang/String;)V
    .locals 8
    .param p1, "ContainerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1615
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " updateClintEntry , cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pkgname :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v4, 0x0

    .line 1617
    .local v4, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "uid":Ljava/lang/String;
    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1618
    .local v1, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1619
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "-"

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .local v3, "toknizer":Ljava/util/StringTokenizer;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateClintEntry size of tokenizer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1622
    .local v4, "uid":Ljava/lang/String;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateClintEntry Uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "toknizer":Ljava/util/StringTokenizer;
    .end local v4    # "uid":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 1626
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    .line 1627
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :cond_2
    :goto_1
    return-void

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " Exception occurred while trying to write to file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private writeListToFile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    const/4 v3, 0x0

    .line 1638
    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1639
    .local v1, "f":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1641
    .local v5, "s":Ljava/io/ObjectOutputStream;
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Before Writing to File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ActionNameMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1645
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectOutputStream;

    .end local v1    # "f":Ljava/io/FileOutputStream;
    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1646
    .local v6, "s":Ljava/io/ObjectOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectOutputStream;
    .local v5, "s":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .local v1, "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 1655
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 1656
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1636
    :cond_1
    return-void

    .line 1647
    .local v1, "f":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .local v5, "s":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 1648
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 1649
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1651
    :cond_3
    const-string/jumbo v7, "EnterpriseSSOPolicyService"

    const-string/jumbo v8, " Exception occurred while trying to write into file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1647
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "s":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .local v1, "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "s":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectOutputStream;
    .local v5, "s":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public deleteSSOWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    .local p5, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "deleteSSOWhiteList called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CallerUID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / ConainerID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 879
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 880
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 881
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 882
    const/4 v7, 0x0

    .line 883
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 884
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 885
    const/4 v9, 0x1

    .line 886
    const/16 v10, 0xa

    .line 885
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 888
    if-nez p3, :cond_0

    .line 889
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " deleteSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 891
    return-object v7

    .line 894
    :cond_0
    if-nez p5, :cond_1

    .line 895
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " deleteSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 897
    return-object v7

    .line 900
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 903
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v2, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "mPackage$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 906
    .local v5, "mPackage":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 907
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "mPackage":Ljava/lang/String;
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 931
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v7

    .line 911
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 912
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v9, 0x1

    .line 914
    const/16 v10, 0x9

    .line 913
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 915
    return-object v7

    .line 918
    :cond_5
    const-string/jumbo v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "samsung"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 919
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 920
    .local v3, "deletePackageList":[Ljava/lang/String;
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    .line 921
    .local v8, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v8, :cond_3

    .line 922
    const/4 v9, 0x0

    invoke-interface {v8, v3, v9}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 923
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1

    .line 927
    .end local v3    # "deletePackageList":[Ljava/lang/String;
    .end local v8    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_7
    const/4 v9, 0x1

    .line 928
    const/4 v10, 0x1

    .line 927
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 935
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 936
    const/4 v7, 0x0

    .line 937
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 938
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 939
    const/4 v9, 0x1

    .line 940
    const/16 v10, 0xa

    .line 939
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 942
    iget-boolean v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v9, :cond_9

    .line 943
    return-object v7

    .line 947
    :cond_9
    if-nez p3, :cond_a

    .line 948
    :try_start_2
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " deleteSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v9, 0x1

    .line 950
    const/16 v10, 0x9

    .line 949
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 951
    return-object v7

    .line 954
    :cond_a
    if-nez p5, :cond_b

    .line 955
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " deleteSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v9, 0x1

    .line 957
    const/4 v10, 0x4

    .line 956
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 958
    return-object v7

    .line 961
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 964
    .local v1, "conPackageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "conPackageName":Ljava/lang/String;
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 965
    .restart local v5    # "mPackage":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 966
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sec_container_1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "sec_container_1."

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "conPackageName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 997
    .end local v1    # "conPackageName":Ljava/lang/String;
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "mPackage":Ljava/lang/String;
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 998
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_3
    return-object v7

    .line 971
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_e
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_f

    .line 972
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v9, 0x1

    .line 974
    const/16 v10, 0x9

    .line 973
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 975
    return-object v7

    .line 978
    :cond_f
    const-string/jumbo v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 979
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 981
    .restart local v3    # "deletePackageList":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 983
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v9, :cond_d

    .line 984
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 985
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3

    .line 993
    .end local v3    # "deletePackageList":[Ljava/lang/String;
    :cond_10
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 994
    const/4 v9, 0x1

    .line 995
    const/4 v10, 0x1

    .line 994
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public forceReauthenticate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 1193
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "forceReauthenticate called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1198
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1199
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1200
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1201
    const/4 v2, 0x0

    .line 1202
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1203
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1204
    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1207
    if-nez p3, :cond_0

    .line 1208
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " forceReauthenticate: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1210
    return-object v2

    .line 1213
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 1216
    :try_start_0
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1217
    :cond_1
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1218
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_2

    .line 1219
    invoke-interface {v3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1220
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1221
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " forceReauthenticate. CONTAINER_1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_2
    :goto_0
    return-object v2

    .line 1225
    :cond_3
    const/4 v4, 0x1

    .line 1226
    const/4 v5, 0x1

    .line 1225
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1234
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1235
    const/4 v2, 0x0

    .line 1236
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1237
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1241
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v4, :cond_5

    .line 1242
    return-object v2

    .line 1246
    :cond_5
    if-nez p3, :cond_6

    .line 1247
    :try_start_1
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " forceReauthenticate: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v4, 0x1

    .line 1249
    const/16 v5, 0x9

    .line 1248
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1250
    return-object v2

    .line 1253
    :cond_6
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1254
    packed-switch p2, :pswitch_data_0

    .line 1262
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " forceReauthenticate. default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_7
    :goto_1
    return-object v2

    .line 1256
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v4, :cond_7

    .line 1257
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1258
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1271
    :catch_1
    move-exception v1

    .line 1272
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1267
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v4, -0x1

    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1268
    const/4 v4, 0x1

    .line 1269
    const/4 v5, 0x1

    .line 1268
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppAllowedState(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "getAppAllowedState called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / ConainerID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1011
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1012
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1016
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1017
    const/4 v5, 0x1

    .line 1018
    const/16 v6, 0xa

    .line 1017
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1020
    if-nez p3, :cond_0

    .line 1021
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " getAppAllowedState: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1023
    return-object v3

    .line 1026
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1027
    :cond_1
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " getAppAllowedState: parameter packageName is Null or Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1029
    return-object v3

    .line 1032
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 1035
    :try_start_0
    const-string/jumbo v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "samsung"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1036
    :cond_3
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v4

    .line 1037
    .local v4, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v4, :cond_4

    .line 1038
    invoke-interface {v4, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1039
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1049
    .end local v4    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_4
    :goto_0
    return-object v3

    .line 1043
    :cond_5
    const/4 v5, 0x1

    .line 1044
    const/4 v6, 0x1

    .line 1043
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v2

    .line 1047
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1052
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1053
    const/4 v3, 0x0

    .line 1054
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1055
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1056
    const/4 v5, 0x1

    .line 1057
    const/16 v6, 0xa

    .line 1056
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1059
    iget-boolean v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v5, :cond_7

    .line 1060
    return-object v3

    .line 1064
    :cond_7
    if-nez p3, :cond_8

    .line 1065
    :try_start_1
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " getAppAllowedState: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v5, 0x1

    .line 1067
    const/16 v6, 0x9

    .line 1066
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1068
    return-object v3

    .line 1071
    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1072
    :cond_9
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " getAppAllowedState: parameter packageName is Null or Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v5, 0x1

    .line 1074
    const/4 v6, 0x4

    .line 1073
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1075
    return-object v3

    .line 1078
    :cond_a
    const/4 v1, 0x0

    .line 1079
    .local v1, "conPackageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sec_container_1."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sec_container_1."

    const-string/jumbo v7, ""

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "conPackageName":Ljava/lang/String;
    const-string/jumbo v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1082
    packed-switch p2, :pswitch_data_0

    .line 1090
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " getAppAllowedState. default"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v1    # "conPackageName":Ljava/lang/String;
    :cond_b
    :goto_1
    return-object v3

    .line 1084
    .restart local v1    # "conPackageName":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v5, :cond_b

    .line 1085
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v5, v1}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1086
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1098
    .end local v1    # "conPackageName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1099
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1095
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "conPackageName":Ljava/lang/String;
    :cond_c
    const/4 v5, 0x1

    .line 1096
    const/4 v6, 0x1

    .line 1095
    :try_start_2
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1082
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSSOCustomerId(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 678
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "getSSOCustomerId called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / ConainerID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 683
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 684
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 686
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 687
    const/4 v2, 0x0

    .line 688
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 689
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 690
    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 691
    return-object v2

    .line 693
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 694
    const/4 v2, 0x0

    .line 695
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 696
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/String;>;"
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 698
    const/16 v3, 0xa

    .line 697
    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 700
    iget-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v3, :cond_1

    .line 701
    return-object v2

    .line 705
    :cond_1
    if-nez p3, :cond_2

    .line 706
    :try_start_0
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " getSSOCustomerId: parameter type is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v3, 0x1

    .line 708
    const/16 v4, 0x9

    .line 707
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 709
    return-object v2

    .line 712
    :cond_2
    const-string/jumbo v3, "centrify"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 713
    packed-switch p2, :pswitch_data_0

    .line 721
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " getSSOCustomerId. default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3
    :goto_0
    return-object v2

    .line 715
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v3, :cond_3

    .line 716
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getCustomerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 717
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "Failed at EnterpriseSSOPolicy API getSSOCustomerId-Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "API Not Supported"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 727
    const/4 v3, 0x1

    .line 728
    const/4 v4, 0x1

    .line 727
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method getUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1729
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1730
    .local v0, "userId":I
    const-string/jumbo v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user Id  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v0
.end method

.method public isSSOReady(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1525
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1526
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside  isSSOReady in container:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1528
    const/4 v3, 0x0

    .line 1529
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1530
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1532
    const/16 v4, 0xa

    .line 1531
    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1534
    if-nez p3, :cond_0

    .line 1535
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " isSSOReady: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1538
    return-object v3

    .line 1541
    :cond_0
    const/4 v2, 0x0

    .line 1542
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1543
    const-string/jumbo v2, "com.centrify.sso.samsung"

    .line 1553
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, "clientHandle":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1555
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " isSSOReady: SSO for assigned type is not ready"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-object v3

    .line 1544
    .end local v0    # "clientHandle":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1545
    const-string/jumbo v2, "com.sec.android.service.singlesignon"

    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 1547
    .local v2, "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " isSSOReady: parameter type is wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1550
    return-object v3

    .line 1560
    .restart local v0    # "clientHandle":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    :cond_3
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1561
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1565
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1569
    :goto_2
    return-object v3

    .line 1563
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1566
    :catch_0
    move-exception v1

    .line 1567
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API isSSOReady-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1735
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1736
    const-string/jumbo v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enterprise SSO service is added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :goto_0
    return-void

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1421
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1426
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 1474
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside onPreAdminRemoval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1476
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1477
    .local v6, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1478
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1479
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1481
    .local v3, "item":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "-"

    invoke-direct {v8, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    .local v8, "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1483
    .local v5, "oldUid":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1484
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "ContainerId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1486
    .local v7, "sso":Ljava/lang/String;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "On admin removal, oldUid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", CtnrId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ssoService:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1489
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :goto_1
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " after removed mSSOInterfaceMap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1490
    :catch_0
    move-exception v2

    .line 1491
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " Exception occurred while trying to write to file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1500
    .end local v0    # "ContainerId":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "oldUid":Ljava/lang/String;
    .end local v7    # "sso":Ljava/lang/String;
    .end local v8    # "toknizer":Ljava/util/StringTokenizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1501
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "leaving onPreAdminRemoval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    return-void
.end method

.method public pushSSOData(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "dataBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1369
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "pushSSOData called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1374
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1375
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1378
    const/4 v2, 0x0

    .line 1379
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1380
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1382
    const/16 v4, 0xa

    .line 1381
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1384
    if-nez p3, :cond_0

    .line 1385
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " pushSSOData: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/16 v4, 0x9

    .line 1386
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1388
    return-object v2

    .line 1391
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 1394
    :try_start_0
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1395
    :cond_1
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1396
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_2

    .line 1397
    invoke-interface {v3, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->pushSSOData(Landroid/os/Bundle;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1398
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1408
    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_2
    :goto_0
    return-object v2

    .line 1402
    :cond_3
    const/4 v4, 0x1

    .line 1403
    const/4 v5, 0x1

    .line 1402
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API pushSSOData-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1410
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v2, 0x0

    .line 1411
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1413
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1416
    return-object v2
.end method

.method public registerReciever()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 305
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v6, "containerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "enterprise.container.setup.success"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "enterprise.container.uninstalled"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    return-void
.end method

.method public setCustomerInfo(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "companyName"    # Ljava/lang/String;
    .param p5, "logo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 1107
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "setCustomerInfo called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1112
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1115
    const/4 v2, 0x0

    .line 1116
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1117
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1119
    const/16 v4, 0xa

    .line 1118
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1121
    if-nez p3, :cond_0

    .line 1122
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " setCustomerInfo: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1124
    return-object v2

    .line 1127
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 1130
    :try_start_0
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1131
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1132
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_1

    .line 1133
    invoke-interface {v3, p4, p5}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1134
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1145
    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_1
    :goto_0
    return-object v2

    .line 1138
    :cond_2
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1139
    const/4 v4, 0x1

    .line 1140
    const/4 v5, 0x1

    .line 1139
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1147
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1148
    const/4 v2, 0x0

    .line 1149
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1150
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1152
    const/16 v4, 0xa

    .line 1151
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1154
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v4, :cond_4

    .line 1155
    return-object v2

    .line 1159
    :cond_4
    if-nez p3, :cond_5

    .line 1160
    :try_start_1
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " setCustomerInfo: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v4, 0x1

    .line 1162
    const/16 v5, 0x9

    .line 1161
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1163
    return-object v2

    .line 1166
    :cond_5
    const-string/jumbo v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1167
    packed-switch p2, :pswitch_data_0

    .line 1175
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " setCustomerInfo. default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_6
    :goto_1
    return-object v2

    .line 1169
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v4, :cond_6

    .line 1170
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v4, p4, p5}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1171
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1184
    :catch_1
    move-exception v1

    .line 1185
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1180
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, -0x1

    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1181
    const/4 v4, 0x1

    .line 1182
    const/4 v5, 0x1

    .line 1181
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSSOCustomerId(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 416
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "setSSOCustomerId - called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / ConainerID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 421
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 423
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 426
    if-nez p3, :cond_0

    .line 427
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " setSSOCustomerId: wrong parameter !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v8

    .line 431
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 433
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSSOCustomerId() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v2, 0x0

    .line 435
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 436
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 439
    return-object v2

    .line 441
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 444
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 446
    const/16 v3, 0xa

    .line 445
    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 448
    iget-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v3, :cond_2

    .line 449
    return-object v2

    .line 453
    :cond_2
    if-nez p3, :cond_3

    .line 454
    :try_start_0
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " setSSOCustomerId: wrong parameter !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v3, 0x1

    .line 456
    const/16 v4, 0x9

    .line 455
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 457
    return-object v2

    .line 460
    :cond_3
    const-string/jumbo v3, "centrify"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 461
    packed-switch p2, :pswitch_data_0

    .line 470
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " setSSOCustomerId. default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_4
    :goto_0
    return-object v2

    .line 463
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v3, :cond_4

    .line 464
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v3, p4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 465
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 466
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, " setSSOCustomerId. CONTAINER_1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseSSOPolicyService"

    const-string/jumbo v4, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v3, -0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 476
    const/4 v3, 0x1

    .line 477
    const/4 v4, 0x1

    .line 476
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSSOWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    .local p5, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "setSSOWhiteList called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CallerUID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / ConainerID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 745
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 746
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 748
    const/4 v7, 0x0

    .line 749
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 750
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 751
    const/4 v9, 0x1

    .line 752
    const/16 v10, 0xa

    .line 751
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 754
    if-nez p3, :cond_0

    .line 755
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " setSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 757
    return-object v7

    .line 760
    :cond_0
    if-nez p5, :cond_1

    .line 761
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " setSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 763
    return-object v7

    .line 766
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 769
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v3, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "mPackage$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 772
    .local v5, "mPackage":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 773
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "mPackage":Ljava/lang/String;
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 797
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "Failed at EnterpriseSSOPolicy API setSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v7

    .line 777
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 778
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "setSSOWhiteList: packageName list is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v9, 0x1

    .line 780
    const/16 v10, 0x9

    .line 779
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 781
    return-object v7

    .line 784
    :cond_5
    const-string/jumbo v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "samsung"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 785
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 786
    .local v0, "addPackageList":[Ljava/lang/String;
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    .line 787
    .local v8, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v8, :cond_3

    .line 788
    const/4 v9, 0x1

    invoke-interface {v8, v0, v9}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 789
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1

    .line 793
    .end local v0    # "addPackageList":[Ljava/lang/String;
    .end local v8    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_7
    const/4 v9, 0x1

    .line 794
    const/4 v10, 0x1

    .line 793
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 802
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 803
    const/4 v7, 0x0

    .line 804
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v7    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 805
    .local v7, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 806
    const/4 v9, 0x1

    .line 807
    const/16 v10, 0xa

    .line 806
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 809
    iget-boolean v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v9, :cond_9

    .line 810
    return-object v7

    .line 814
    :cond_9
    if-nez p3, :cond_a

    .line 815
    :try_start_2
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " setSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v9, 0x1

    .line 817
    const/16 v10, 0x9

    .line 816
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 818
    return-object v7

    .line 821
    :cond_a
    if-nez p5, :cond_b

    .line 822
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " setSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v9, 0x1

    .line 824
    const/4 v10, 0x4

    .line 823
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 825
    return-object v7

    .line 828
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 831
    .local v2, "conPackageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v2    # "conPackageName":Ljava/lang/String;
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 832
    .restart local v5    # "mPackage":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 833
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sec_container_1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "sec_container_1."

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "conPackageName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 865
    .end local v2    # "conPackageName":Ljava/lang/String;
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "mPackage":Ljava/lang/String;
    .end local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 866
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "Failed at EnterpriseSSOPolicy API setSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_3
    return-object v7

    .line 838
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "mPackage$iterator":Ljava/util/Iterator;
    :cond_e
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_f

    .line 839
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, "setSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v9, 0x1

    .line 841
    const/16 v10, 0x9

    .line 840
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 842
    return-object v7

    .line 845
    :cond_f
    const-string/jumbo v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 846
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 848
    .restart local v0    # "addPackageList":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 856
    const-string/jumbo v9, "EnterpriseSSOPolicyService"

    const-string/jumbo v10, " setSSOWhiteList. default"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 850
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v9, :cond_d

    .line 851
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v10, 0x1

    invoke-interface {v9, v0, v10}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 852
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3

    .line 861
    .end local v0    # "addPackageList":[Ljava/lang/String;
    :cond_10
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 862
    const/4 v9, 0x1

    .line 863
    const/4 v10, 0x1

    .line 862
    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setupSSO(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 488
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "setupSSO called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 494
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 495
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 499
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 504
    if-nez p3, :cond_0

    .line 505
    :try_start_0
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " setupSSO: parameter packageName is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v4, 0x1

    .line 507
    const/4 v5, 0x4

    .line 506
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 508
    return-object v2

    .line 510
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesSync(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 514
    :goto_0
    return-object v2

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v2    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 520
    .local v2, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 525
    if-nez p3, :cond_2

    .line 526
    :try_start_1
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, " setupSSO: parameter packageName is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v4, 0x1

    .line 528
    const/4 v5, 0x4

    .line 527
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 529
    return-object v2

    .line 532
    :cond_2
    const-string/jumbo v4, "com.centrify.sso.samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 533
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v3

    .line 534
    .local v3, "result":I
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupSSO() containerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " /  result of sso binding : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-eq v7, v3, :cond_3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_4

    .line 536
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 537
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 548
    .end local v3    # "result":I
    :cond_4
    :goto_1
    return-object v2

    .line 541
    :cond_5
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 542
    const/4 v4, 0x1

    .line 543
    const/4 v5, 0x1

    .line 542
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 545
    :catch_1
    move-exception v1

    .line 546
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1433
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "inside systemReady laoding list from file."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->loadListFromFile()V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1442
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1443
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1444
    .local v3, "items":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1445
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1446
    .local v0, "clientId":I
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {p0, v0, v7, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    move-result v4

    .line 1442
    .end local v0    # "clientId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1437
    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1438
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " Exception occurred while trying to read from file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1432
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public unenroll(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 1280
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "unenroll called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / ConainerID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " type= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " containerId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1285
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1286
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1287
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1288
    const/4 v3, 0x0

    .line 1289
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1290
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1291
    invoke-virtual {v3, v8, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1294
    if-nez p3, :cond_0

    .line 1295
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " unenroll: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1298
    return-object v3

    .line 1301
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfacesWithClientsList(I)V

    .line 1304
    :try_start_0
    const-string/jumbo v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "samsung"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1305
    :cond_1
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v4

    .line 1306
    .local v4, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v4, :cond_2

    .line 1307
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "calling unenroll on ssointerface.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-interface {v4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->unenroll()I

    move-result v2

    .line 1309
    .local v2, "res":I
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calling unenroll on ssointerface.. res= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1311
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1321
    .end local v2    # "res":I
    .end local v4    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_2
    :goto_0
    return-object v3

    .line 1315
    :cond_3
    const/4 v5, 0x1

    .line 1316
    const/4 v6, 0x1

    .line 1315
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v1

    .line 1319
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1323
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1324
    const/4 v3, 0x0

    .line 1325
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .end local v3    # "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>()V

    .line 1326
    .local v3, "responseData":Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;, "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1327
    invoke-virtual {v3, v8, v10}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1330
    iget-boolean v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v5, :cond_5

    .line 1331
    return-object v3

    .line 1335
    :cond_5
    if-nez p3, :cond_6

    .line 1336
    :try_start_1
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " unenroll: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v5, 0x1

    .line 1338
    const/16 v6, 0x9

    .line 1337
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V

    .line 1339
    return-object v3

    .line 1342
    :cond_6
    const-string/jumbo v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1343
    packed-switch p2, :pswitch_data_0

    .line 1351
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, " unenroll. default"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_7
    :goto_1
    return-object v3

    .line 1345
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v5, :cond_7

    .line 1346
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v5}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->unenroll()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1347
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1360
    :catch_1
    move-exception v1

    .line 1361
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseSSOPolicyService"

    const-string/jumbo v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1356
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v5, -0x1

    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1357
    const/4 v5, 0x1

    .line 1358
    const/4 v6, 0x1

    .line 1357
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
