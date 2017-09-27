.class public Lcom/android/server/SdpLogService;
.super Landroid/os/ISdpLogService$Stub;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpLogService$SdpLogHandler;,
        Lcom/android/server/SdpLogService$SdpLogThread;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final DELAY:I = 0xbb8

.field private static final FILE_EOL:B = 0xat

.field private static final FILE_OFFSET:J = 0x0L

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final MAX_FILE_LENGTH:J = 0x200000L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final MAX_Q_SIZE:I = 0x12c

.field private static final MSG_SAVE_TO_FILE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SdpLogService"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static sContext:Landroid/content/Context;

.field private static final sLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

.field private mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;


# direct methods
.method static synthetic -set0(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)Lcom/android/server/SdpLogService$SdpLogHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->markTheBeginning()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->saveToFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/ISdpLogService$Stub;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    .line 58
    sput-object p1, Lcom/android/server/SdpLogService;->sContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/android/server/SdpLogService$SdpLogThread;

    const-string/jumbo v1, "SdpLogThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpLogService$SdpLogThread;-><init>(Lcom/android/server/SdpLogService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    .line 61
    iget-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    invoke-virtual {v0}, Lcom/android/server/SdpLogService$SdpLogThread;->start()V

    .line 63
    const-string/jumbo v0, "SdpLogService"

    const-string/jumbo v1, "Spawned sdp log thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 67
    const-string/jumbo v1, "SdpLogService"

    .line 68
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpLogService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "] trying to access methodName ["

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "] in ["

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "] service"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 73
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return v5
.end method

.method private convertTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 138
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 139
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "timeFormat":Ljava/text/Format;
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string/jumbo v0, "SdpLogService.d"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v0, "SdpLogService.e"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method private enqPayloadLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v2, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpLogService;->overloadProtection()V

    .line 94
    sget-object v1, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->removeMessages(I)V

    .line 96
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const-wide/16 v4, 0xbb8

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 91
    return-void

    .line 92
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    .local v0, "systemTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpLogService;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markTheBeginning()V
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v0, "System Ready!"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",D,Mark the beginning of SDP log service!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private overloadProtection()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 112
    const-string/jumbo v0, "Overload Observed..."

    invoke-static {v0}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 109
    :cond_0
    return-void
.end method

.method private saveToFile()V
    .locals 26

    .prologue
    .line 172
    const/4 v10, 0x0

    .line 173
    .local v10, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 174
    .local v12, "fileLength":J
    const-wide/16 v14, 0x0

    .line 175
    .local v14, "filePointer":J
    const-wide/16 v2, 0x0

    .line 176
    .local v2, "currVersion":J
    const/16 v18, 0x1

    .line 177
    .local v18, "prevResult":Z
    const/16 v16, 0x0

    .line 180
    .local v16, "isResetRequired":Z
    if-eqz v18, :cond_2

    .line 183
    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v19, "/data/log/sdp_log"

    const-string/jumbo v20, "rwd"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v20, 0x0

    :try_start_1
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 188
    const-wide/16 v20, 0x11

    cmp-long v19, v12, v20

    if-gtz v19, :cond_6

    .line 189
    const/16 v16, 0x1

    .line 190
    const-string/jumbo v19, "saveToFile() - File is too small"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    if-eqz v16, :cond_10

    .line 206
    const-wide/16 v20, 0x11

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 207
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 208
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 209
    const-wide/16 v20, 0x11

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 210
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 212
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 213
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    .line 214
    const-wide/16 v20, 0x11

    cmp-long v19, v14, v20

    if-ltz v19, :cond_1

    .line 215
    const-wide/32 v20, 0x200000

    cmp-long v19, v14, v20

    if-lez v19, :cond_9

    .line 216
    :cond_1
    const/16 v18, 0x0

    .line 217
    const-string/jumbo v19, "saveToFile() - Couldn\'t restore the file"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v11

    .line 223
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    if-eqz v18, :cond_b

    .line 224
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "saveToFile() - FP : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", Version : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 230
    sget-object v20, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v20
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "saveToFile() - QS : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v21, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v21 .. v21}, Ljava/util/Queue;->size()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    .line 232
    :cond_3
    :goto_2
    sget-object v19, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    .line 233
    sget-object v19, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 234
    .local v17, "log":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 237
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 238
    .local v5, "dataToWrite":[B
    array-length v4, v5

    .line 240
    .local v4, "dataLength":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    int-to-long v0, v4

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    const-wide/32 v24, 0x200000

    cmp-long v19, v22, v24

    if-lez v19, :cond_4

    .line 241
    const-wide/16 v22, 0x11

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 243
    :cond_4
    invoke-virtual {v10, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 244
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 230
    .end local v4    # "dataLength":I
    .end local v5    # "dataToWrite":[B
    .end local v17    # "log":Ljava/lang/String;
    :catchall_0
    move-exception v19

    :try_start_4
    monitor-exit v20

    throw v19
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    :catch_0
    move-exception v7

    .line 262
    .local v7, "exc":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 263
    const-string/jumbo v19, "saveToFile() - Couldn\'t open file"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 264
    const/16 v18, 0x0

    .line 275
    if-eqz v10, :cond_5

    .line 276
    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 279
    .end local v7    # "exc":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_4
    if-eqz v18, :cond_f

    .line 280
    const-string/jumbo v19, "saveToFile() - Done Successfully!!!"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    .line 171
    :goto_5
    return-void

    .line 191
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :cond_6
    const-wide/32 v20, 0x200000

    cmp-long v19, v12, v20

    if-lez v19, :cond_7

    .line 192
    const/16 v16, 0x1

    .line 193
    :try_start_7
    const-string/jumbo v19, "saveToFile() - File length had exceeded limitation"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v7

    .restart local v7    # "exc":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .local v10, "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 195
    .end local v7    # "exc":Ljava/io/FileNotFoundException;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :cond_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 196
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    .line 197
    const-wide/16 v20, 0x11

    cmp-long v19, v14, v20

    if-ltz v19, :cond_8

    .line 198
    const-wide/32 v20, 0x200000

    cmp-long v19, v14, v20

    if-lez v19, :cond_0

    .line 199
    :cond_8
    const/16 v16, 0x1

    .line 200
    const-string/jumbo v19, "saveToFile() - File header had been broken"

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0

    .line 265
    :catch_2
    move-exception v8

    .local v8, "exc":Ljava/io/IOException;
    move-object v10, v11

    .line 266
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    :goto_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    const-string/jumbo v19, "saveToFile() - Couldn\'t modify file..."

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 268
    const/16 v18, 0x0

    .line 275
    if-eqz v10, :cond_5

    .line 276
    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 277
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_4

    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "exc":Ljava/io/IOException;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :cond_9
    move-object v10, v11

    .line 215
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_a
    :try_start_a
    monitor-exit v20

    .line 249
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    .line 250
    const-wide/32 v20, 0x200000

    cmp-long v19, v14, v20

    if-lez v19, :cond_d

    .line 251
    const/16 v18, 0x0

    .line 259
    :cond_b
    :goto_7
    if-eqz v18, :cond_c

    .line 260
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "saveToFile() - FP : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", FL : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 275
    :cond_c
    if-eqz v10, :cond_5

    .line 276
    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    .line 277
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 253
    .end local v6    # "e":Ljava/io/IOException;
    :cond_d
    const-wide/16 v20, 0x0

    :try_start_c
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    .line 265
    :catch_5
    move-exception v8

    .restart local v8    # "exc":Ljava/io/IOException;
    goto :goto_6

    .line 269
    .end local v8    # "exc":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 270
    .local v9, "exc":Ljava/lang/Exception;
    :goto_8
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const-string/jumbo v19, "saveToFile() - Unexpected error occurred..."

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 272
    const/16 v18, 0x0

    .line 275
    if-eqz v10, :cond_5

    .line 276
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_4

    .line 277
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "exc":Ljava/lang/Exception;
    .restart local v7    # "exc":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 273
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "exc":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v19

    .line 275
    :goto_9
    if-eqz v10, :cond_e

    .line 276
    :try_start_f
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 273
    :cond_e
    :goto_a
    throw v19

    .line 277
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 282
    .end local v6    # "e":Ljava/io/IOException;
    :cond_f
    const-string/jumbo v19, "saveToFile() - Failed..."

    invoke-static/range {v19 .. v19}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 273
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v19

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 269
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v9

    .restart local v9    # "exc":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v9    # "exc":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :cond_10
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method


# virtual methods
.method public enqPayload(Ljava/lang/String;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    const-string/jumbo v0, "enqPayload"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 77
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 78
    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "SdpLogService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
