.class public final Lcom/android/server/SatsService;
.super Lcom/samsung/android/service/sats/ISatsService$Stub;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SatsService$1;,
        Lcom/android/server/SatsService$AtCmdHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final SATS_EXCEPTION_ERROR:I = -0x7

.field public static final SATS_FLAG_NOT_EXISTS:I = -0x2

.field public static final SATS_NO_ERROR:I = 0x0

.field public static final SATS_RETURN_INVALID_ARGUMENTS:I = -0x5

.field public static final SATS_RETURN_NATIVE_ERROR:I = -0x1

.field public static final SATS_RETURN_PERMISSION_DENIED:I = -0x4

.field public static final SATS_SERVICE_NOT_AVAILABLE:I = -0x6

.field public static final SATS_SERVICE_NOT_SUPPORTED:I = 0x0

.field public static final SATS_SERVICE_SUPPORTED:I = 0x1

.field public static final SATS_STRING_NOT_EXISTS:I = -0x3

.field private static final TAG:Ljava/lang/String; = "SatsService"

.field private static mContext:Landroid/content/Context;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private serviceInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/IWorkOnAt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SatsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/SatsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/service/sats/ISatsService$Stub;-><init>()V

    .line 64
    iput-boolean v4, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/server/SatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SatsService$1;-><init>(Lcom/android/server/SatsService;)V

    iput-object v0, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 71
    sput-object p1, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    .line 72
    iput v3, p0, Lcom/android/server/SatsService;->mErrorCode:I

    .line 74
    iget-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/ReactiveATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/ReactiveATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string/jumbo v1, "AT+REACTIVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/HdcptestATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/HdcptestATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string/jumbo v1, "AT+HDCPTEST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/DevRootKeyATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string/jumbo v1, "AT+DEVROOTK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/UserDeviceATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/UserDeviceATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string/jumbo v1, "AT+URDEVICE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string/jumbo v2, "SATServiceAt"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string/jumbo v2, "SATServiceData"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    .line 92
    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    iget-object v0, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 70
    return-void
.end method
