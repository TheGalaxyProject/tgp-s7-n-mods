.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;
.super Landroid/os/Handler;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .line 239
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 244
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 247
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed. error code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-set0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;[B)[B

    .line 250
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 251
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "byte buffer is empty. failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;

    .line 254
    .local v1, "listener":Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 243
    :cond_3
    :goto_0
    return-void

    .line 256
    :pswitch_0
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BLOB_GET_DONE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->parseOperationName([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-set2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_1
    if-eqz v1, :cond_3

    .line 264
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->-get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onGetBlobFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_4
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Blob policy file data not received : Failed!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    :pswitch_1
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "BLOB_SET_DONE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v1, :cond_3

    .line 270
    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-interface {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onSetBlobFinished(Z)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
