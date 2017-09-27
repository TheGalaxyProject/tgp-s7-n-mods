.class public final Lcom/samsung/android/scloud/oem/lib/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    }
.end annotation


# static fields
.field private static mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "size"    # J
    .param p3, "fileOpStream"    # Ljava/io/FileOutputStream;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v3, "FileTool"

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeToFile - start Write with stream : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x20000

    .line 119
    new-array v0, v3, [B

    .local v0, "buffer":[B
    const/4 v2, 0x0

    .local v2, "len":I
    const-wide/16 v4, 0x0

    .line 123
    .local v4, "sum":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 124
    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 126
    if-nez p4, :cond_0

    :goto_1
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p3, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v4    # "sum":J
    :catch_0
    move-exception v1

    .line 131
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 133
    if-nez p0, :cond_1

    .line 135
    :goto_2
    if-nez p3, :cond_2

    .line 137
    :goto_3
    throw v3

    .line 127
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "sum":J
    :cond_0
    :try_start_2
    invoke-interface {p4, v4, v5, p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;->transferred(JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 134
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v4    # "sum":J
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 133
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "sum":J
    :cond_3
    if-nez p0, :cond_4

    .line 135
    :goto_4
    if-nez p3, :cond_5

    .line 138
    :goto_5
    return-void

    .line 134
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 136
    :cond_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "size"    # J
    .param p3, "filepath"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string/jumbo v6, "FileTool"

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "writeToFile - start Write with stream : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    .line 145
    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v5, v6

    .line 147
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "folderPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 163
    .local v2, "fileOpStream":Ljava/io/FileOutputStream;
    invoke-static {p0, p1, p2, v2, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    .line 165
    return-void

    .end local v2    # "fileOpStream":Ljava/io/FileOutputStream;
    :cond_1
    const-string/jumbo v6, "FileTool"

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Creating folder : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 154
    .local v4, "result":Z
    if-nez v4, :cond_0

    const-string/jumbo v6, "FileTool"

    const-string/jumbo v7, "ORSMetaResponse.fromBinaryFile(): Can not create directory. "

    .line 156
    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public static writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 3
    .param p0, "inputFile"    # Ljava/lang/String;
    .param p1, "size"    # J
    .param p3, "outputStream"    # Ljava/io/FileOutputStream;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 175
    .local v1, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    .line 176
    return-void

    .line 171
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method
