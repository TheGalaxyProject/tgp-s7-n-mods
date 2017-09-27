.class Lcom/samsung/android/app/executor/ExecutorService$1;
.super Ljava/lang/Object;
.source "ExecutorService.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/executor/ExecutorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/executor/ExecutorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService$1;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 45
    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ExecutorService onResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorService$1;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    invoke-static {v1}, Lcom/samsung/android/app/executor/ExecutorService;->access$100(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorService$1;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # invokes: Lcom/samsung/android/app/executor/ExecutorService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/executor/ExecutorService;->access$200(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "jsonResponse":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 56
    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorService$1;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    invoke-static {v1}, Lcom/samsung/android/app/executor/ExecutorService;->access$100(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/executor/IExecutorServiceCallback;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "jsonResponse":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Response listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .restart local v0    # "jsonResponse":Ljava/lang/String;
    :cond_1
    return-void

    .line 59
    .end local v0    # "jsonResponse":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
