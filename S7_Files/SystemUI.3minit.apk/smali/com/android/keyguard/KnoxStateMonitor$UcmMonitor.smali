.class Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UcmMonitor"
.end annotation


# instance fields
.field private mUCMVendor:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    .line 1876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    .line 1879
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->registerCallback()V

    .line 1878
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 1883
    const-string/jumbo v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    .line 1884
    .local v1, "ucmBinder":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v1, :cond_0

    .line 1885
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to get UCM System service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return-void

    .line 1889
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_0
    return-void

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to be registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getUCMVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-object v0
.end method

.method public isUCMKeyguardEnabled()Z
    .locals 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    const/4 v0, 0x1

    return v0

    .line 1899
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUCMKeyguardVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    .line 1906
    return-void
.end method
