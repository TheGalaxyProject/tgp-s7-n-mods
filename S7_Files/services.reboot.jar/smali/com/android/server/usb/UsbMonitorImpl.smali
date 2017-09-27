.class public Lcom/android/server/usb/UsbMonitorImpl;
.super Ljava/lang/Object;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMonitorImpl$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final MAX_LOG_FILESIZE:J = 0x19000L

.field static final READ_USB_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "UsbMonitorService"

.field private static final USB_STATISTICS_LOG_PATH:Ljava/lang/String; = "/efs/usb_hw_param/usb_hw_param.log"

.field private static final USB_STATISTICS_SYSFS_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/usb_hw_param"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/usb/UsbMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMonitorImpl$1;-><init>(Lcom/android/server/usb/UsbMonitorImpl;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo v0, "UsbMonitorImpl()"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private static dbgPrint(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "UsbMonitorService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private readSysFsFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readSysFsFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    return-object v1
.end method

.method private static stringToFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v1, "out":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 129
    .end local v1    # "out":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 136
    .restart local v1    # "out":Ljava/io/FileWriter;
    :catchall_0
    move-exception v2

    .line 138
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 136
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .end local v1    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method checkFileSize()V
    .locals 6

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x19000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 71
    const-string/jumbo v1, "checkFileSize delete file"

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 116
    const-string/jumbo v0, "Current UsbMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method postReadUsbMsg(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    return-void
.end method

.method readUsbState()V
    .locals 4

    .prologue
    .line 54
    const-string/jumbo v1, "readUsbState++"

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->readSysFsFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "state":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!@readUsbState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "/efs/usb_hw_param/usb_hw_param.log"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v1, "Posting Message again"

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 65
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbMonitorImpl;->postReadUsbMsg(J)V

    .line 53
    return-void
.end method

.method public systemReady()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 87
    const-string/jumbo v6, "systemReady()"

    invoke-static {v6}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 88
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    const-string/jumbo v6, "systemReady() there is no /sys/class/usb_notify/usb_control/usb_hw_param , motitor function will be of"

    invoke-static {v6}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 90
    return-void

    .line 92
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    const-string/jumbo v6, "systemReady() initial state, nothing in the log"

    invoke-static {v6}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v6, "/efs/usb_hw_param/usb_hw_param.log"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7, v9}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl;->readUsbState()V

    .line 86
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "br":Ljava/io/BufferedReader;
    const-string/jumbo v4, "0"

    .line 100
    .local v4, "lastLine":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 103
    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 110
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-static {v6, v4, v9}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 107
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 108
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to read /efs/usb_hw_param/usb_hw_param.log , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 106
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to read /efs/usb_hw_param/usb_hw_param.log , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 107
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method
