.class public Lcom/android/server/enterprise/log/FileLogger;
.super Lcom/android/server/enterprise/log/Logger;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;,
        Lcom/android/server/enterprise/log/FileLogger$LogBuffer;,
        Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    }
.end annotation


# static fields
.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final LIMIT_FOR_LOGS_IN_DAYS:I = 0x5

.field private static LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String; = null

.field private static final LOG_FILES_DIR:Ljava/lang/String; = "/data/system/enterprise/logs"

.field private static final MSG_QUEUE_LOG:I = 0x1

.field private static final MSG_WRITE_LOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FileLogger"

.field private static final mCalendar:Ljava/util/Calendar;


# instance fields
.field private final consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

.field private mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

.field private final producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    return-object p1
.end method

.method static synthetic -wrap0(J)J
    .locals 2
    .param p0, "time"    # J

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->getDayBoundaryTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/log/FileLogger;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/log/FileLogger;->cleanupLogs()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "cdl"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, " | "

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->mCalendar:Ljava/util/Calendar;

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/Logger;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 143
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogBuffer;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LogFileWriterThread"

    .line 87
    const/16 v2, 0xa

    .line 86
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;-><init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    .line 83
    return-void
.end method

.method private cleanupLogs()V
    .locals 5

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/system/enterprise/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    new-instance v3, Lcom/android/server/enterprise/log/FileLogger$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/log/FileLogger$1;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 241
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 242
    return-void

    .line 245
    :cond_1
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 246
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static final getDayBoundaryTimestamp(J)J
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 339
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 340
    const-wide/32 v0, 0x15180

    rem-long v0, p0, v0

    sub-long/2addr p0, v0

    .line 341
    return-wide p0
.end method

.method private startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "cdl"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    :cond_2
    return-void
.end method


# virtual methods
.method public copyLogs(Ljava/io/FileOutputStream;)V
    .locals 7
    .param p1, "outFile"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v4, 0x0

    .line 352
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/system/enterprise/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger;->flush()V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 361
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 362
    return-void

    .line 365
    :cond_1
    new-instance v3, Lcom/android/server/enterprise/log/FileLogger$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/log/FileLogger$2;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 374
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v2, v3

    .line 376
    .local v1, "file":Ljava/io/File;
    new-instance v6, Lcom/android/server/enterprise/log/FileLogger$3;

    invoke-direct {v6, p0, v1, p1}, Lcom/android/server/enterprise/log/FileLogger$3;-><init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V

    .line 375
    invoke-static {v6, v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 97
    .local v1, "flushLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 98
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    :try_start_2
    const-string/jumbo v3, "FileLogger"

    const-string/jumbo v4, "flush complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 95
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "flushLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "entry":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-static {p1}, Lcom/android/server/enterprise/log/Log;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method
