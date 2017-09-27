.class Lcom/android/server/enterprise/log/FileLogger$3;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$outFile:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/log/FileLogger;
    .param p2, "val$file"    # Ljava/io/File;
    .param p3, "val$outFile"    # Ljava/io/FileOutputStream;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    iput-object p2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/FileInputStream;)V
    .locals 0
    .param p1, "inFile"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 396
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inFile"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    check-cast p1, Ljava/io/FileInputStream;

    .end local p1    # "inFile":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->close(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public open()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger$3;->open()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/FileInputStream;)V
    .locals 4
    .param p1, "inFile"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 386
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 388
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inFile"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    check-cast p1, Ljava/io/FileInputStream;

    .end local p1    # "inFile":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->process(Ljava/io/FileInputStream;)V

    return-void
.end method
