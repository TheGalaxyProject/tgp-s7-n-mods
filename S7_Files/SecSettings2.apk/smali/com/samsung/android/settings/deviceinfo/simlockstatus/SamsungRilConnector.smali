.class public Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# instance fields
.field private mBytesBuffer:[B

.field private mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mIsConnected:Z

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

.field private mOperationName:Ljava/lang/String;

.field private mRilServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mServiceReplyMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    .line 70
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    .line 134
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "new()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RilHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    .line 138
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    .line 133
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .line 95
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setContext(Landroid/content/Context;)V

    .line 96
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    return-object v0
.end method

.method public static getSimLockStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeRilService([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 213
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "invoke ril service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 216
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 217
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_0

    .line 218
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "RIL service is not connected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 223
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "message sent to ril service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseOperationName([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytesBuffer"    # [B

    .prologue
    const/4 v9, 0x1

    .line 283
    const/16 v7, 0x33

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 284
    .local v1, "offset_a":I
    add-int/lit8 v7, v1, 0x4b

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v2, v7, 0xff

    .line 286
    .local v2, "offset_b":I
    add-int/lit8 v7, v1, 0x4c

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/lit8 v3, v7, 0x0

    .line 287
    .local v3, "op_length":I
    add-int/lit8 v7, v1, 0x4c

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    .line 288
    new-array v4, v3, [B

    .line 289
    .local v4, "op_name_temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 290
    add-int/lit8 v7, v1, 0x4e

    add-int/2addr v7, v2

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    aput-byte v7, v4, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v8, "OP_NAME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v9

    .line 293
    .local v5, "op_name_temp1":Ljava/lang/String;
    const-string/jumbo v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v9

    .line 294
    .local v6, "op_name_temp2":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v7
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .prologue
    .line 108
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "connect() => connect to the RIL service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "already connected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 116
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null. ignore"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 123
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnect() => mIsConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    .line 122
    return-void
.end method

.method public getBlob()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getBlob()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v4, :cond_0

    .line 144
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "not connected to RIL yet"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v1, "dataOutStream":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 151
    .local v3, "fileSize":I
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 152
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 155
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 157
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 156
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 141
    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 159
    return-void

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 161
    new-array v5, v9, [Ljava/io/Closeable;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 160
    throw v4
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method public setBlob([B)V
    .locals 10
    .param p1, "blob"    # [B

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setBlob()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v4, :cond_0

    .line 168
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "not connected to RIL yet"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-gtz v4, :cond_2

    .line 172
    :cond_1
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ignore invalid blob"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 175
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v1, "dataOutStream":Ljava/io/DataOutputStream;
    array-length v4, p1

    add-int/lit8 v3, v4, 0x7

    .line 179
    .local v3, "messageLength":I
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 180
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 182
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 186
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 185
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 165
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 190
    new-array v5, v9, [Ljava/io/Closeable;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 189
    throw v4
.end method

.method public setOnRilJobListener(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method
