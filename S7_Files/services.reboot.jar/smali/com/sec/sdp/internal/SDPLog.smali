.class public Lcom/sec/sdp/internal/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/internal/SDPLog$CallerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = ",D,"

.field private static final DEBUG_ON:Z = false

.field private static final INFO:Ljava/lang/String; = ",I,"

.field private static final PARAM:Ljava/lang/String; = ",P,"

.field private static final SUFFIX:Ljava/lang/String; = ".SDPLog"

.field private static final TAG:Ljava/lang/String; = "SDPLog"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final TOKEN:Ljava/lang/String; = ","

.field private static isInitialized:Z

.field private static mSdpLogService:Landroid/os/ISdpLogService;


# direct methods
.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lcom/sec/sdp/internal/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    .line 34
    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    .line 39
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-nez v1, :cond_1

    .line 41
    const-string/jumbo v1, "sdp_log"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpLogService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpLogService;

    move-result-object v1

    .line 40
    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    .line 42
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    .line 19
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 117
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "timeFormat":Ljava/text/Format;
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "SDPLog.d"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "payload":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".SDPLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "payload":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static enqPayload(Ljava/lang/String;)V
    .locals 3
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    invoke-interface {v1, p0}, Landroid/os/ISdpLogService;->enqPayload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SDPLog"

    const-string/jumbo v2, "Failed to talk with sdp log service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "systemTime":J
    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 82
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 91
    .end local v0    # "payload":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static varargs makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 123
    const/4 v3, 0x1

    .line 124
    .local v3, "toggle":Z
    const-string/jumbo v1, ""

    .line 125
    .local v1, "sequence":Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v0, p0, v4

    .line 126
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string/jumbo v2, "null"

    .line 127
    .local v2, "str":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 128
    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 129
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1

    .line 128
    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    .line 131
    :cond_2
    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 132
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 131
    :cond_3
    const/4 v3, 0x1

    goto :goto_4

    .line 135
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .locals 0
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 66
    return-void
.end method
