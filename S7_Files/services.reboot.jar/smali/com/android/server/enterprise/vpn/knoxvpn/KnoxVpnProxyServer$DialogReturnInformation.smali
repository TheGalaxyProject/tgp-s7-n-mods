.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogReturnInformation"
.end annotation


# instance fields
.field callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    .prologue
    const/4 v0, 0x0

    .line 1190
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    .line 1188
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    .line 1191
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    .line 1192
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    .line 1190
    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    return-object v0
.end method
