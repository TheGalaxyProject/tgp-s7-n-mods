.class final Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/execute/SemExecuteManagerService;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/execute/SemExecuteManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;-><init>(Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver$1;->start()V

    .line 94
    return-void
.end method
