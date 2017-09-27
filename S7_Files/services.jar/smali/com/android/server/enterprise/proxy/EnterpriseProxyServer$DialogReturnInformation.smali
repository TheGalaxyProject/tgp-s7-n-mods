.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogReturnInformation"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->bundle:Landroid/os/Bundle;

    .line 1039
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 1037
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCallback()Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    return-object v0
.end method
