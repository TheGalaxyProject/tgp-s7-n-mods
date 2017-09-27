.class public Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;
.super Ljava/lang/Object;
.source "NoCredentialsAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "NoCredentialsAuthenticator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 44
    const-string/jumbo v0, "NoCredentialsAuthenticator"

    const-string/jumbo v1, "Called buildAuthenticationHeader on NoCredentialsAuthenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should not call buildAuthenticationHeader on this authenticator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "NoCredentials"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .locals 2
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "NoCredentialsAuthenticator"

    const-string/jumbo v1, "Called verifyAuthenticationCredentials on NoCredentialsAuthenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should not call verifyAuthenticationCredentials on this authenticator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
