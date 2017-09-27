.class Lcom/android/server/DcmNextiPlayReadyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DcmNextiPlayReadyService;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v4}, Lcom/android/server/DcmNextiPlayReadyService;->-get0(Lcom/android/server/DcmNextiPlayReadyService;)Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 370
    .local v1, "msg":Landroid/os/Message;
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 372
    .local v2, "net":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 375
    .local v3, "st":Landroid/net/NetworkInfo$State;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v7, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    const-string/jumbo v4, "DcmNextiPlayReadyService"

    const-string/jumbo v5, "Current action is Wifi Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput v8, v1, Landroid/os/Message;->what:I

    .line 404
    .end local v2    # "net":Landroid/net/NetworkInfo;
    .end local v3    # "st":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v4}, Lcom/android/server/DcmNextiPlayReadyService;->-get0(Lcom/android/server/DcmNextiPlayReadyService;)Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    return-void

    .line 379
    .restart local v2    # "net":Landroid/net/NetworkInfo;
    .restart local v3    # "st":Landroid/net/NetworkInfo$State;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 381
    const-string/jumbo v4, "DcmNextiPlayReadyService"

    const-string/jumbo v5, "Current action is mobile data Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    const-string/jumbo v4, "DcmNextiPlayReadyService"

    const-string/jumbo v5, "Current action is Data suspended"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    .line 387
    :cond_3
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    iget-object v4, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 389
    const-string/jumbo v4, "DcmNextiPlayReadyService"

    const-string/jumbo v5, "Current action is Data connected and previous action was not suspended"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput v8, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 394
    :cond_4
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    .line 399
    .end local v2    # "net":Landroid/net/NetworkInfo;
    .end local v3    # "st":Landroid/net/NetworkInfo$State;
    :cond_5
    const-string/jumbo v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 402
    return-void
.end method
