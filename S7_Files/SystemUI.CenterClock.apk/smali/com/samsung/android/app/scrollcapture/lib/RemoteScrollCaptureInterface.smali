.class public Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SC_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-object v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 243
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const-string/jumbo v5, "com.samsung.android.app.scrollcapture"

    const/4 v6, 0x0

    .line 248
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 249
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    move v3, v4

    .line 250
    .local v3, "ret":Z
    :goto_0
    sget-object v6, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isPackageAvailable : "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string/jumbo v5, "not available"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v3

    .line 244
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "ret":Z
    :cond_0
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isPackageAvailable : Failed to get package manager!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v4

    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x1

    .line 249
    goto :goto_0

    .restart local v3    # "ret":Z
    :cond_2
    const-string/jumbo v5, "available"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ret":Z
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isPackageAvailable : not available. e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v4
.end method

.method private release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 260
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 261
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 262
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .line 263
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "connect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "connStartTime":J
    iget-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-nez v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-nez v4, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .line 56
    new-instance v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;-><init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V

    iput-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 75
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.app.scrollcapture"

    const-string/jumbo v5, "com.samsung.android.app.scrollcapture.core.ScrollCaptureRemoteService"

    .line 76
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v2, v5, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 78
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 86
    :goto_0
    return v3

    .line 44
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "result":Z
    :cond_0
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "connect : Already connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v7

    .line 49
    :cond_1
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "connect : Connection already requested"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v6

    .line 79
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "result":Z
    :cond_2
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "connect : bindService failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    if-nez v4, :cond_3

    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    invoke-interface {v4, v6}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 90
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 99
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disconnect : No service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    .line 102
    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "transactionId"    # J
    .param p3, "savedScreenshotFilePathName"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 225
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyGlobalScreenshotFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 227
    :cond_0
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyGlobalScreenshotFinished : No service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v4

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyGlobalScreenshotFinished : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    return v4
.end method

.method public notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "transactionId"    # J
    .param p3, "screenshotFilePathNameToSave"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 209
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyGlobalScreenshotStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 211
    :cond_0
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyGlobalScreenshotStarted : No service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v4

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyGlobalScreenshotStarted : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    return v4
.end method
