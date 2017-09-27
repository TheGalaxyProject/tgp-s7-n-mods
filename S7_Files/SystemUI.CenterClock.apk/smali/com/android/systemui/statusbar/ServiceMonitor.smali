.class public Lcom/android/systemui/statusbar/ServiceMonitor;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ServiceMonitor$1;,
        Lcom/android/systemui/statusbar/ServiceMonitor$2;,
        Lcom/android/systemui/statusbar/ServiceMonitor$3;,
        Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;,
        Lcom/android/systemui/statusbar/ServiceMonitor$SC;
    }
.end annotation


# instance fields
.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDebug:Z

.field private final mHandler:Landroid/os/Handler;

.field private mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

.field private mServiceName:Landroid/content/ComponentName;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ServiceMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponentNameFromSetting()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->checkBound()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->continueStartService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor;->packageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor;->serviceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->stopService()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V
    .locals 2
    .param p1, "ownerTag"    # Ljava/lang/String;
    .param p2, "debug"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "settingKey"    # Ljava/lang/String;
    .param p5, "callbacks"    # Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ServiceMonitor$1;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ServiceMonitor$2;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ServiceMonitor$3;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ServiceMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    .line 164
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    .line 165
    iput-object p3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    .line 166
    iput-object p4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    .line 162
    return-void
.end method

.method private static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 274
    if-nez p0, :cond_0

    return-object v4

    .line 275
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x7b

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 279
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, [Ljava/lang/String;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 280
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private checkBound()V
    .locals 3

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkBound mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v0, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    .line 261
    :cond_1
    return-void
.end method

.method private continueStartService()V
    .locals 5

    .prologue
    .line 238
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "continueStartService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/ServiceMonitor$SC;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;Lcom/android/systemui/statusbar/ServiceMonitor$SC;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 243
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onNoService()V

    .line 237
    :cond_2
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error binding to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getComponentNameFromSetting()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    const/4 v4, -0x2

    .line 188
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "cn":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private packageIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    .line 196
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageIntent intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    const-string/jumbo v4, " extras="

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/ServiceMonitor;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 201
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 200
    if-eqz v2, :cond_1

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->isPackageAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v5, :cond_5

    const/4 v1, 0x1

    .line 208
    .local v1, "serviceEnabled":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_7

    .line 211
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    goto :goto_0

    .line 206
    .end local v1    # "serviceEnabled":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "serviceEnabled":Z
    goto :goto_1

    .line 203
    .end local v1    # "serviceEnabled":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "serviceEnabled":Z
    goto :goto_1

    .line 209
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->stopService()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->scheduleCheckBound()V

    goto :goto_0
.end method

.method private scheduleCheckBound()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    return-void
.end method

.method private serviceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceDisconnected serviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string/jumbo v2, " mServiceName="

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->scheduleCheckBound()V

    .line 252
    :cond_1
    return-void
.end method

.method private startService()V
    .locals 5

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponentNameFromSetting()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    .line 227
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService mServiceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onNoService()V

    .line 225
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onServiceStartAttempt()J

    move-result-wide v0

    .line 233
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 218
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "stopService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 220
    .local v0, "stopped":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 217
    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponentNameFromSetting()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isPackageAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 297
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    return v4

    .line 299
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Error checking package availability"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    return v4
.end method

.method public setComponent(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 290
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    const/4 v3, -0x2

    .line 291
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 289
    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .local v0, "setting":Ljava/lang/String;
    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 173
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method
