.class Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgParam"
.end annotation


# instance fields
.field fullscreen:Z

.field isMutiwindowRecord:Z

.field multiwindowstyle:I

.field showWhenLocked:Z

.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 92
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 95
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 99
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 100
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 101
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z
    .param p5, "mws"    # I

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 92
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 95
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 106
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 107
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 108
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 109
    iput p5, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z
    .param p5, "isMutiwindowRecord"    # Z

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 92
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 95
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 113
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 114
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 115
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 116
    iput-boolean p5, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 112
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[MsgParam] userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fullscreen is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " showWhenlocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    iget-boolean v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, " isMutiwindowRecord is "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    iget-boolean v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, " multiwindowstyle is "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
