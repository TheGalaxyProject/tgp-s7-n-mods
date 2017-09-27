.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$KnoxVpnFirewallHandler;
.super Landroid/os/Handler;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KnoxVpnFirewallHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 946
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 945
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 951
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    .line 954
    .local v9, "map":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 955
    .local v10, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 957
    .local v1, "br":Ljava/io/BufferedReader;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 950
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v10    # "process":Ljava/lang/Process;
    :goto_0
    return-void

    .line 959
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "process":Ljava/lang/Process;
    :pswitch_0
    const-string/jumbo v13, "command"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 963
    .local v3, "command":Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string/jumbo v13, ";"

    invoke-direct {v11, v3, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v11, "st":Ljava/util/StringTokenizer;
    move-object v2, v1

    .line 965
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v10    # "process":Ljava/lang/Process;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 966
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 969
    .local v12, "temp":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    move-object v2, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 970
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get0()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handle command : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v13, "sh"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    const-string/jumbo v13, "-c"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :try_start_0
    new-instance v13, Ljava/lang/ProcessBuilder;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v10

    .line 978
    .local v10, "process":Ljava/lang/Process;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get0()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "handle command : executed command"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get0()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "handle command : getting error stream"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "lineRead":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 983
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get0()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handle : error : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 986
    .end local v8    # "lineRead":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 987
    .end local v10    # "process":Ljava/lang/Process;
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vpn handle : iptable execute : IOException iptables command failed "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 994
    if-eqz v10, :cond_1

    .line 995
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 996
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 997
    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 998
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1002
    :catch_1
    move-exception v7

    .line 1003
    .local v7, "ioe":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 994
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "ioe":Ljava/lang/Exception;
    .restart local v8    # "lineRead":Ljava/lang/String;
    .restart local v10    # "process":Ljava/lang/Process;
    :cond_6
    if-eqz v10, :cond_1

    .line 995
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 996
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 997
    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 998
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1002
    :catch_2
    move-exception v7

    .line 1003
    .restart local v7    # "ioe":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 989
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "ioe":Ljava/lang/Exception;
    .end local v8    # "lineRead":Ljava/lang/String;
    .end local v10    # "process":Ljava/lang/Process;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 990
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 994
    if-eqz v10, :cond_1

    .line 995
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 996
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 997
    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 998
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 1002
    :catch_4
    move-exception v7

    .line 1003
    .restart local v7    # "ioe":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 992
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/lang/Exception;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v13

    move-object v1, v2

    .line 994
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v10, :cond_7

    .line 995
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 996
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 997
    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 998
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 992
    :cond_7
    :goto_7
    throw v13

    .line 1002
    :catch_5
    move-exception v7

    .line 1003
    .restart local v7    # "ioe":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->-get1()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "vpn handle : iptable execute : Exception iptables command failed "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "ioe":Ljava/lang/Exception;
    .end local v12    # "temp":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v1, v2

    .line 1008
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 992
    .restart local v4    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "temp":Ljava/lang/String;
    :catchall_1
    move-exception v13

    goto :goto_6

    .line 986
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 989
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "process":Ljava/lang/Process;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 957
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
