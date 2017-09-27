.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 3
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 71
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 78
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 80
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 82
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 83
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .locals 14
    .param p1, "tempHeaderFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "mDumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v3, 0x0

    .line 487
    .local v3, "generatedFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 489
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 490
    .local v2, "filesInCommand":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "cat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 494
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 495
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 499
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 502
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 503
    .local v6, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v11

    if-nez v11, :cond_3

    .line 504
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 505
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v2    # "filesInCommand":Ljava/lang/String;
    .end local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "concatenateFiles.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "generatedFile":Ljava/io/File;
    :cond_2
    :goto_1
    return-object v3

    .line 506
    .restart local v2    # "filesInCommand":Ljava/lang/String;
    .restart local v3    # "generatedFile":Ljava/io/File;
    .restart local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 507
    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 512
    .end local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_4
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v11, :cond_2

    .line 513
    const-string/jumbo v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v11, "/temp.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "filesInCommand":Ljava/lang/String;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 518
    const-string/jumbo v11, "/system/bin/sh"

    const/4 v12, 0x0

    aput-object v11, v0, v12

    const-string/jumbo v11, "-c"

    const/4 v12, 0x1

    aput-object v11, v0, v12

    const/4 v11, 0x2

    aput-object v2, v0, v11

    .line 520
    .local v0, "cmds":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 522
    .local v7, "proc":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 523
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    .line 522
    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 524
    .local v9, "stdError":Ljava/io/BufferedReader;
    const-string/jumbo v8, ""

    .line 525
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 526
    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error while Executing the Cat command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 528
    :cond_5
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/temp.gz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "generatedFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "generatedFile":Ljava/io/File;
    .local v3, "generatedFile":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private createHeader()V
    .locals 7

    .prologue
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 128
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 129
    const-string/jumbo v2, "----------------------------------------------\n"

    .line 131
    .local v2, "separator":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 137
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dump Log Generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .locals 6
    .param p1, "headerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v3, 0x0

    .line 339
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 342
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    .local v2, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 348
    if-eqz v2, :cond_0

    .line 350
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 351
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 354
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 356
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 336
    :cond_1
    :goto_1
    return-void

    .line 357
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    .line 348
    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    if-eqz v1, :cond_2

    .line 350
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 351
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 354
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 356
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 347
    :cond_3
    :goto_4
    throw v5

    .line 357
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 352
    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private fullDump()V
    .locals 32

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 365
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    sget-object v8, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 366
    .local v8, "directoryPath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 367
    .local v12, "fileStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 369
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 370
    .local v18, "gzipStream":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 371
    .local v16, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v23, 0x0

    .line 372
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    .line 373
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 375
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v26, 0x0

    .line 378
    .local v26, "tempHeaderFile":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .local v17, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_1
    new-instance v24, Ljava/util/zip/GZIPOutputStream;

    new-instance v28, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    .local v24, "mZos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v28, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    if-eqz v28, :cond_a

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v5, v4

    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    move-object v7, v6

    .local v7, "decoder":Ljava/io/Reader;
    move-object/from16 v19, v18

    .local v19, "gzipStream":Ljava/io/InputStream;
    move-object v13, v12

    .line 382
    .local v13, "fileStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 383
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 384
    .local v25, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v28

    if-nez v28, :cond_8

    .line 385
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 386
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 426
    .end local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .local v16, "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    move-object v12, v13

    .line 427
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v13    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    :goto_2
    const/16 v28, 0x0

    :try_start_4
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 428
    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "fullDump.Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    if-eqz v26, :cond_1

    .line 433
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 437
    :cond_1
    if-eqz v23, :cond_2

    .line 438
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 445
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 447
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 452
    :cond_3
    :goto_4
    if-eqz v18, :cond_4

    .line 454
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 460
    :cond_4
    :goto_5
    if-eqz v12, :cond_5

    .line 462
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 467
    :cond_5
    :goto_6
    if-eqz v16, :cond_6

    .line 469
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 474
    :cond_6
    :goto_7
    if-eqz v14, :cond_7

    .line 476
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 362
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    return-void

    .line 388
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v13    # "fileStream":Ljava/io/InputStream;
    .restart local v14    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :cond_8
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 390
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 391
    .end local v13    # "fileStream":Ljava/io/InputStream;
    .local v12, "fileStream":Ljava/io/InputStream;
    :try_start_c
    new-instance v18, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 392
    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    :try_start_d
    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v28, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 393
    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    :try_start_e
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_19
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 395
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_9
    :goto_9
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    .local v22, "line":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 397
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_9

    .line 426
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "line":Ljava/lang/String;
    .end local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 404
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v6, "decoder":Ljava/io/Reader;
    .local v12, "fileStream":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :cond_a
    if-eqz v8, :cond_d

    .line 406
    new-instance v28, Ljava/io/File;

    sget-object v29, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    .line 410
    :cond_b
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "/header"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 411
    .local v27, "tempHeaderFile":Ljava/io/File;
    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 412
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    .line 413
    .local v11, "f":Ljava/io/File;
    if-eqz v11, :cond_1c

    .line 416
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1a
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 417
    .local v15, "fileStreamFull":Ljava/io/InputStream;
    const/high16 v28, 0x10000

    :try_start_11
    move/from16 v0, v28

    new-array v3, v0, [B

    .line 419
    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .local v3, "buffer":[B
    :goto_a
    invoke-virtual {v15, v3}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .local v21, "length":I
    if-lez v21, :cond_c

    .line 420
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    .line 426
    .end local v3    # "buffer":[B
    .end local v21    # "length":I
    :catch_2
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .local v26, "tempHeaderFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "fileStreamFull":Ljava/io/InputStream;
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 422
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v3    # "buffer":[B
    .restart local v15    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v21    # "length":I
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v27    # "tempHeaderFile":Ljava/io/File;
    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    move-object v14, v15

    .line 432
    .end local v3    # "buffer":[B
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v15    # "fileStreamFull":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v21    # "length":I
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    :cond_d
    :goto_b
    if-eqz v26, :cond_e

    .line 433
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 437
    :cond_e
    if-eqz v24, :cond_f

    .line 438
    :try_start_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 445
    :cond_f
    :goto_c
    if-eqz v4, :cond_10

    .line 447
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 452
    :cond_10
    :goto_d
    if-eqz v18, :cond_11

    .line 454
    :try_start_14
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 460
    :cond_11
    :goto_e
    if-eqz v12, :cond_12

    .line 462
    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    .line 467
    :cond_12
    :goto_f
    if-eqz v17, :cond_13

    .line 469
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    .line 474
    :cond_13
    :goto_10
    if-eqz v14, :cond_14

    .line 476
    :try_start_17
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    :cond_14
    :goto_11
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 441
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v9

    .line 442
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 441
    .end local v9    # "e":Ljava/io/IOException;
    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 430
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    .line 432
    :goto_12
    if-eqz v26, :cond_15

    .line 433
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 437
    :cond_15
    if-eqz v23, :cond_16

    .line 438
    :try_start_18
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 445
    :cond_16
    :goto_13
    if-eqz v4, :cond_17

    .line 447
    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 452
    :cond_17
    :goto_14
    if-eqz v18, :cond_18

    .line 454
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 460
    :cond_18
    :goto_15
    if-eqz v12, :cond_19

    .line 462
    :try_start_1b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 467
    :cond_19
    :goto_16
    if-eqz v16, :cond_1a

    .line 469
    :try_start_1c
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 474
    :cond_1a
    :goto_17
    if-eqz v14, :cond_1b

    .line 476
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 430
    :cond_1b
    :goto_18
    throw v28

    .line 441
    :catch_f
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "run.IOException "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close bufferedReader at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close gizp stream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close fileStream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close outStream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 430
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v26, "tempHeaderFile":Ljava/io/File;
    :catchall_1
    move-exception v28

    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_12

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_12

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v13    # "fileStream":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v28

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStream":Ljava/io/InputStream;
    .local v12, "fileStream":Ljava/io/InputStream;
    goto/16 :goto_12

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catchall_4
    move-exception v28

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    goto/16 :goto_12

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_5
    move-exception v28

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_12

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_6
    move-exception v28

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_12

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v6, "decoder":Ljava/io/Reader;
    .local v12, "fileStream":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v27    # "tempHeaderFile":Ljava/io/File;
    :catchall_7
    move-exception v28

    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .local v26, "tempHeaderFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_12

    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v15    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v27    # "tempHeaderFile":Ljava/io/File;
    :catchall_8
    move-exception v28

    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "fileStreamFull":Ljava/io/InputStream;
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    goto/16 :goto_12

    .line 426
    .end local v11    # "f":Ljava/io/File;
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    .local v16, "fileStreamOut":Ljava/io/OutputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v26, "tempHeaderFile":Ljava/io/File;
    :catch_15
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_16
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .local v16, "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .local v12, "fileStream":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_17
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_18
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_19
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v6, "decoder":Ljava/io/Reader;
    .local v12, "fileStream":Ljava/io/InputStream;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v27    # "tempHeaderFile":Ljava/io/File;
    :catch_1a
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .local v26, "tempHeaderFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v17    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v24    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v27    # "tempHeaderFile":Ljava/io/File;
    :cond_1c
    move-object/from16 v26, v27

    .end local v27    # "tempHeaderFile":Ljava/io/File;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    goto/16 :goto_b

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v13    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v26, "tempHeaderFile":Ljava/io/File;
    :cond_1d
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStream":Ljava/io/InputStream;
    .local v12, "fileStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v25    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v13    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "gzipStream":Ljava/io/InputStream;
    :cond_1e
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v18, v19

    .end local v19    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_b
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .locals 24
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 256
    const-wide/16 v2, 0x0

    .line 260
    .local v2, "aTime":J
    const/16 v19, 0x0

    .line 261
    .local v19, "returnFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 262
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v12, 0x0

    .line 265
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 266
    .local v10, "fileStream":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 267
    .local v16, "gzipStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 268
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 271
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    .line 276
    :cond_0
    new-instance v20, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "Tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    .end local v19    # "returnFile":Ljava/io/File;
    .local v20, "returnFile":Ljava/io/File;
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 278
    .local v13, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_2
    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    new-instance v22, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 280
    .local v15, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 281
    .local v11, "fileStream":Ljava/io/InputStream;
    :try_start_4
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    .end local v10    # "fileStream":Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 282
    .local v17, "gzipStream":Ljava/io/InputStream;
    :try_start_5
    new-instance v7, Ljava/io/InputStreamReader;

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 283
    .local v7, "decoder":Ljava/io/Reader;
    :try_start_6
    new-instance v5, Ljava/io/BufferedReader;

    .end local v6    # "decoder":Ljava/io/Reader;
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 284
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "line":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 285
    const-string/jumbo v22, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v21

    .line 287
    .local v21, "time":[Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_8
    aget-object v22, v21, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v2

    .line 292
    :try_start_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    cmp-long v22, v2, v22

    if-lez v22, :cond_3

    .line 311
    .end local v21    # "time":[Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v11}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v15}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v13}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .line 318
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "line":Ljava/lang/String;
    .end local v20    # "returnFile":Ljava/io/File;
    :goto_1
    return-object v19

    .line 295
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v20    # "returnFile":Ljava/io/File;
    .restart local v21    # "time":[Ljava/lang/String;
    :cond_3
    :try_start_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v22, v2, v22

    if-ltz v22, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v22, v2, v22

    if-gtz v22, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 298
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 307
    .end local v18    # "line":Ljava/lang/String;
    .end local v21    # "time":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .line 308
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v20    # "returnFile":Ljava/io/File;
    :goto_2
    :try_start_b
    const-string/jumbo v22, "Dumper"

    const-string/jumbo v23, "readFileLineByLine.IOException"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 311
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v10}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v14}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v12}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 301
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v20    # "returnFile":Ljava/io/File;
    .restart local v21    # "time":[Ljava/lang/String;
    :cond_4
    :try_start_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 310
    .end local v18    # "line":Ljava/lang/String;
    .end local v21    # "time":[Ljava/lang/String;
    :catchall_0
    move-exception v22

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .line 311
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v20    # "returnFile":Ljava/io/File;
    :goto_3
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v10}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v14}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v12}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    throw v22

    :catchall_1
    move-exception v22

    goto :goto_3

    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v6, "decoder":Ljava/io/Reader;
    .local v10, "fileStream":Ljava/io/InputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_2
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .local v19, "returnFile":Ljava/io/File;
    goto :goto_3

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_3
    move-exception v22

    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto :goto_3

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_4
    move-exception v22

    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto :goto_3

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_5
    move-exception v22

    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto :goto_3

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_6
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto :goto_3

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catchall_7
    move-exception v22

    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto :goto_3

    .line 307
    .local v6, "decoder":Ljava/io/Reader;
    .local v10, "fileStream":Ljava/io/InputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    .local v19, "returnFile":Ljava/io/File;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_2
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .local v19, "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "returnFile":Ljava/io/File;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .local v6, "decoder":Ljava/io/Reader;
    move-object/from16 v16, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v19, v20

    .end local v20    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    goto/16 :goto_2

    .line 288
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v20    # "returnFile":Ljava/io/File;
    .restart local v21    # "time":[Ljava/lang/String;
    :catch_8
    move-exception v9

    .local v9, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 322
    if-eqz p0, :cond_0

    .line 324
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ioE":Ljava/io/IOException;
    const-string/jumbo v1, "Dumper"

    const-string/jumbo v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private selectDumpInterval()V
    .locals 26

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    .line 156
    .local v13, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v19, 0x0

    .line 157
    .local v19, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v8, 0x1

    .line 159
    .local v8, "firstFile":Z
    const/4 v9, 0x0

    .line 160
    .local v9, "initFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 161
    .local v4, "endFile":Ljava/io/File;
    const/16 v18, 0x0

    .line 162
    .local v18, "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v17, 0x0

    .line 163
    .local v17, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v14, "listNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v20, 0x0

    .line 166
    .end local v9    # "initFile":Ljava/io/File;
    .end local v18    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v19    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v20, "tempHeaderFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 167
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 168
    .local v19, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_0

    .line 171
    if-eqz v8, :cond_1

    .line 172
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 173
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 174
    .local v9, "initFile":Ljava/io/File;
    new-instance v18, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 175
    const-string/jumbo v21, "com.android.server.enterprise.auditlog"

    .line 174
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v18, "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 177
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v8, 0x0

    .line 179
    goto :goto_0

    .line 182
    .end local v9    # "initFile":Ljava/io/File;
    .end local v18    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-gez v21, :cond_2

    .line 183
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 186
    .local v4, "endFile":Ljava/io/File;
    new-instance v17, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 187
    .end local v17    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string/jumbo v21, "com.android.server.enterprise.auditlog"

    .line 186
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v17, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 189
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v4    # "endFile":Ljava/io/File;
    .end local v17    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v19    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_3
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_4

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 199
    :cond_4
    new-instance v20, Ljava/io/File;

    .end local v20    # "tempHeaderFile":Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/header"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v20, "tempHeaderFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 201
    .local v5, "f":Ljava/io/File;
    const/4 v6, 0x0

    .line 202
    .local v6, "fileStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 204
    .local v15, "outStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    .line 207
    .local v5, "f":Ljava/io/File;
    if-eqz v5, :cond_d

    .line 210
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v7, "fileStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    .local v16, "outStream":Ljava/io/OutputStream;
    const/high16 v21, 0x10000

    :try_start_2
    move/from16 v0, v21

    new-array v2, v0, [B

    .line 214
    .end local v15    # "outStream":Ljava/io/OutputStream;
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "length":I
    if-lez v12, :cond_c

    .line 215
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 219
    .end local v2    # "buffer":[B
    .end local v12    # "length":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .end local v16    # "outStream":Ljava/io/OutputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 220
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v15    # "outStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "SelectDumpInterval.Exception"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v9, :cond_5

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_5
    if-eqz v4, :cond_6

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_6
    if-eqz v17, :cond_7

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_7
    if-eqz v18, :cond_8

    .line 233
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_8
    if-eqz v5, :cond_9

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_9
    if-eqz v6, :cond_a

    .line 240
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 245
    :cond_a
    :goto_3
    if-eqz v15, :cond_b

    .line 247
    :try_start_5
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_4
    return-void

    .restart local v2    # "buffer":[B
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "length":I
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    :cond_c
    move-object/from16 v15, v16

    .end local v16    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 223
    .end local v2    # "buffer":[B
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v12    # "length":I
    .end local v15    # "outStream":Ljava/io/OutputStream;
    :cond_d
    if-eqz v9, :cond_e

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_e
    if-eqz v4, :cond_f

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_f
    if-eqz v17, :cond_10

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_10
    if-eqz v18, :cond_11

    .line 233
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_11
    if-eqz v5, :cond_12

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_12
    if-eqz v6, :cond_13

    .line 240
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 245
    :cond_13
    :goto_5
    if-eqz v15, :cond_b

    .line 247
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 248
    :catch_1
    move-exception v11

    .line 249
    .local v11, "ioex":Ljava/lang/Exception;
    const-string/jumbo v21, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 241
    .end local v11    # "ioex":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 242
    .local v10, "ioex":Ljava/io/IOException;
    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 241
    .end local v5    # "f":Ljava/io/File;
    .end local v10    # "ioex":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 242
    .restart local v10    # "ioex":Ljava/io/IOException;
    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 248
    .end local v10    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 249
    .restart local v11    # "ioex":Ljava/lang/Exception;
    const-string/jumbo v21, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 222
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "ioex":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 223
    :goto_6
    if-eqz v9, :cond_14

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_14
    if-eqz v4, :cond_15

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_15
    if-eqz v17, :cond_16

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_16
    if-eqz v18, :cond_17

    .line 233
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_17
    if-eqz v5, :cond_18

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_18
    if-eqz v6, :cond_19

    .line 240
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 245
    :cond_19
    :goto_7
    if-eqz v15, :cond_1a

    .line 247
    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 222
    :cond_1a
    :goto_8
    throw v21

    .line 241
    :catch_5
    move-exception v10

    .line 242
    .restart local v10    # "ioex":Ljava/io/IOException;
    const-string/jumbo v22, "Dumper"

    const-string/jumbo v23, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 248
    .end local v10    # "ioex":Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 249
    .restart local v11    # "ioex":Ljava/lang/Exception;
    const-string/jumbo v22, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 222
    .end local v11    # "ioex":Ljava/lang/Exception;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v21

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .local v6, "fileStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "outStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "outStream":Ljava/io/OutputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_6

    .line 219
    .end local v5    # "f":Ljava/io/File;
    .local v6, "fileStream":Ljava/io/InputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .local v6, "fileStream":Ljava/io/InputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .locals 8
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, "fileStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .local v2, "fileStream":Ljava/io/FileInputStream;
    const/4 v5, 0x2

    :try_start_1
    new-array v0, v5, [B

    .line 547
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .local v0, "bytes":[B
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 549
    if-eqz v0, :cond_0

    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v5, v7, :cond_2

    .line 557
    :cond_0
    if-eqz v2, :cond_1

    .line 558
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 550
    :cond_1
    return v4

    .line 553
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    aget-byte v5, v0, v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v5, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v6, -0x75

    if-ne v5, v6, :cond_4

    .line 557
    :goto_0
    if-eqz v2, :cond_3

    .line 558
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 553
    :cond_3
    return v3

    :cond_4
    move v3, v4

    goto :goto_0

    .line 556
    .end local v0    # "bytes":[B
    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 557
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_5

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 556
    :cond_5
    throw v3

    .restart local v2    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .local v1, "fileStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    .line 101
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 103
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v2, :cond_1

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 97
    :goto_2
    return-void

    .line 106
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Dumper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run.Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 111
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 120
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_2

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 114
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 120
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 112
    throw v2

    .line 117
    :catch_3
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "Dumper"

    const-string/jumbo v4, "run.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 537
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 93
    return-void
.end method
