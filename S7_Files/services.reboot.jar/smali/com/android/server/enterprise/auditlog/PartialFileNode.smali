.class public Lcom/android/server/enterprise/auditlog/PartialFileNode;
.super Ljava/lang/Object;
.source "PartialFileNode.java"


# static fields
.field static FILESIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PartialFileNode"


# instance fields
.field private final deleteSync:Ljava/lang/Object;

.field private isCompressed:Z

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private volatile mFile:Ljava/io/File;

.field private mLastLineLength:I

.field private volatile mMarkAsDeprecated:Z

.field private mPackageName:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mTimestamp:J

.field private mTruncateFileAt:J

.field private mWasWritten:Z

.field private mWriteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide/32 v0, 0x80000

    sput-wide v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isCompressed:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    .line 61
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 86
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isCompressed:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 66
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 67
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 68
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "suffix":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 70
    iput v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 71
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 72
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    .line 74
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    sget-wide v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v7

    .line 80
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PartialFileNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PartialFileNode.Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method closeFile()V
    .locals 6

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 124
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 125
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PartialFileNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeFile.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method compressFile()Z
    .locals 17

    .prologue
    .line 175
    const/4 v12, 0x0

    .line 176
    .local v12, "success":Z
    const/4 v13, 0x0

    .line 177
    .local v13, "tempFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 178
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 179
    .local v10, "outputStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 181
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_tmp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v13    # "tempFile":Ljava/io/File;
    .local v14, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    .end local v8    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    .local v11, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    .end local v10    # "outputStream":Ljava/io/OutputStream;
    invoke-direct {v5, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 185
    .local v5, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/high16 v15, 0x10000

    :try_start_4
    new-array v1, v15, [B

    .line 186
    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v1, "buffer":[B
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 188
    .local v2, "bytesRead":I
    const/4 v3, 0x0

    .line 190
    .local v3, "bytesWritten":I
    :goto_0
    if-lez v2, :cond_0

    .line 191
    const/4 v15, 0x0

    invoke-virtual {v5, v1, v15, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 192
    add-int/2addr v3, v2

    .line 193
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v12

    .line 199
    .local v12, "success":Z
    if-eqz v12, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 208
    :cond_1
    if-eqz v5, :cond_2

    .line 210
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 213
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 215
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 219
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 221
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_3
    move-object v4, v5

    .end local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .line 225
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesWritten":I
    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "success":Z
    .end local v14    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_4
    return v12

    .line 211
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "bytesWritten":I
    .restart local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "success":Z
    .restart local v14    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 216
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 222
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_3

    .line 204
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesWritten":I
    .end local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "tempFile":Ljava/io/File;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    .local v12, "success":Z
    .restart local v13    # "tempFile":Ljava/io/File;
    :catch_3
    move-exception v6

    .line 205
    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "success":Z
    .end local v13    # "tempFile":Ljava/io/File;
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    const/4 v12, 0x0

    .line 206
    .restart local v12    # "success":Z
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 208
    if-eqz v4, :cond_6

    .line 210
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 213
    :cond_6
    :goto_6
    if-eqz v8, :cond_7

    .line 215
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 219
    :cond_7
    :goto_7
    if-eqz v10, :cond_5

    .line 221
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 222
    :catch_4
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_4

    .line 211
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_6

    .line 216
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_7

    .line 207
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 208
    .end local v12    # "success":Z
    :goto_8
    if-eqz v4, :cond_8

    .line 210
    :try_start_c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 213
    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    .line 215
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 219
    :cond_9
    :goto_a
    if-eqz v10, :cond_a

    .line 221
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 207
    :cond_a
    :goto_b
    throw v15

    .line 211
    :catch_7
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_9

    .line 216
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_8
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_a

    .line 222
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_9
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto :goto_b

    .line 207
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "success":Z
    .restart local v14    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .local v13, "tempFile":Ljava/io/File;
    goto :goto_8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v15

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v15

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_8

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "success":Z
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catchall_4
    move-exception v15

    move-object v4, v5

    .end local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_8

    .line 204
    .end local v13    # "tempFile":Ljava/io/File;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "success":Z
    .restart local v14    # "tempFile":Ljava/io/File;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_5

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_5

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catch_c
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .local v10, "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_5

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "success":Z
    .end local v13    # "tempFile":Ljava/io/File;
    .restart local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "tempFile":Ljava/io/File;
    :catch_d
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "tempFile":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    goto :goto_5
.end method

.method delete()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    :cond_0
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getFileSize()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 153
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    return-wide v0
.end method

.method getWasWritten()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    return v0
.end method

.method isDeprecated()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    return v0
.end method

.method declared-synchronized setDeprecated(Z)Z
    .locals 1
    .param p1, "dep"    # Z

    .prologue
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 165
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setTimestamp()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 144
    :cond_0
    return-void
.end method

.method setWasWritten(Z)V
    .locals 0
    .param p1, "wasWritten"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 230
    return-void
.end method

.method write(Ljava/lang/String;)Z
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 98
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    if-nez v1, :cond_1

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 106
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    .line 107
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 108
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 115
    :cond_2
    :goto_0
    return v8

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PartialFileNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
