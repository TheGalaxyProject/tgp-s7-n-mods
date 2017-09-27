.class Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/BufferedWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;Ljava/io/File;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    .param p2, "val$file"    # Ljava/io/File;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iput-object p2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/BufferedWriter;)V
    .locals 0
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 303
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->close(Ljava/io/BufferedWriter;)V

    return-void
.end method

.method public flush(Ljava/io/BufferedWriter;)V
    .locals 0
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 297
    return-void
.end method

.method public bridge synthetic flush(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->flush(Ljava/io/BufferedWriter;)V

    return-void
.end method

.method public open()Ljava/io/BufferedWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/io/BufferedWriter;

    .line 283
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->val$file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 282
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

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
    .line 281
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->open()Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/BufferedWriter;)V
    .locals 3
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iget-object v2, v2, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v2, v2, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "log$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 293
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 288
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .param p1, "io"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "io":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->process(Ljava/io/BufferedWriter;)V

    return-void
.end method
