.class Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$SdpMonitor;->registerCallback()V

    .line 1835
    return-void
.end method

.method private registerCallback()V
    .locals 0

    .prologue
    .line 1839
    return-void
.end method


# virtual methods
.method public isKnoxWorkspace(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1863
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    return v0
.end method

.method public isSdpSupported()Z
    .locals 3

    .prologue
    .line 1855
    const/4 v0, 0x1

    .line 1857
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 1858
    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "SDP :: Not supported device..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_0
    return v0
.end method
