.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 1292
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1291
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 1297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 1298
    .local v4, "data":Landroid/os/Bundle;
    const-string/jumbo v12, "command"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1301
    .local v10, "type":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v3, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1303
    .local v2, "commandArray":[Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1305
    .local v9, "result":Ljava/lang/String;
    array-length v12, v2

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v1, v2, v11

    .line 1306
    .local v1, "commandArg":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1310
    .end local v1    # "commandArg":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v11

    .line 1311
    const/4 v12, 0x1

    .line 1310
    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 1313
    .local v8, "process":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 1314
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v11, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-wrap3(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1296
    .end local v8    # "process":Ljava/lang/Process;
    :goto_1
    return-void

    .line 1319
    :catch_0
    move-exception v6

    .line 1320
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "FirewallPolicy"

    const-string/jumbo v12, "Exception on CommandThread"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1317
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1318
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v11, "FirewallPolicy"

    const-string/jumbo v12, "InterruptedException iptables command failed "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1315
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v5

    .line 1316
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v11, "FirewallPolicy"

    const-string/jumbo v12, "IOException iptables command failed "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
