.class public Lcom/android/server/enterprise/utils/SSOTypeMapData;
.super Ljava/lang/Object;
.source "SSOTypeMapData.java"


# instance fields
.field public clientId:I

.field public containerId:I

.field public packageName:Ljava/lang/String;

.field public ssoInterface:Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ssoInterface"    # Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->clientId:I

    .line 48
    iput p2, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->containerId:I

    .line 49
    iput-object p3, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->packageName:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->ssoInterface:Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .line 46
    return-void
.end method


# virtual methods
.method public getClientId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->clientId:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->containerId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->ssoInterface:Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    return-object v0
.end method

.method public setClientId(I)V
    .locals 0
    .param p1, "clientId"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->clientId:I

    .line 57
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .param p1, "containerId"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->containerId:I

    .line 65
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->packageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSSOInterface(Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V
    .locals 0
    .param p1, "ssoInterface"    # Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/utils/SSOTypeMapData;->ssoInterface:Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .line 81
    return-void
.end method
