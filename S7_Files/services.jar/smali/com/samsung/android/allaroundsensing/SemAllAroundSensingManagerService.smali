.class public Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;
.super Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;
.source "SemAllAroundSensingManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAllAroundSensingManagerService"


# instance fields
.field private final DEBUG:Z

.field private mBVenable:Z

.field private mBrightnessValue:F

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPlatformBrightnessValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;-><init>()V

    .line 38
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->DEBUG:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBVenable:Z

    return v0
.end method

.method public getPlatformBrightnessValue()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBrightnessValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setBrightnessValueEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBVenable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mPlatformBrightnessValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
