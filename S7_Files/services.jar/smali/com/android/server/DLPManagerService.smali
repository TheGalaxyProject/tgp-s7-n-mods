.class public Lcom/android/server/DLPManagerService;
.super Landroid/content/IDLPManager$Stub;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DLPManagerService$DLPHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DLPManagerService"


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/DLPManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/DLPManagerService;Ljava/lang/String;)I
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    const-string/jumbo v1, "dlp_sdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 51
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 52
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "DLPManagerService"

    const-string/jumbo v2, "UnsatisfiedLinkError occurs while loading library:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/content/IDLPManager$Stub;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    .line 42
    iput-object v2, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 44
    iput-object v2, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    .line 59
    iget-object v2, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 60
    iput-object p1, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "dlp":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    const-string/jumbo v2, "enterprise_dlp_service"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 70
    const-string/jumbo v2, "DLPManagerService"

    const-string/jumbo v3, "Instantiating and register DLPManagerPolicyService to EnterpriseDeviceManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "dlp":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    :goto_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "DLPManagerService"

    .line 76
    const/16 v4, 0xa

    .line 75
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v2, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v2, Lcom/android/server/DLPManagerService$DLPHandler;

    iget-object v3, p0, Lcom/android/server/DLPManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/DLPManagerService$DLPHandler;-><init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    .line 57
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DLPManagerService"

    const-string/jumbo v3, "Exception occurs while register DLPManagerPolicyService:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static native Native_Dlp_LockDLP(I)I
.end method

.method public static native Native_Dlp_SetDLPExpiry(II)I
.end method

.method public static native Native_Dlp_SetDLPExtension(ILjava/lang/String;)I
.end method

.method public static native Native_Dlp_UnlockDLP(I)I
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 83
    const-string/jumbo v1, "DLPManagerService"

    .line 84
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "] trying to access methodName ["

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "] in ["

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "] service"

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 90
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return v5
.end method

.method private checkisSystemCaller()Z
    .locals 7

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 170
    .local v1, "callingUid":I
    const-string/jumbo v4, "DLPManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DLP : checkisSystemCaller : calling uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->getCallerPackage()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 173
    :goto_0
    if-eqz v0, :cond_0

    .line 174
    if-eqz v2, :cond_0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    .line 175
    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 177
    const/4 v3, 0x1

    .line 180
    :cond_0
    return v3

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/android/server/DLPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0
.end method

.method private getCallerPackage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 186
    .local v0, "callerPid":I
    const/4 v2, 0x0

    .line 189
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caller Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v2

    .line 190
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportedDevice()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public lockDLP(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "res":Z
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DLP : To handle DLP_lockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "DLP : DLP_lockDLP : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v6

    .line 291
    :cond_0
    invoke-static {p1}, Lcom/android/server/DLPManagerService;->Native_Dlp_LockDLP(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 292
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error to handle DLP_lockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return v1

    .line 294
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "UnsatisfiedLinkError occurs while lockDLP:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 296
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error- Exception in Lock DLP"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDLPExpiry(II)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "expiry"    # I

    .prologue
    const/4 v6, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "res":Z
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DLP : To handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "DLP : DLP_SetDLPExpiry : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v6

    .line 213
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/DLPManagerService;->Native_Dlp_SetDLPExpiry(II)I

    move-result v3

    if-nez v3, :cond_1

    .line 214
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error to handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return v1

    .line 216
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "UnsatisfiedLinkError occurs while setDLPExpiry:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error- Exception in setting expiry time"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDLPExtensions(ILjava/lang/String;)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "extensions"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "res":Z
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DLP : To handle setDLPExtensions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "DLP : setDLPExtensions : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v6

    .line 234
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/DLPManagerService;->Native_Dlp_SetDLPExtension(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 235
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error to handle setDLPExtensions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return v1

    .line 237
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "UnsatisfiedLinkError occurs while setDLPExtensions:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error- Exception in setDLPExtensions:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "DLPManagerService"

    const-string/jumbo v2, "systemReady DLP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_0
    const-string/jumbo v1, "DLPManagerService"

    const-string/jumbo v2, "DLPManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v1, "systemReady"

    invoke-direct {p0, v1}, Lcom/android/server/DLPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 102
    const-string/jumbo v1, "DLPManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/DLPManagerService$DLPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DLPManagerService;->mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DLPManagerService$DLPHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    const-string/jumbo v1, "DLPManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public unlockDLP(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "res":Z
    const-string/jumbo v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DLP : To handle DLP_unlockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DLPManagerService;->checkisSystemCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "DLP : DLP_unlockDLP : ERROR: Caller is not system_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v6

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/android/server/DLPManagerService;->Native_Dlp_UnlockDLP(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 263
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error to handle SDP_unlockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return v1

    .line 265
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "UnsatisfiedLinkError occurs while unlockDLP:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 267
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DLPManagerService"

    const-string/jumbo v4, "Error- Exception in Unlock DLP"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
