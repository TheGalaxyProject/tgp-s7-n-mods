.class Lcom/sec/sdp/internal/SDPLog$CallerInfo;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/internal/SDPLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallerInfo"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private currMethod:Ljava/lang/String;

.field private pid:I

.field private prevMethod:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private uid:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->-wrap0()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->time:Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iput v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->userId:I

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->pid:I

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->uid:I

    .line 152
    const-string/jumbo v4, "N/A"

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    .line 153
    const-string/jumbo v4, "N/A"

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    .line 154
    const-string/jumbo v4, "N/A"

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 158
    .local v3, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x4

    :try_start_0
    aget-object v1, v3, v4

    .line 159
    .local v1, "eCurr":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    .line 162
    const/4 v4, 0x5

    aget-object v2, v3, v4

    .line 163
    .local v2, "ePrev":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "eCurr":Ljava/lang/StackTraceElement;
    .end local v2    # "ePrev":Ljava/lang/StackTraceElement;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",I,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "UserId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "currMethod"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "prevMethod"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "Class"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->-wrap1([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
