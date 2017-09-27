.class Lcom/android/server/enterprise/firewall/Firewall$1$1;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/Firewall$1;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/enterprise/firewall/Firewall$1;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-get1(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap2(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 120
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-set1(Z)Z

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap3(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 125
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-set0(Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap1(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 116
    return-void
.end method
