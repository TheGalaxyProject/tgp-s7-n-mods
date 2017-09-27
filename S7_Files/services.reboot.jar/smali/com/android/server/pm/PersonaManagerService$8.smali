.class Lcom/android/server/pm/PersonaManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 7099
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$8;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7102
    const-string/jumbo v0, "PersonaManagerService"

    .line 7103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USER_REMOVED broadcast sent, cleaning up user data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7104
    iget v2, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$userHandle:I

    .line 7103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7102
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7105
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$8$1;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$8;->val$userHandle:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PersonaManagerService$8$1;-><init>(Lcom/android/server/pm/PersonaManagerService$8;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$8$1;->start()V

    .line 7101
    return-void
.end method
