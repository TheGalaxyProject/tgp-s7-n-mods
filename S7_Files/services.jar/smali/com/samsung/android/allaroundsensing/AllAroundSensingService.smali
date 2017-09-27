.class public Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
.super Ljava/lang/Object;
.source "AllAroundSensingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;,
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;,
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final AAS_ON:Ljava/lang/String; = "sys.aasservice.aason"

.field private static final TAG:Ljava/lang/String; = "AllAroundSensingService"


# instance fields
.field private final BV_READ_START_MILLIS:J

.field private final CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private final LIGHT_SENSOR_IN_COUNT:I

.field private final LIGHT_SENSOR_OUT_COUNT:I

.field private final MSG_CHECK_AAS_SERVICE:I

.field private MSG_CHECK_AAS_SERVICE_MILLIS:J

.field private final MSG_ENABLE_SENSOR_VALUE:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_AAS_OFF:I

.field private final MSG_SET_AAS_ON:I

.field private final RECHECK_DEBOUNCE_MILLIS:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDoNotReleaseBrightnessLimit:Z

.field private mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighHysteresis:I

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mLimit255:Z

.field private mLowHysteresis:I

.field private mPowerManager:Landroid/os/PowerManager;

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSensorCount:I

.field private mUseAllAroundSensingConfig:Z

.field private preBrightnessValue:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOff()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOn()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkCameraAndBrightnessState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->enableBrightnessValueEnable()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    .line 70
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_FOREGROUND_APP:I

    .line 71
    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 72
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE:I

    .line 73
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_ON:I

    .line 74
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_OFF:I

    .line 75
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_ENABLE_SENSOR_VALUE:I

    .line 77
    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_IN_COUNT:I

    .line 78
    const/16 v3, 0xf

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_OUT_COUNT:I

    .line 80
    const-wide/16 v4, 0xc8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    .line 82
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->BV_READ_START_MILLIS:J

    .line 83
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->RECHECK_DEBOUNCE_MILLIS:J

    .line 84
    const-wide/16 v4, 0xfa

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 86
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.android.app.camera.Camera"

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 87
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.android.gallery3d.app.GalleryActivity"

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 90
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    .line 92
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    .line 101
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 103
    const/16 v3, 0x64

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    .line 104
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLowHysteresis:I

    .line 106
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 162
    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    .line 112
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "AllAroundSensingServiceThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 113
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-object v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    .line 115
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    .line 116
    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    .line 125
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    if-eqz v3, :cond_0

    .line 127
    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 132
    .local v2, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 135
    const-string/jumbo v3, "AllAroundSensingService"

    const-string/jumbo v4, "failed to registerProcessObserver"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateBVtoLux(F)F
    .locals 4
    .param p1, "bv"    # F

    .prologue
    .line 391
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x403712d81adea897L    # 23.07361

    mul-double/2addr v0, v2

    const-wide v2, 0x406a0417c1bda512L    # 208.1279

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private cameraStateOff()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    .line 317
    return-void
.end method

.method private cameraStateOn()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    .line 313
    return-void
.end method

.method private changeDisplayBrightness(FFF)V
    .locals 4
    .param p1, "mBrightnessValue"    # F
    .param p2, "bv"    # F
    .param p3, "mPow2bv"    # F

    .prologue
    const/16 v3, 0xff

    .line 419
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "AAS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    .line 420
    .local v0, "mAAS":Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
    iget-boolean v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v1, :cond_0

    .line 421
    iget v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 423
    invoke-virtual {v0, v3}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->setPlatformBrightnessValue(I)V

    .line 424
    const-string/jumbo v1, "AllAroundSensingService"

    const-string/jumbo v2, "setPlatformBrightnessValue 255"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 418
    :cond_0
    return-void
.end method

.method private checkCameraAndBrightnessState()V
    .locals 11

    .prologue
    const/4 v8, 0x5

    const/4 v10, 0x2

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 324
    .local v4, "time":J
    const/4 v3, 0x0

    .line 325
    .local v3, "mCameraStateEnable":Z
    const/4 v2, 0x0

    .line 326
    .local v2, "mAutoBrightnessEnable":I
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "AAS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    .line 328
    .local v1, "mAAS":Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v1}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->getBrightnessValueEnable()Z

    move-result v3

    .line 332
    .end local v3    # "mCameraStateEnable":Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 337
    :goto_0
    if-eqz v3, :cond_1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 340
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 321
    :goto_1
    return-void

    .line 343
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v10}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 344
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v8, 0x7d0

    add-long/2addr v8, v4

    invoke-virtual {v6, v10, v8, v9}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    .line 347
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private checkForAAS(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x2

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 355
    .local v0, "time":J
    if-eqz p1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 351
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    .line 361
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method

.method private enableBrightnessValueEnable()V
    .locals 7

    .prologue
    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 367
    .local v4, "time":J
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AAS"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    .line 369
    .local v2, "mAAS":Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
    const/4 v0, 0x0

    .line 370
    .local v0, "bv":F
    const/4 v1, 0x0

    .line 372
    .local v1, "bvlux":F
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->handleLightSensorEvent()V

    .line 374
    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->getBrightnessValue()F

    move-result v0

    .line 377
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->calculateBVtoLux(F)F

    move-result v1

    .line 378
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->sendLuxAndBrightnessValue(FF)V

    .line 365
    return-void
.end method

.method private handleLightSensorEvent()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 384
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 386
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 381
    :cond_0
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "isCamera":Z
    const/4 v2, 0x0

    .line 238
    .local v2, "isGallery":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    const/4 v1, 0x1

    .line 244
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    const/4 v2, 0x1

    .line 251
    :cond_1
    if-eqz v1, :cond_4

    .line 252
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 253
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 254
    iput-boolean v5, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    .line 233
    :goto_2
    return-void

    .line 238
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_4
    if-eqz v2, :cond_5

    .line 257
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 258
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    goto :goto_2

    .line 261
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 262
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 263
    iput-boolean v5, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    goto :goto_2
.end method

.method private releaseAutoBrightnessLimit()V
    .locals 5

    .prologue
    .line 431
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AAS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    .line 432
    .local v1, "mAAS":Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Camera_ConfigPlatformBrightness"

    const/16 v4, 0x78

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, "defBrightness":I
    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {v1, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->setPlatformBrightnessValue(I)V

    .line 435
    const-string/jumbo v2, "AllAroundSensingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPlatformBrightnessValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 430
    return-void
.end method

.method private sendLuxAndBrightnessValue(FF)V
    .locals 8
    .param p1, "bvlux"    # F
    .param p2, "bv"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 399
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 400
    .local v1, "mPow2bv":F
    move v0, p1

    .line 402
    .local v0, "mBrightnessValue":F
    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    .line 403
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ge v2, v7, :cond_2

    .line 404
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 405
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 415
    :cond_0
    :goto_0
    const-string/jumbo v2, "AllAroundSensingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "     Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      mPow2bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      BV -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 407
    :cond_1
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 408
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->preBrightnessValue:F

    goto :goto_0

    .line 410
    :cond_2
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ne v2, v7, :cond_0

    .line 411
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->changeDisplayBrightness(FFF)V

    .line 412
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method
