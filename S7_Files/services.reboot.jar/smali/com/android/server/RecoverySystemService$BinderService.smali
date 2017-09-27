.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private connectService()Landroid/net/LocalSocket;
    .locals 8

    .prologue
    .line 164
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 165
    .local v4, "socket":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    .line 169
    .local v0, "done":Z
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_0
    const/16 v5, 0x1e

    if-ge v3, v5, :cond_0

    .line 171
    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "uncrypt"

    .line 172
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 171
    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v0, 0x1

    .line 183
    :cond_0
    if-nez v0, :cond_1

    .line 184
    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v5, 0x0

    return-object v5

    .line 175
    :catch_0
    move-exception v2

    .line 177
    .local v2, "ignored":Ljava/io/IOException;
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Interrupted: "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 187
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 11
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 191
    iget-object v7, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v7}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "android.permission.RECOVERY"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    const-string/jumbo v7, "ctl.start"

    const-string/jumbo v8, "setup-bcb"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v5

    .line 201
    .local v5, "socket":Landroid/net/LocalSocket;
    if-nez v5, :cond_1

    .line 202
    const-string/jumbo v7, "RecoverySystemService"

    const-string/jumbo v8, "Failed to connect to uncrypt socket"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v10

    .line 196
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :cond_0
    const-string/jumbo v7, "ctl.start"

    const-string/jumbo v8, "clear-bcb"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 209
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .local v3, "dos":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_2

    .line 214
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 220
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 224
    .local v6, "status":I
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 226
    const/16 v7, 0x64

    if-ne v6, v7, :cond_4

    .line 227
    const-string/jumbo v8, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uncrypt "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_3

    const-string/jumbo v7, "setup"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 228
    const-string/jumbo v9, " bcb successfully finished."

    .line 227
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 238
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 243
    const/4 v7, 0x1

    return v7

    .line 227
    :cond_3
    :try_start_3
    const-string/jumbo v7, "clear"

    goto :goto_1

    .line 231
    :cond_4
    const-string/jumbo v7, "RecoverySystemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uncrypt failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 238
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 232
    return v10

    .line 234
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "status":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 235
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v7, "RecoverySystemService"

    const-string/jumbo v8, "IOException when communicating with uncrypt: "

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 236
    return v10

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 238
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    throw v7

    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .line 234
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearBcb()Z
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v12}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "android.permission.RECOVERY"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 78
    const/4 v13, 0x0

    const/4 v10, 0x0

    .local v10, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v11, Ljava/io/FileWriter;

    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 79
    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 84
    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v13, :cond_4

    :try_start_3
    throw v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 80
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v10, v11

    .line 81
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v12, "RecoverySystemService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IOException when writing \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 82
    const-string/jumbo v14, "\": "

    .line 81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v12, 0x0

    return v12

    .line 84
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v13

    goto :goto_0

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v12

    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_3
    if-eqz v10, :cond_1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    if-eqz v13, :cond_3

    :try_start_6
    throw v13

    .line 80
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 84
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v14

    if-nez v13, :cond_2

    move-object v13, v14

    goto :goto_4

    :cond_2
    if-eq v13, v14, :cond_1

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 87
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :cond_4
    const-string/jumbo v12, "ctl.start"

    const-string/jumbo v13, "uncrypt"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v8

    .line 91
    .local v8, "socket":Landroid/net/LocalSocket;
    if-nez v8, :cond_5

    .line 92
    const-string/jumbo v12, "RecoverySystemService"

    const-string/jumbo v13, "Failed to connect to uncrypt socket"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v12, 0x0

    return v12

    .line 97
    :cond_5
    const/4 v1, 0x0

    .line 98
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 100
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 101
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_8
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/high16 v7, -0x80000000

    .line 104
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v7, "lastStatus":I
    :cond_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 106
    .local v9, "status":I
    if-ne v9, v7, :cond_7

    const/high16 v12, -0x80000000

    if-ne v7, v12, :cond_6

    .line 109
    :cond_7
    move v7, v9

    .line 111
    if-ltz v9, :cond_9

    const/16 v12, 0x64

    if-gt v9, v12, :cond_9

    .line 113
    const-string/jumbo v12, "RecoverySystemService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uncrypt read status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 114
    if-eqz p2, :cond_8

    .line 116
    :try_start_a
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 121
    :cond_8
    :goto_5
    const/16 v12, 0x64

    if-ne v9, v12, :cond_6

    .line 122
    :try_start_b
    const-string/jumbo v12, "RecoverySystemService"

    const-string/jumbo v13, "uncrypt successfully finished."

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 143
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    const/4 v12, 0x1

    return v12

    .line 117
    :catch_5
    move-exception v6

    .line 118
    .local v6, "ignored":Landroid/os/RemoteException;
    :try_start_c
    const-string/jumbo v12, "RecoverySystemService"

    const-string/jumbo v13, "RemoteException when posting progress"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    .line 139
    .end local v6    # "ignored":Landroid/os/RemoteException;
    .end local v9    # "status":I
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 140
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "lastStatus":I
    :goto_6
    :try_start_d
    const-string/jumbo v12, "RecoverySystemService"

    const-string/jumbo v13, "IOException when reading status: "

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 141
    const/4 v12, 0x0

    .line 143
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    return v12

    .line 131
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "lastStatus":I
    .restart local v9    # "status":I
    :cond_9
    :try_start_e
    const-string/jumbo v12, "RecoverySystemService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uncrypt failed with status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 136
    const/4 v12, 0x0

    .line 143
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    return v12

    .line 142
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "lastStatus":I
    .end local v9    # "status":I
    :catchall_1
    move-exception v12

    .line 143
    :goto_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 142
    throw v12

    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "lastStatus":I
    :catchall_3
    move-exception v12

    move-object v3, v4

    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .line 139
    .end local v7    # "lastStatus":I
    .local v1, "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_6

    .line 84
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_4
    move-exception v12

    goto/16 :goto_3

    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_5
    move-exception v12

    move-object v10, v11

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .local v10, "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_9
    move-exception v12

    move-object v10, v11

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method
