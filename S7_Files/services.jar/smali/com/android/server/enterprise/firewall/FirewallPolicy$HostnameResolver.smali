.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    .line 2132
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2136
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2137
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 2138
    .local v1, "hostname":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 2140
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    .line 2146
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2147
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 2149
    return-object v4

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2143
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v2

    .line 2144
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    .line 2143
    throw v2

    .line 2146
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected isFinished()Z
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return v0
.end method
