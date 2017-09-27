.class public Lcom/android/server/enterprise/otp/RateCheck;
.super Ljava/lang/Object;
.source "RateCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/RateCheck$RateData;
    }
.end annotation


# static fields
.field public static final BLOCKING_PERIOD:I = 0xea60

.field private static final CALL_LIMIT:I = 0x3c

.field private static final CUTOFF_TIME:J = 0xea60L

.field private static final FAIL_LIMIT:I = 0x1e

.field private static mInstance:Lcom/android/server/enterprise/otp/RateCheck;


# instance fields
.field blockList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field callLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/RateCheck$RateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/RateCheck;->mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck;->callLog:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck;->callLog:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    .line 96
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/RateCheck;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/enterprise/otp/RateCheck;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/otp/RateCheck;->mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/server/enterprise/otp/RateCheck;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/RateCheck;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/otp/RateCheck;->mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    .line 93
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/RateCheck;->mInstance:Lcom/android/server/enterprise/otp/RateCheck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized validateCaller(Ljava/lang/String;)Z
    .locals 13
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "failCount":I
    const/4 v6, 0x0

    .line 56
    .local v6, "totalCount":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "currentTime":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v5, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/otp/RateCheck;->callLog:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rd$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .line 60
    .local v3, "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    invoke-static {v3}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->-get0(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-static {v3}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->-get2(Lcom/android/server/enterprise/otp/RateCheck$RateData;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 62
    invoke-static {v3}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->-get1(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "currentTime":J
    .end local v3    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    .end local v4    # "rd$iterator":Ljava/util/Iterator;
    .end local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 71
    .restart local v0    # "currentTime":J
    .restart local v4    # "rd$iterator":Ljava/util/Iterator;
    .restart local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 72
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .line 73
    .restart local v3    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    iget-object v7, p0, Lcom/android/server/enterprise/otp/RateCheck;->callLog:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v3    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    :cond_4
    const/16 v7, 0x1e

    if-gt v2, v7, :cond_5

    const/16 v7, 0x3c

    if-le v6, v7, :cond_6

    .line 77
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RateCheck::Blocking - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 78
    iget-object v7, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    :cond_6
    monitor-exit p0

    .line 82
    return v12
.end method


# virtual methods
.method public declared-synchronized isCallMalicious(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "caller":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/server/enterprise/otp/RateCheck;->blockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RateCheck:: removing from Blocklist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 37
    return v6

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RateCheck:: caller is in Blocklist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    .line 44
    return v6

    .end local v0    # "caller":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateData(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "tokenId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Z

    .prologue
    monitor-enter p0

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "caller":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck;->callLog:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/otp/RateCheck$RateData;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/otp/RateCheck;->validateCaller(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 47
    return-void

    .end local v2    # "caller":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
