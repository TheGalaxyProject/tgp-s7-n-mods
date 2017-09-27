.class Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
.super Ljava/lang/Object;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsEventBatch"
.end annotation


# instance fields
.field private mEventCount:I

.field private final mEventTypes:[B

.field private final mLatenciesMs:[I

.field private final mNetId:I

.field private final mReturnCodes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "netId"    # I

    .prologue
    const/16 v1, 0x64

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    .line 57
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    .line 62
    iput p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    .line 61
    return-void
.end method


# virtual methods
.method public addResult(BBI)V
    .locals 2
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    aput-byte p1, v0, v1

    .line 67
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    aput-byte p2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    aput p3, v0, v1

    .line 69
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    .line 70
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V

    .line 65
    :cond_0
    return-void
.end method

.method public logAndClear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    iget v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    if-nez v3, :cond_0

    .line 78
    return-void

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 83
    .local v0, "eventTypes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 84
    .local v2, "returnCodes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 85
    .local v1, "latenciesMs":[I
    iget v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    invoke-static {v3, v0, v2, v1}, Landroid/net/metrics/DnsEvent;->logEvent(I[B[B[I)V

    .line 86
    const-string/jumbo v3, "Logging %d results for netId %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/DnsEventListenerService;->-wrap0(Ljava/lang/String;)V

    .line 87
    iput v7, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string/jumbo v0, "%s %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
