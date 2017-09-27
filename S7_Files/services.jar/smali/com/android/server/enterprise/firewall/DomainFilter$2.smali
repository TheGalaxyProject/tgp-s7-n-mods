.class Lcom/android/server/enterprise/firewall/DomainFilter$2;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap10(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$2;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap9(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V

    goto :goto_0
.end method
