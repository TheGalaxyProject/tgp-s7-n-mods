.class public Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
.super Ljava/lang/Thread;
.source "SocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final DBG:Z

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "SocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private appendCredentialsForConnection:Z

.field private from:Ljava/io/InputStream;

.field private fromSocket:Ljava/net/Socket;

.field private mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

.field private protocolBasedUserCredentials:Ljava/lang/String;

.field private to:Ljava/io/OutputStream;

.field private toSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    .locals 1
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .param p3, "appendCredentials"    # Z
    .param p4, "userCredentials"    # Ljava/lang/String;
    .param p5, "authenticator"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 39
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->toSocket:Ljava/net/Socket;

    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->fromSocket:Ljava/net/Socket;

    .line 41
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    .line 42
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    .line 43
    iput-boolean p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    .line 44
    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->start()V

    .line 38
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private closeServerSocket(Ljava/net/Socket;)V
    .locals 3
    .param p1, "serverSocket"    # Ljava/net/Socket;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "SocketConnect"

    const-string/jumbo v2, "Exception occured while closing the serverSocket "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    .locals 10
    .param p0, "first"    # Ljava/net/Socket;
    .param p1, "second"    # Ljava/net/Socket;
    .param p2, "userCredentials"    # Ljava/lang/String;
    .param p3, "authenticator"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    .prologue
    const/4 v3, 0x0

    .line 165
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V

    .line 166
    .local v0, "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .local v1, "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 172
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    .end local v0    # "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .end local v1    # "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :goto_1
    return-void

    .line 169
    .restart local v0    # "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .restart local v1    # "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 173
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 177
    .end local v0    # "sc1":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .end local v1    # "sc2":Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v9

    .line 178
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "SocketConnect"

    const-string/jumbo v3, "SocketConnect.run() Exception:"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 175
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 176
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v2, "SocketConnect"

    const-string/jumbo v3, "SocketConnect.connect() IOException:"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private indexOf([B[B)I
    .locals 2
    .param p1, "source"    # [B
    .param p2, "match"    # [B

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-static {p1, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->startsWith([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    return v0

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string/jumbo v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 141
    const-string/jumbo v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 142
    const-string/jumbo v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 143
    const-string/jumbo v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 144
    const-string/jumbo v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 145
    const-string/jumbo v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 146
    const-string/jumbo v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 147
    const-string/jumbo v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 148
    const-string/jumbo v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    or-int/2addr v0, v1

    return v0
.end method

.method public static startsWith([BI[B)Z
    .locals 4
    .param p0, "source"    # [B
    .param p1, "offset"    # I
    .param p2, "match"    # [B

    .prologue
    const/4 v3, 0x0

    .line 55
    array-length v1, p2

    array-length v2, p0

    sub-int/2addr v2, p1

    if-le v1, v2, :cond_0

    .line 56
    return v3

    .line 59
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 60
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 61
    return v3

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static startsWith([B[B)Z
    .locals 1
    .param p0, "source"    # [B
    .param p1, "match"    # [B

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->startsWith([BI[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 79
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 82
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 83
    .local v6, "r":I
    if-gez v6, :cond_1

    .line 112
    const-string/jumbo v7, "SocketConnect"

    const-string/jumbo v8, "Closing from and to socket."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->from:Ljava/io/InputStream;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeInputStream(Ljava/io/InputStream;)V

    .line 114
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->fromSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 125
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->toSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 78
    .end local v6    # "r":I
    :goto_1
    return-void

    .line 86
    .restart local v6    # "r":I
    :cond_1
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    if-eqz v7, :cond_6

    .line 87
    const-string/jumbo v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->indexOf([B[B)I

    move-result v4

    .line 88
    .local v4, "firstLineIndex":I
    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Index of end of first line read from source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-lez v4, :cond_5

    .line 90
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v3, "firstLine":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "First Line detected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 96
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->protocolBasedUserCredentials:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Header request appended with credentials: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 100
    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Writing rest of the blob data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Remaining size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    sub-int v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x2

    sub-int v9, v6, v9

    invoke-virtual {v7, v0, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 116
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v4    # "firstLineIndex":I
    .end local v6    # "r":I
    :catch_0
    move-exception v5

    .line 117
    .local v5, "io":Ljava/io/IOException;
    :try_start_2
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SocketConnect.run() IOException: Flag set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->DBG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "SocketConnect"

    const-string/jumbo v8, "SocketConnect.run() IOException:"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->fromSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 125
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->toSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    goto/16 :goto_1

    .line 104
    .end local v5    # "io":Ljava/io/IOException;
    .restart local v4    # "firstLineIndex":I
    .restart local v6    # "r":I
    :cond_5
    :try_start_3
    const-string/jumbo v7, "SocketConnect"

    const-string/jumbo v8, "No first line. Passing it along."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 120
    .end local v4    # "firstLineIndex":I
    .end local v6    # "r":I
    :catch_1
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "SocketConnect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SocketConnect.run() Exception: Flag set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->appendCredentialsForConnection:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v7, "SocketConnect"

    const-string/jumbo v8, "SocketConnect.run() Exception:"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->fromSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 125
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->toSocket:Ljava/net/Socket;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    goto/16 :goto_1

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "r":I
    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 123
    .end local v6    # "r":I
    :catchall_0
    move-exception v7

    .line 124
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->fromSocket:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 125
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->toSocket:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->closeServerSocket(Ljava/net/Socket;)V

    .line 123
    throw v7
.end method
