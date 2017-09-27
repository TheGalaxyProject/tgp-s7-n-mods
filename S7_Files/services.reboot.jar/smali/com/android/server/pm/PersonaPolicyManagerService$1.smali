.class Lcom/android/server/pm/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaPolicyManagerService;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    .line 194
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;->getSendingUserId()I

    move-result v3

    .line 193
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, "userHandle":I
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap0(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap1(Lcom/android/server/pm/PersonaPolicyManagerService;I)V

    .line 191
    :cond_0
    return-void
.end method
