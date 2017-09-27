.class public abstract Lcom/samsung/accessory/manager/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;,
        Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    }
.end annotation


# static fields
.field public static BT_MAX_CONNECTION:I = 0x0

.field public static NFC_MAX_CONNECTION:I = 0x0

.field public static final NOT_SUPPORT:[B

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_OFF:I = 0x2

.field public static final STATE_ON:I = 0x1

.field public static final STATE_TURNING_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_BT:I = 0x2

.field public static final TYPE_NFC:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USB:I = 0x3


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEnabledInternal:Z

.field protected mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    .line 22
    const/16 v0, 0x8

    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    .line 13
    return-void

    .line 24
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    .line 72
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public static getMaxConnection(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 54
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 56
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    return v0

    .line 58
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enable()Z
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isEnabled()Z
.end method

.method public isEnabledInternally()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return v0
.end method

.method public abstract sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendStopAuth()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 39
    return-void
.end method
