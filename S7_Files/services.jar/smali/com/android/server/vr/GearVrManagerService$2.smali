.class Lcom/android/server/vr/GearVrManagerService$2;
.super Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I

    .prologue
    .line 324
    const-string/jumbo v0, "acquireVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap15(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap24(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap26(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V

    .line 365
    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public getPowerLevelState()I
    .locals 1

    .prologue
    .line 354
    const-string/jumbo v0, "getPowerLevelState"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap18(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string/jumbo v0, "getSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap21(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "getThreadId"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap16(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public isDock()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap1(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap3(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 1

    .prologue
    .line 386
    const-string/jumbo v0, "isVrMode"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap7(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "readSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap22(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "registerVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap28(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap23(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 469
    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "releaseVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap9(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "removeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap10(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 1

    .prologue
    .line 348
    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap17(Lcom/android/server/vr/GearVrManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2
    .param p1, "blocked"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setHomeKeyBlocked"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap34(Lcom/android/server/vr/GearVrManagerService;Z)V

    .line 391
    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setOverlayRestriction"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap35(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    .line 397
    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPermissions"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap19(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public setReadyForVrMode(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setReadyForVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap36(Lcom/android/server/vr/GearVrManagerService;Z)V

    .line 403
    return-void
.end method

.method public setSystemMouseControlType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap37(Lcom/android/server/vr/GearVrManagerService;I)V

    .line 457
    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseShowMouseEnabled"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap38(Lcom/android/server/vr/GearVrManagerService;Z)V

    .line 463
    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string/jumbo v0, "setSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap39(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public setThreadAffinity(I[I)I
    .locals 2
    .param p1, "tid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadAffinity"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap20(Lcom/android/server/vr/GearVrManagerService;I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "group"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadGroup"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap11(Lcom/android/server/vr/GearVrManagerService;II)Z

    move-result v0

    return v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I

    .prologue
    .line 360
    const-string/jumbo v0, "setThreadSchedFifo"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap12(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setThreadScheduler(III)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadScheduler"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap13(Lcom/android/server/vr/GearVrManagerService;III)Z

    move-result v0

    return v0
.end method

.method public setVrMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap40(Lcom/android/server/vr/GearVrManagerService;Z)V

    .line 379
    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "unregisterVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap28(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap33(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 475
    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDir"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "writeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap14(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
